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
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A163000: Count of integers x in [0,n] satisfying A000120(x) + A000120(n-x) = A000120(n) + 1.

The programs for A163000, the canonical program `A163000.P3772778499121085452` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163000 has offset 0).

The definition of A163000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163000.P12865109345844307615

`A382723(n)-A001316(n)`
-/

namespace A163000.P12865109345844307615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n - A001316 n

end

end A163000.P12865109345844307615

namespace A163000

/-- `A382723(n)-A001316(n)` -/
def P12865109345844307615.Spec : Prop :=
  ∀ n, P12865109345844307615.a n = A163000 n

end A163000

/-! ## A163000.P12277005147463920304

`A033264(n)*2^(A000120(n)-1)`
-/

namespace A163000.P12277005147463920304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033264 n : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A163000.P12277005147463920304

namespace A163000

/-- `A033264(n)*2^(A000120(n)-1)` -/
def P12277005147463920304.Spec : Prop :=
  ∀ n, P12277005147463920304.a n = (A163000 n : ℚ)

end A163000

/-! ## A163000.P3772778499121085452

`A004526(A001316(n)*A087116(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163000

/-- `A004526(A001316(n)*A087116(n))` -/
def P3772778499121085452.Spec : Prop :=
  ∀ n, P3772778499121085452.a n = A163000 n

theorem P3772778499121085452.correct : P3772778499121085452.Spec := by
  intro n
  simp only [A163000]

end A163000

/-! ## A163000.P564070773295597209

`A025480(A001316(n)*A087116(n))`
-/

namespace A163000.P564070773295597209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A001316 n * A087116 n).toNat

end

end A163000.P564070773295597209

namespace A163000

/-- `A025480(A001316(n)*A087116(n))` -/
def P564070773295597209.Spec : Prop :=
  ∀ n, P564070773295597209.a n = A163000 n

end A163000

/-! ## A163000.P6182804936837065231

`A087116(n)*A110654(A038573(n))`
-/

namespace A163000.P6182804936837065231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n * A110654 (A038573 n).toNat

end

end A163000.P6182804936837065231

namespace A163000

/-- `A087116(n)*A110654(A038573(n))` -/
def P6182804936837065231.Spec : Prop :=
  ∀ n, P6182804936837065231.a n = A163000 n

end A163000

/-! ## A163000.P14095550277773379931

`A048967(n)-A249732(n)`
-/

namespace A163000.P14095550277773379931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n - A249732 n

end

end A163000.P14095550277773379931

namespace A163000

/-- `A048967(n)-A249732(n)` -/
def P14095550277773379931.Spec : Prop :=
  ∀ n, P14095550277773379931.a n = A163000 n

end A163000

/-! ## A163000.P9941112022964670016

`A033264(2*n+1)/2*A001316(n)`
-/

namespace A163000.P9941112022964670016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033264 (2 * n + 1) : ℚ) / 2 * (A001316 n : ℚ)

end

end A163000.P9941112022964670016

namespace A163000

/-- `A033264(2*n+1)/2*A001316(n)` -/
def P9941112022964670016.Spec : Prop :=
  ∀ n, P9941112022964670016.a n = (A163000 n : ℚ)

end A163000

/-! ## A163000.P13751262646552659956

`A087116(2*n+1)/2*A001316(n)`
-/

namespace A163000.P13751262646552659956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087116 (2 * n + 1) : ℚ) / 2 * (A001316 n : ℚ)

end

end A163000.P13751262646552659956

namespace A163000

/-- `A087116(2*n+1)/2*A001316(n)` -/
def P13751262646552659956.Spec : Prop :=
  ∀ n, P13751262646552659956.a n = (A163000 n : ℚ)

end A163000

/-! ## A163000.P6536771050887647558

`A000010(A001316(n))*A037800(2*n+1)`
-/

namespace A163000.P6536771050887647558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001316 n).toNat * A037800 (2 * n + 1)

end

end A163000.P6536771050887647558

namespace A163000

/-- `A000010(A001316(n))*A037800(2*n+1)` -/
def P6536771050887647558.Spec : Prop :=
  ∀ n, P6536771050887647558.a n = A163000 n

end A163000

/-!
# A163002: Number of n X n binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163002, there is no canonical definition to state claims against.
-/

/-! ## A163002.P5897471984737708210

`A359573((n+1)²+n²)`
-/

namespace A163002.P5897471984737708210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 ((n + 1) ^ 2 + n ^ 2)

end

end A163002.P5897471984737708210

/-! ## A163002.P4009149371471988404

`or(1, A359573(A001844(n)))`
-/

namespace A163002.P4009149371471988404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A359573 (A001844 n).toNat)

end

end A163002.P4009149371471988404

/-! ## A163002.P10947889550252478600

`record[A359573(Δ[A235355(n)])]`
-/

namespace A163002.P10947889550252478600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163002.P10947889550252478600

/-! ## A163002.P4419090970194728064

`record[A359573(A330613(n+1))]`
-/

namespace A163002.P4419090970194728064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163002.P4419090970194728064

/-! ## A163002.P14664255519534947092

`record[gcd(A003987(n), A359573(n+1))]`
-/

namespace A163002.P14664255519534947092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A359573 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163002.P14664255519534947092

/-!
# A163003: Number of n X 3 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163003, there is no canonical definition to state claims against.
-/

/-! ## A163003.P14128731156544248595

`A359573(∑[a(n-1)+1])` with `a(0)=6, a(1)=3`
-/

namespace A163003.P14128731156544248595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163003.P14128731156544248595

/-! ## A163003.P461429432288330667

`A359573(A141214(n)+1)`
-/

namespace A163003.P461429432288330667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A141214 n + 1).toNat

end

end A163003.P461429432288330667

/-! ## A163003.P4115434935589437020

`A359573(A167614(n+1))`
-/

namespace A163003.P4115434935589437020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A167614 (n + 1)).toNat

end

end A163003.P4115434935589437020

/-! ## A163003.P437371656066982690

`A359573(A373663(n+1))`
-/

namespace A163003.P437371656066982690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A373663 (n + 1)).toNat

end

end A163003.P437371656066982690

/-! ## A163003.P5998599873235252451

`A359573(A034856(n+2))`
-/

namespace A163003.P5998599873235252451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A034856 (n + 2)).toNat

end

end A163003.P5998599873235252451

/-!
# A163004: Number of n X 4 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163004, there is no canonical definition to state claims against.
-/

/-! ## A163004.P2101407585964506533

`A359573(A141214(n+1))`
-/

namespace A163004.P2101407585964506533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A141214 (n + 1)).toNat

end

end A163004.P2101407585964506533

/-! ## A163004.P3547307561986684832

`A359573(A374004(n+1))`
-/

namespace A163004.P3547307561986684832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374004 (n + 1)).toNat

end

end A163004.P3547307561986684832

/-! ## A163004.P7249709667980536339

`A359573(A052905(n)+9)`
-/

namespace A163004.P7249709667980536339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A052905 n + 9).toNat

end

end A163004.P7249709667980536339

/-! ## A163004.P7464899495002095565

`A359573(A167614(n+2)+1)`
-/

namespace A163004.P7464899495002095565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A167614 (n + 2) + 1).toNat

end

end A163004.P7464899495002095565

/-! ## A163004.P18309790454689444378

`A359573(A166136(n+2)-2)`
-/

namespace A163004.P18309790454689444378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A166136 (n + 2) - 2).toNat

end

end A163004.P18309790454689444378

/-!
# A163005: Number of n X 5 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163005, there is no canonical definition to state claims against.
-/

/-! ## A163005.P9185174410009113974

`A359573(A374005(n+1))`
-/

namespace A163005.P9185174410009113974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374005 (n + 1)).toNat

end

end A163005.P9185174410009113974

/-! ## A163005.P11018875200079359332

`A359573(eq[8, A166065(n)])`
-/

namespace A163005.P11018875200079359332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163005.P11018875200079359332

/-! ## A163005.P8447426153697289080

`A359573(A052905(n+2)+1)`
-/

namespace A163005.P8447426153697289080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A052905 (n + 2) + 1).toNat

end

end A163005.P8447426153697289080

/-! ## A163005.P16266343408534241409

`A359573(A167614(n+3)+2)`
-/

namespace A163005.P16266343408534241409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A167614 (n + 3) + 2).toNat

end

end A163005.P16266343408534241409

/-! ## A163005.P1204053923952237401

`A359573(A034856(n+4)-2)`
-/

namespace A163005.P1204053923952237401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A034856 (n + 4) - 2).toNat

end

end A163005.P1204053923952237401

/-!
# A163006: Number of n X 6 binary arrays with all 1's connected and a path of 1's from upper left corner to lower right corner.

The programs for A163006, there is no canonical definition to state claims against.
-/

/-! ## A163006.P5259930946760683157

`A359573(A374007(n+1))`
-/

namespace A163006.P5259930946760683157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374007 (n + 1)).toNat

end

end A163006.P5259930946760683157

/-! ## A163006.P4695604331477708518

`A359573(A052905(n+3))`
-/

namespace A163006.P4695604331477708518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A052905 (n + 3)).toNat

end

end A163006.P4695604331477708518

/-! ## A163006.P12383849255025339720

`A359573(eq[5, A193592(n)])`
-/

namespace A163006.P12383849255025339720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163006.P12383849255025339720

/-! ## A163006.P5600151499432125505

`A359573(A055999(n+3)+1)`
-/

namespace A163006.P5600151499432125505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A055999 (n + 3) + 1).toNat

end

end A163006.P5600151499432125505

/-! ## A163006.P4232538931595998866

`A359573(eq[7, A131818(n+1)])`
-/

namespace A163006.P4232538931595998866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163006.P4232538931595998866

/-!
# A163007: Number of n X 7 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163007, there is no canonical definition to state claims against.
-/

/-! ## A163007.P1614948536147698316

`A359573(A374008(n+1))`
-/

namespace A163007.P1614948536147698316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374008 (n + 1)).toNat

end

end A163007.P1614948536147698316

/-! ## A163007.P8084309697162957390

`A359573(A056121(n)+22)`
-/

namespace A163007.P8084309697162957390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A056121 n + 22).toNat

end

end A163007.P8084309697162957390

/-! ## A163007.P194632597411417316

`A359573(A056119(n)+28)`
-/

namespace A163007.P194632597411417316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A056119 n + 28).toNat

end

end A163007.P194632597411417316

/-! ## A163007.P16005123560877609050

`A359573(eq[11, A066657(n)])`
-/

namespace A163007.P16005123560877609050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163007.P16005123560877609050

/-! ## A163007.P1601952772514777040

`A359573(Δ[A023551(n+2)])`
-/

namespace A163007.P1601952772514777040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (f1 (n + 1) - f1 n).toNat

end

end A163007.P1601952772514777040

/-!
# A163008: Number of n X 8 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163008, there is no canonical definition to state claims against.
-/

/-! ## A163008.P8489250405028452419

`A359573(A374009(n+1))`
-/

namespace A163008.P8489250405028452419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374009 (n + 1)).toNat

end

end A163008.P8489250405028452419

/-! ## A163008.P7419859795774150816

`A359573(eq[13, A066657(n)])`
-/

namespace A163008.P7419859795774150816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163008.P7419859795774150816

/-! ## A163008.P16564543971111273819

`A359573(A056000(n+4)+3)`
-/

namespace A163008.P16564543971111273819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A056000 (n + 4) + 3).toNat

end

end A163008.P16564543971111273819

/-! ## A163008.P9086523436959073146

`A359573(A055999(n+5)-1)`
-/

namespace A163008.P9086523436959073146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A055999 (n + 5) - 1).toNat

end

end A163008.P9086523436959073146

/-! ## A163008.P4981856622006071820

`A359573(A167499(n+6)+3)`
-/

namespace A163008.P4981856622006071820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A167499 (n + 6) + 3).toNat

end

end A163008.P4981856622006071820

/-!
# A163009: Number of n X 9 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163009, there is no canonical definition to state claims against.
-/

/-! ## A163009.P17639271312534692973

`A359573(A374010(n+1))`
-/

namespace A163009.P17639271312534692973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374010 (n + 1)).toNat

end

end A163009.P17639271312534692973

/-! ## A163009.P3931585653115504748

`A359573(A000217(n+8)+9)`
-/

namespace A163009.P3931585653115504748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A000217 (n + 8) + 9).toNat

end

end A163009.P3931585653115504748

/-! ## A163009.P834344742416576552

`A359573(eq[8, A002262(n)]+1)`
-/

namespace A163009.P834344742416576552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163009.P834344742416576552

/-! ## A163009.P1663279133416229229

`A359573(eq[10, A131818(n+1)])`
-/

namespace A163009.P1663279133416229229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163009.P1663279133416229229

/-! ## A163009.P11167670133516176006

`A359573(A000124(n+9)-(n+1))`
-/

namespace A163009.P11167670133516176006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A163009.P11167670133516176006

/-!
# A163010: Number of n X 10 binary arrays with all 1s connected and a path of 1s from upper left corner to lower right corner.

The programs for A163010, there is no canonical definition to state claims against.
-/

/-! ## A163010.P16569237781946474926

`A359573(A374011(n+1))`
-/

namespace A163010.P16569237781946474926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359573 (A374011 (n + 1)).toNat

end

end A163010.P16569237781946474926

/-!
# A163011: Number of n X n binary arrays with all 1s connected and a path of 1s from top row to lower right corner.

The programs for A163011, there is no canonical definition to state claims against.
-/

/-! ## A163011.P11290295933777264089

`A391489((n+1)²+n²)`
-/

namespace A163011.P11290295933777264089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 ((n + 1) ^ 2 + n ^ 2)

end

end A163011.P11290295933777264089

/-! ## A163011.P10846342105705734964

`A391489(A001844(n))+A228495(2*n)`
-/

namespace A163011.P10846342105705734964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A001844 n).toNat + A228495 (2 * n)

end

end A163011.P10846342105705734964

/-! ## A163011.P9979862788241405890

`A391489(A001844(n))+A128975(2*n+1)`
-/

namespace A163011.P9979862788241405890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A001844 n).toNat + A128975 (2 * n + 1)

end

end A163011.P9979862788241405890

/-!
# A163012: Number of n X 3 binary arrays with all 1s connected and a path of 1s from top row to lower right corner.

The programs for A163012, there is no canonical definition to state claims against.
-/

/-! ## A163012.P15285007578225579676

`A391489(A034856(n+2))`
-/

namespace A163012.P15285007578225579676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A034856 (n + 2)).toNat

end

end A163012.P15285007578225579676

/-! ## A163012.P9620765205915641126

`A391489(lt[A197654(n+1), n])`
-/

namespace A163012.P9620765205915641126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197654 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A163012.P9620765205915641126

/-! ## A163012.P5942351929282470048

`A391489(eq[2, A319421(n+1)])`
-/

namespace A163012.P5942351929282470048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163012.P5942351929282470048

/-!
# A163013: Number of n X 4 binary arrays with all 1s connected and a path of 1s from top row to lower right corner.

The programs for A163013, there is no canonical definition to state claims against.
-/

/-! ## A163013.P5292624917118846616

`A391489(A141214(n+1))`
-/

namespace A163013.P5292624917118846616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A141214 (n + 1)).toNat

end

end A163013.P5292624917118846616

/-!
# A163014: Number of n X 5 binary arrays with all 1s connected and a path of 1s from top row to lower right corner.

The programs for A163014, there is no canonical definition to state claims against.
-/

/-! ## A163014.P17068571340245217172

`A391489(A000217(n+4)+1+n)`
-/

namespace A163014.P17068571340245217172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A000217 (n + 4) + 1 + (n : ℤ)).toNat

end

end A163014.P17068571340245217172

/-!
# A163015: Number of n X 6 binary arrays with all 1s connected and a path of 1s from top row to lower right corner.

The programs for A163015, there is no canonical definition to state claims against.
-/

/-! ## A163015.P6705738578623032142

`A391489(A055999(n+3)+1)`
-/

namespace A163015.P6705738578623032142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A055999 (n + 3) + 1).toNat

end

end A163015.P6705738578623032142

/-! ## A163015.P16814456088350514418

`A391489(lt[A391489(n+5), A117440(n)])`
-/

namespace A163015.P16814456088350514418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163015.P16814456088350514418

/-!
# A163020: Number of nX3 binary arrays with all 1s connected and a path of 1s from left column to lower right corner.

The programs for A163020, there is no canonical definition to state claims against.
-/

/-! ## A163020.P1751204104129152994

`A391489(A167614(n+1))`
-/

namespace A163020.P1751204104129152994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A167614 (n + 1)).toNat

end

end A163020.P1751204104129152994

/-! ## A163020.P9850727735333622705

`A391489(A288937(n+5)-2)`
-/

namespace A163020.P9850727735333622705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A288937 (n + 5) - 2).toNat

end

end A163020.P9850727735333622705

/-!
# A163021: Number of n X 4 binary arrays with all 1's connected and a path of 1's from left column to lower right corner.

The programs for A163021, there is no canonical definition to state claims against.
-/

/-! ## A163021.P6936551068419588458

`∑[A163013(n+1)-A163012(n+1)]`
-/

namespace A163021.P6936551068419588458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163013 (n + 1) - A163012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163021.P6936551068419588458

/-! ## A163021.P13163442881593203709

`A391489(A000217(n+4)-n)`
-/

namespace A163021.P13163442881593203709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A163021.P13163442881593203709

/-!
# A163022: Number of n X 5 binary arrays with all 1's connected and a path of 1's from left column to lower right corner.

The programs for A163022, there is no canonical definition to state claims against.
-/

/-! ## A163022.P2869730331512413836

`A391489(A000217(n+4)+5)`
-/

namespace A163022.P2869730331512413836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391489 (A000217 (n + 4) + 5).toNat

end

end A163022.P2869730331512413836

/-! ## A163022.P9253994640732118879

`∑[A163014(n+1)-A163013(n+1)]`
-/

namespace A163022.P9253994640732118879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163014 (n + 1) - A163013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163022.P9253994640732118879

/-!
# A163023: Number of n X 6 binary arrays with all 1s connected and a path of 1s from left column to lower right corner.

The programs for A163023, there is no canonical definition to state claims against.
-/

/-! ## A163023.P6900790286569761227

`∑[A163015(n+1)-A163014(n+1)]`
-/

namespace A163023.P6900790286569761227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163015 (n + 1) - A163014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163023.P6900790286569761227

/-!
# A163024: Number of n X 7 binary arrays with all 1s connected and a path of 1s from left column to lower right corner.

The programs for A163024, there is no canonical definition to state claims against.
-/

/-! ## A163024.P16664232704341722395

`∑[A163016(n+1)-A163015(n+1)]`
-/

namespace A163024.P16664232704341722395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163016 (n + 1) - A163015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163024.P16664232704341722395

/-!
# A163025: Number of n X 8 binary arrays with all 1s connected and a path of 1s from left column to lower right corner.

The programs for A163025, there is no canonical definition to state claims against.
-/

/-! ## A163025.P17195343512310914908

`∑[A163017(n+1)-A163016(n+1)]`
-/

namespace A163025.P17195343512310914908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163017 (n + 1) - A163016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163025.P17195343512310914908

/-!
# A163026: Number of n X 9 binary arrays with all 1's connected and a path of 1's from left column to lower right corner.

The programs for A163026, there is no canonical definition to state claims against.
-/

/-! ## A163026.P16468727238309482051

`∑[A163018(n+1)-A163017(n+1)]`
-/

namespace A163026.P16468727238309482051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163018 (n + 1) - A163017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163026.P16468727238309482051

/-!
# A163027: Number of n X 10 binary arrays with all 1s connected and a path of 1s from left column to lower right corner.

The programs for A163027, there is no canonical definition to state claims against.
-/

/-! ## A163027.P2777527409316476081

`∑[A163019(n+1)-A163018(n+1)]`
-/

namespace A163027.P2777527409316476081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163019 (n + 1) - A163018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163027.P2777527409316476081

/-!
# A163028: Number of n X n binary arrays with all 1s connected and a path of 1s from the top row to the bottom row.

The programs for A163028, there is no canonical definition to state claims against.
-/

/-! ## A163028.P6884361052510141340

`A359574((n+1)²+n²)`
-/

namespace A163028.P6884361052510141340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 ((n + 1) ^ 2 + n ^ 2)

end

end A163028.P6884361052510141340

/-! ## A163028.P14944448859800277146

`A359574(A001844(n))+A185284(n)`
-/

namespace A163028.P14944448859800277146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A001844 n).toNat + A185284 n

end

end A163028.P14944448859800277146

/-! ## A163028.P14071959644539256860

`A359574(A001844(n))+A217156(n+1)`
-/

namespace A163028.P14071959644539256860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A001844 n).toNat + A217156 (n + 1)

end

end A163028.P14071959644539256860

/-! ## A163028.P666468591126946999

`A359574(A001844(n))+A000007(3*n+4)`
-/

namespace A163028.P666468591126946999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A001844 n).toNat + A000007 (3 * n + 4)

end

end A163028.P666468591126946999

/-! ## A163028.P11204807468849862517

`A359574(A266725(2*n+1))+A000007(2*n+3)`
-/

namespace A163028.P11204807468849862517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A266725 (2 * n + 1)).toNat + A000007 (2 * n + 3)

end

end A163028.P11204807468849862517

/-!
# A163029: Number of n X 3 binary arrays with all 1's connected and a path of 1's from top row to bottom row.

The programs for A163029, there is no canonical definition to state claims against.
-/

/-! ## A163029.P13588778355872120575

`A100227(n+2)+A034184(n+1)`
-/

namespace A163029.P13588778355872120575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (n + 2) + A034184 (n + 1)

end

end A163029.P13588778355872120575

/-! ## A163029.P4276854081840900700

`Δ[Δ[A059021(A057428(n)+n)]]`
-/

namespace A163029.P4276854081840900700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059021 (A057428 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163029.P4276854081840900700

/-! ## A163029.P5273812677049800231

`Δ[Δ[A059021(A140106(2*n+1))]]`
-/

namespace A163029.P5273812677049800231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059021 (A140106 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163029.P5273812677049800231

/-! ## A163029.P4584450709402894590

`Δ[Δ[A059021(A000007(n)-1+n)]]`
-/

namespace A163029.P4584450709402894590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059021 (A000007 n - 1 + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163029.P4584450709402894590

/-! ## A163029.P248556611070956646

`A359574(A141214(n)+1)`
-/

namespace A163029.P248556611070956646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 n + 1).toNat

end

end A163029.P248556611070956646

/-!
# A163030: Number of n X 4 binary arrays with all 1s connected and a path of 1s from top row to bottom row.

The programs for A163030, there is no canonical definition to state claims against.
-/

/-! ## A163030.P7655932195764119690

`A359574(A141214(n+1))`
-/

namespace A163030.P7655932195764119690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 (n + 1)).toNat

end

end A163030.P7655932195764119690

/-! ## A163030.P12118215303444013090

`A359574(eq[3, A106240(n+1)])`
-/

namespace A163030.P12118215303444013090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163030.P12118215303444013090

/-! ## A163030.P16585498868619646980

`A359574(A155212(n+1)-n)`
-/

namespace A163030.P16585498868619646980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A163030.P16585498868619646980

/-! ## A163030.P7386571081876764241

`A359574(lt[A359574(n+3), A070556(n+1)])`
-/

namespace A163030.P7386571081876764241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163030.P7386571081876764241

/-! ## A163030.P17481523604698914743

`A359574(lt[A359574(n+3), A051953(n+2)])`
-/

namespace A163030.P17481523604698914743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163030.P17481523604698914743

/-!
# A163031: Number of n X 5 binary arrays with all 1s connected and a path of 1s from top row to bottom row.

The programs for A163031, there is no canonical definition to state claims against.
-/

/-! ## A163031.P13223585466247848417

`A359574(Δ[A023545(n+1)])`
-/

namespace A163031.P13223585466247848417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (f1 (n + 1) - f1 n).toNat

end

end A163031.P13223585466247848417

/-! ## A163031.P14692281917704990346

`A359574(A000217(n+4)+n+1)`
-/

namespace A163031.P14692281917704990346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A163031.P14692281917704990346

/-! ## A163031.P5431085965567121954

`A359574(lt[A359574(n+4), A290428(n)])`
-/

namespace A163031.P5431085965567121954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163031.P5431085965567121954

/-! ## A163031.P7561653128568790933

`A359574(lt[A359574(n+4), A001222(n+1)])`
-/

namespace A163031.P7561653128568790933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163031.P7561653128568790933

/-! ## A163031.P5742699146472024382

`A359574(lt[A359574(n+4), A300238(n+1)])`
-/

namespace A163031.P5742699146472024382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163031.P5742699146472024382

/-!
# A163032: Number of n X 6 binary arrays with all 1s connected and a path of 1s from top row to bottom row.

The programs for A163032, there is no canonical definition to state claims against.
-/

/-! ## A163032.P1936830424107956442

`A359574(A055999(n+3)+1)`
-/

namespace A163032.P1936830424107956442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A055999 (n + 3) + 1).toNat

end

end A163032.P1936830424107956442

/-! ## A163032.P14579672792676783419

`A359574(A141214(n+3)-2)`
-/

namespace A163032.P14579672792676783419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 (n + 3) - 2).toNat

end

end A163032.P14579672792676783419

/-! ## A163032.P3736682650777093070

`A359574(A000124(n+6)-6)`
-/

namespace A163032.P3736682650777093070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000124 (n + 6) - 6).toNat

end

end A163032.P3736682650777093070

/-! ## A163032.P17499820813324464528

`A359574(Δ[A026054(n+3)]+1)`
-/

namespace A163032.P17499820813324464528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (f1 (n + 1) - f1 n + 1).toNat

end

end A163032.P17499820813324464528

/-! ## A163032.P17642817147801430701

`A359574(lt[A008291(n+6), A289113(n+1)])`
-/

namespace A163032.P17642817147801430701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008291 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163032.P17642817147801430701

/-!
# A163033: Number of n X 7 binary arrays with all 1s connected and a path of 1s from top row to bottom row.

The programs for A163033, there is no canonical definition to state claims against.
-/

/-! ## A163033.P9201247017576694844

`A359574(A055999(n+4))`
-/

namespace A163033.P9201247017576694844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A055999 (n + 4)).toNat

end

end A163033.P9201247017576694844

/-! ## A163033.P11142976169449653186

`A359574(eq[6, A193592(n)])`
-/

namespace A163033.P11142976169449653186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163033.P11142976169449653186

/-! ## A163033.P6662535077976059955

`A359574(Δ[A026054(n+4)])`
-/

namespace A163033.P6662535077976059955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (f1 (n + 1) - f1 n).toNat

end

end A163033.P6662535077976059955

/-! ## A163033.P10744372124151391529

`A359574(A155212(n+3)+2)`
-/

namespace A163033.P10744372124151391529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A155212 (n + 3) + 2).toNat

end

end A163033.P10744372124151391529

/-! ## A163033.P6601061730765957125

`A359574(A141214(n+4)-3)`
-/

namespace A163033.P6601061730765957125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 (n + 4) - 3).toNat

end

end A163033.P6601061730765957125

/-!
# A163034: Number of n X 8 binary arrays with all 1s connected and a path of 1s from top row to bottom row.

The programs for A163034, there is no canonical definition to state claims against.
-/

/-! ## A163034.P4222181751097243999

`A359574(eq[7, A193592(n)])`
-/

namespace A163034.P4222181751097243999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163034.P4222181751097243999

/-!
# A163036: Number of n X 10 binary arrays with all 1s connected and a path of 1s from top row to bottom row.

The programs for A163036, there is no canonical definition to state claims against.
-/

/-! ## A163036.P16662175225275807887

`A359574(eq[9, A193592(n)])`
-/

namespace A163036.P16662175225275807887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163036.P16662175225275807887

/-!
# A163037: Number of n X 2 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163037, the canonical program `A163037.P3510604340959540776` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163037 has offset 1).

The definition of A163037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163037.P13582756355400474745

`∑[∑[ogf((1+2x+x^2)/(1-3x+x^2+x^3))]]`
-/

namespace A163037.P13582756355400474745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P13582756355400474745

namespace A163037

/-- `∑[∑[ogf((1+2x+x^2)/(1-3x+x^2+x^3))]]` -/
def P13582756355400474745.Spec : Prop :=
  ∀ n, P13582756355400474745.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P3510604340959540776

`∑[∑[a(n-2)+2*(a(n-1)+2)]]` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163037

/-- `∑[∑[a(n-2)+2*(a(n-1)+2)]]` -/
def P3510604340959540776.Spec : Prop :=
  ∀ n, (P3510604340959540776.a n : ℤ) = A163037 (n + 1)

theorem P3510604340959540776.correct : P3510604340959540776.Spec := by
  intro n
  simp only [A163037, Nat.add_sub_cancel]

end A163037

/-! ## A163037.P1662018391831361652

`∑[∑[A034182(n+1)]]`
-/

namespace A163037.P1662018391831361652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P1662018391831361652

namespace A163037

/-- `∑[∑[A034182(n+1)]]` -/
def P1662018391831361652.Spec : Prop :=
  ∀ n, P1662018391831361652.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P13172857729422137415

`∑[∑[A098894(Δ[n²])]]`
-/

namespace A163037.P13172857729422137415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098894 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P13172857729422137415

namespace A163037

/-- `∑[∑[A098894(Δ[n²])]]` -/
def P13172857729422137415.Spec : Prop :=
  ∀ n, P13172857729422137415.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P17348723592402300073

`∑[∑[A078057(n+1)-2]]`
-/

namespace A163037.P17348723592402300073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P17348723592402300073

namespace A163037

/-- `∑[∑[A078057(n+1)-2]]` -/
def P17348723592402300073.Spec : Prop :=
  ∀ n, P17348723592402300073.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P15043414579505483560

`∑[∑[A001333(n+2)-2]]`
-/

namespace A163037.P15043414579505483560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P15043414579505483560

namespace A163037

/-- `∑[∑[A001333(n+2)-2]]` -/
def P15043414579505483560.Spec : Prop :=
  ∀ n, P15043414579505483560.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P9217811543553516992

`∑[∑[A213667(n+1)]-n]`
-/

namespace A163037.P9217811543553516992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P9217811543553516992

namespace A163037

/-- `∑[∑[A213667(n+1)]-n]` -/
def P9217811543553516992.Spec : Prop :=
  ∀ n, P9217811543553516992.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P9842827729812222726

`A048777(n+1)-(n+2)²`
-/

namespace A163037.P9842827729812222726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048777 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A163037.P9842827729812222726

namespace A163037

/-- `A048777(n+1)-(n+2)²` -/
def P9842827729812222726.Spec : Prop :=
  ∀ n, P9842827729812222726.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P7788631562786399611

`∑[A129589(n+2)-(n+2)]`
-/

namespace A163037.P7788631562786399611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129589 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P7788631562786399611

namespace A163037

/-- `∑[A129589(n+2)-(n+2)]` -/
def P7788631562786399611.Spec : Prop :=
  ∀ n, P7788631562786399611.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P17198038053136615745

`∑[∑[∑[A052542(n+1)]-1]]`
-/

namespace A163037.P17198038053136615745
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P17198038053136615745

namespace A163037

/-- `∑[∑[∑[A052542(n+1)]-1]]` -/
def P17198038053136615745.Spec : Prop :=
  ∀ n, P17198038053136615745.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P8579917380972648618

`∑[∑[∑[A143607(2*n+1)]]]`
-/

namespace A163037.P8579917380972648618
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P8579917380972648618

namespace A163037

/-- `∑[∑[∑[A143607(2*n+1)]]]` -/
def P8579917380972648618.Spec : Prop :=
  ∀ n, P8579917380972648618.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P5147167296203921441

`∑[∑[2*(A048739(n)-1)+1]]`
-/

namespace A163037.P5147167296203921441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048739 n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P5147167296203921441

namespace A163037

/-- `∑[∑[2*(A048739(n)-1)+1]]` -/
def P5147167296203921441.Spec : Prop :=
  ∀ n, P5147167296203921441.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P6271055010282652518

`∑[∑[A238375(2*n+1)-1]]`
-/

namespace A163037.P6271055010282652518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238375 (2 * n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P6271055010282652518

namespace A163037

/-- `∑[∑[A238375(2*n+1)-1]]` -/
def P6271055010282652518.Spec : Prop :=
  ∀ n, P6271055010282652518.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P10687201977495506253

`∑[∑[A135246(2*n+1)-2]]`
-/

namespace A163037.P10687201977495506253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (2 * n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P10687201977495506253

namespace A163037

/-- `∑[∑[A135246(2*n+1)-2]]` -/
def P10687201977495506253.Spec : Prop :=
  ∀ n, P10687201977495506253.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P16559263663091705859

`∑[∑[A189050(2*n+1)-2]]`
-/

namespace A163037.P16559263663091705859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189050 (2 * n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P16559263663091705859

namespace A163037

/-- `∑[∑[A189050(2*n+1)-2]]` -/
def P16559263663091705859.Spec : Prop :=
  ∀ n, P16559263663091705859.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P3237552260528547376

`Δ[A271389(n+1)]-(n+2)²`
-/

namespace A163037.P3237552260528547376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 2) ^ 2 : ℤ)

end

end A163037.P3237552260528547376

namespace A163037

/-- `Δ[A271389(n+1)]-(n+2)²` -/
def P3237552260528547376.Spec : Prop :=
  ∀ n, P3237552260528547376.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P14254424545243380158

`∑[record[A000129(n+1)-2*n]]`
-/

namespace A163037.P14254424545243380158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163037.P14254424545243380158

namespace A163037

/-- `∑[record[A000129(n+1)-2*n]]` -/
def P14254424545243380158.Spec : Prop :=
  ∀ n, P14254424545243380158.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P6576101327752012652

`A059020(n+1)-(n+1)*(n+2)`
-/

namespace A163037.P6576101327752012652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059020 (n + 1) - ((n + 1) * (n + 2) : ℤ)

end

end A163037.P6576101327752012652

namespace A163037

/-- `A059020(n+1)-(n+1)*(n+2)` -/
def P6576101327752012652.Spec : Prop :=
  ∀ n, P6576101327752012652.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P3078623085279721330

`A328990(n+2)-(n+2)*(n+3)`
-/

namespace A163037.P3078623085279721330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328990 (n + 2) - ((n + 2) * (n + 3) : ℤ)

end

end A163037.P3078623085279721330

namespace A163037

/-- `A328990(n+2)-(n+2)*(n+3)` -/
def P3078623085279721330.Spec : Prop :=
  ∀ n, P3078623085279721330.a n = A163037 (n + 1)

end A163037

/-! ## A163037.P6468390089756743822

`∑[A069306(n+2)-2*(n+1)]-2*(n+1)`
-/

namespace A163037.P6468390089756743822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 2) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * (n + 1) : ℤ)

end

end A163037.P6468390089756743822

namespace A163037

/-- `∑[A069306(n+2)-2*(n+1)]-2*(n+1)` -/
def P6468390089756743822.Spec : Prop :=
  ∀ n, P6468390089756743822.a n = A163037 (n + 1)

end A163037

/-!
# A163038: Number of n X 3 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163038, there is no canonical definition to state claims against.
-/

/-! ## A163038.P4513619635862294232

`∑[∑[A034184(n+1)]]`
-/

namespace A163038.P4513619635862294232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034184 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163038.P4513619635862294232

/-! ## A163038.P1507520861110147544

`A359574(∑[n+2]+4)`
-/

namespace A163038.P1507520861110147544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A163038.P1507520861110147544

/-! ## A163038.P6583544924221719387

`∑[∑[A292357(∑[n+2]+4)]]`
-/

namespace A163038.P6583544924221719387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (∑ j ∈ Finset.range (n + 1), f3 j + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163038.P6583544924221719387

/-! ## A163038.P1974158604971554651

`A359574(A167614(n+1))+A000007(2*(n+2))`
-/

namespace A163038.P1974158604971554651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A167614 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A163038.P1974158604971554651

/-! ## A163038.P8137148843997407257

`A033999(2*(n+1))*A359574(A167614(n+1))`
-/

namespace A163038.P8137148843997407257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A359574 (A167614 (n + 1)).toNat

end

end A163038.P8137148843997407257

/-!
# A163039: Number of nX4 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163039, there is no canonical definition to state claims against.
-/

/-! ## A163039.P8494614104562534692

`∑[∑[A034187(n+1)]]`
-/

namespace A163039.P8494614104562534692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163039.P8494614104562534692

/-! ## A163039.P337332876441017499

`A359574(A167614(n+2)+1)`
-/

namespace A163039.P337332876441017499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A167614 (n + 2) + 1).toNat

end

end A163039.P337332876441017499

/-! ## A163039.P6573895441449653596

`∑[∑[A292357(A141214(n+1))]]`
-/

namespace A163039.P6573895441449653596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A141214 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163039.P6573895441449653596

/-! ## A163039.P7509899976689641683

`∑[∑[A292357(A155212(n)+5)]]`
-/

namespace A163039.P7509899976689641683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A155212 n + 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163039.P7509899976689641683

/-! ## A163039.P3071510048649005241

`∑[∑[A292357(A056000(n)+7)]]`
-/

namespace A163039.P3071510048649005241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A056000 n + 7).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163039.P3071510048649005241

/-!
# A163040: Number of n X 5 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163040, there is no canonical definition to state claims against.
-/

/-! ## A163040.P18254397337837599077

`A359574(A167499(n+3))`
-/

namespace A163040.P18254397337837599077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A167499 (n + 3)).toNat

end

end A163040.P18254397337837599077

/-! ## A163040.P6365619271653048804

`A359574(A000217(n+4)+5)`
-/

namespace A163040.P6365619271653048804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000217 (n + 4) + 5).toNat

end

end A163040.P6365619271653048804

/-! ## A163040.P10800059091321974012

`A359574(A000124(n+5)-(n+1))`
-/

namespace A163040.P10800059091321974012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A163040.P10800059091321974012

/-! ## A163040.P2919245385998258117

`A359574(A046691(n+3)-(n-4))`
-/

namespace A163040.P2919245385998258117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A046691 (n + 3) - ((n : ℤ) - 4)).toNat

end

end A163040.P2919245385998258117

/-! ## A163040.P12650798561699130928

`A359574(A141214(n+3)-(2*n+3))`
-/

namespace A163040.P12650798561699130928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 (n + 3) - (2 * n + 3 : ℤ)).toNat

end

end A163040.P12650798561699130928

/-!
# A163041: Number of n X 6 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163041, there is no canonical definition to state claims against.
-/

/-! ## A163041.P17245427558292307930

`A359574(A056115(n)+21)`
-/

namespace A163041.P17245427558292307930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A056115 n + 21).toNat

end

end A163041.P17245427558292307930

/-! ## A163041.P4423162226382677141

`A359574(A167499(n+4)+1)`
-/

namespace A163041.P4423162226382677141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A167499 (n + 4) + 1).toNat

end

end A163041.P4423162226382677141

/-! ## A163041.P17210535262381682882

`A359574(A000124(n+5)+5)`
-/

namespace A163041.P17210535262381682882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000124 (n + 5) + 5).toNat

end

end A163041.P17210535262381682882

/-! ## A163041.P9641278420864812586

`A359574(A141214(n+2)+9)`
-/

namespace A163041.P9641278420864812586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 (n + 2) + 9).toNat

end

end A163041.P9641278420864812586

/-! ## A163041.P5988196178746579507

`A359574(Δ[A026054(n+4)]-A005408(n))`
-/

namespace A163041.P5988196178746579507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (f1 (n + 1) - f1 n - A005408 n).toNat

end

end A163041.P5988196178746579507

/-!
# A163042: Number of n X 7 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163042, there is no canonical definition to state claims against.
-/

/-! ## A163042.P17471075805074534390

`A359574(A056119(n)+28)`
-/

namespace A163042.P17471075805074534390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A056119 n + 28).toNat

end

end A163042.P17471075805074534390

/-! ## A163042.P274118403695078405

`A359574(A166136(n+5)+1)`
-/

namespace A163042.P274118403695078405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A166136 (n + 5) + 1).toNat

end

end A163042.P274118403695078405

/-! ## A163042.P17559339199243334508

`A359574(A167499(n+5)+2)`
-/

namespace A163042.P17559339199243334508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A167499 (n + 5) + 2).toNat

end

end A163042.P17559339199243334508

/-! ## A163042.P10516425628853900890

`A359574(A077169(n+7)+2)`
-/

namespace A163042.P10516425628853900890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A077169 (n + 7) + 2).toNat

end

end A163042.P10516425628853900890

/-! ## A163042.P14156570422692688508

`∑[∑[A292357(A374008(n+1))]]`
-/

namespace A163042.P14156570422692688508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (A374008 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163042.P14156570422692688508

/-!
# A163043: Number of n X 8 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163043, there is no canonical definition to state claims against.
-/

/-! ## A163043.P7329965515902327834

`A359574(A000217(n+7)+8)`
-/

namespace A163043.P7329965515902327834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000217 (n + 7) + 8).toNat

end

end A163043.P7329965515902327834

/-! ## A163043.P15766911469837396585

`A359574(A141214(n+4)+11)`
-/

namespace A163043.P15766911469837396585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A141214 (n + 4) + 11).toNat

end

end A163043.P15766911469837396585

/-!
# A163044: Number of n X 9 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163044, there is no canonical definition to state claims against.
-/

/-! ## A163044.P5934625778441822701

`A359574(A167499(n+7)+4)`
-/

namespace A163044.P5934625778441822701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A167499 (n + 7) + 4).toNat

end

end A163044.P5934625778441822701

/-!
# A163045: Number of n X 10 binary arrays with all 1s connected and a path of 1s from left column to right column.

The programs for A163045, there is no canonical definition to state claims against.
-/

/-! ## A163045.P6838010599999137627

`A359574(A000124(n+10)-(n+1))`
-/

namespace A163045.P6838010599999137627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359574 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A163045.P6838010599999137627

/-!
# A163046: Number of n X n binary arrays with all 1s connected, and all corners 1.

The programs for A163046, there is no canonical definition to state claims against.
-/

/-! ## A163046.P12592076890560073261

`A389687((n+1)²+n²)`
-/

namespace A163046.P12592076890560073261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 ((n + 1) ^ 2 + n ^ 2)

end

end A163046.P12592076890560073261

/-!
# A163047: Number of n X 3 binary arrays with all 1s connected, and all corners 1.

The programs for A163047, there is no canonical definition to state claims against.
-/

/-! ## A163047.P11803877634658423456

`A389687(A167614(n+1))`
-/

namespace A163047.P11803877634658423456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A167614 (n + 1)).toNat

end

end A163047.P11803877634658423456

/-! ## A163047.P4757423848644636867

`A389687(A373663(n+1))`
-/

namespace A163047.P4757423848644636867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A373663 (n + 1)).toNat

end

end A163047.P4757423848644636867

/-! ## A163047.P1299695536261648669

`A389687(A034856(n+2))`
-/

namespace A163047.P1299695536261648669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A034856 (n + 2)).toNat

end

end A163047.P1299695536261648669

/-! ## A163047.P11709667666812255813

`record[A389687(n+1)/A389687(n+3)]`
-/

namespace A163047.P11709667666812255813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389687 (n + 1) : ℚ) / (A389687 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163047.P11709667666812255813

/-! ## A163047.P5621597322306142833

`record[gcd(A384620(n), A389687(n+4))]`
-/

namespace A163047.P5621597322306142833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A384620 n) (A389687 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163047.P5621597322306142833

/-!
# A163048: Number of n X 4 binary arrays with all 1s connected, and all corners 1.

The programs for A163048, there is no canonical definition to state claims against.
-/

/-! ## A163048.P6190547418199552237

`A389687(∑[2*a(n-1)-a(n-2)])` with `a(0)=10, a(1)=4, a(2)=5`
-/

namespace A163048.P6190547418199552237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 4, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163048.P6190547418199552237

/-! ## A163048.P17763872754728617448

`A389687(A141214(n+1))`
-/

namespace A163048.P17763872754728617448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A141214 (n + 1)).toNat

end

end A163048.P17763872754728617448

/-! ## A163048.P2425309499331634705

`A389687(A374004(n+1))`
-/

namespace A163048.P2425309499331634705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374004 (n + 1)).toNat

end

end A163048.P2425309499331634705

/-! ## A163048.P16913807314630439088

`A389687(A000217(n+3)+4)`
-/

namespace A163048.P16913807314630439088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A000217 (n + 3) + 4).toNat

end

end A163048.P16913807314630439088

/-!
# A163049: Number of n X 5 binary arrays with all 1s connected, and all corners 1.

The programs for A163049, there is no canonical definition to state claims against.
-/

/-! ## A163049.P13023139130718864696

`A389687(A374005(n+1))`
-/

namespace A163049.P13023139130718864696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374005 (n + 1)).toNat

end

end A163049.P13023139130718864696

/-! ## A163049.P9695516456154101292

`A389687(eq[2, A370770(n)])`
-/

namespace A163049.P9695516456154101292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163049.P9695516456154101292

/-!
# A163050: Number of n X 6 binary arrays with all 1s connected, and all corners 1.

The programs for A163050, there is no canonical definition to state claims against.
-/

/-! ## A163050.P9197674938270047479

`A389687(A374007(n+1))`
-/

namespace A163050.P9197674938270047479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374007 (n + 1)).toNat

end

end A163050.P9197674938270047479

/-!
# A163051: Number of n X 7 binary arrays with all 1's connected, and all corners 1.

The programs for A163051, there is no canonical definition to state claims against.
-/

/-! ## A163051.P16142140454539009499

`A389687(A374008(n+1))`
-/

namespace A163051.P16142140454539009499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374008 (n + 1)).toNat

end

end A163051.P16142140454539009499

/-!
# A163052: Number of n X 8 binary arrays with all 1s connected, and all corners 1.

The programs for A163052, there is no canonical definition to state claims against.
-/

/-! ## A163052.P1283015637249133062

`A389687(A374009(n+1))`
-/

namespace A163052.P1283015637249133062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374009 (n + 1)).toNat

end

end A163052.P1283015637249133062

/-!
# A163053: Number of n X 9 binary arrays with all 1s connected, and all corners 1.

The programs for A163053, there is no canonical definition to state claims against.
-/

/-! ## A163053.P11830753250891066764

`A389687(A374010(n+1))`
-/

namespace A163053.P11830753250891066764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374010 (n + 1)).toNat

end

end A163053.P11830753250891066764

/-!
# A163054: Number of n X 10 binary arrays with all 1s connected, and all corners 1.

The programs for A163054, there is no canonical definition to state claims against.
-/

/-! ## A163054.P6904365148426705432

`A389687(A374011(n+1))`
-/

namespace A163054.P6904365148426705432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389687 (A374011 (n + 1)).toNat

end

end A163054.P6904365148426705432

/-!
# A163055: Number of reduced words of length n in Coxeter group on 12 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163055, there is no canonical definition to state claims against.
-/

/-! ## A163055.P18071112798540194437

`A165266(n)-A165655(A068718(n))`
-/

namespace A163055.P18071112798540194437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165266 n - A165655 (A068718 n).toNat

end

end A163055.P18071112798540194437

/-!
# A163057: An alternating sum from the n-th odd number up to the n-th odd prime.

The programs for A163057, the canonical program `A163057.P717677212788905023` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163057 has offset 1).

The definition of A163057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163057.P717677212788905023

`n-A130472(A065091(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163057

/-- `n-A130472(A065091(n+1))` -/
def P717677212788905023.Spec : Prop :=
  ∀ n, P717677212788905023.a n = A163057 (n + 1)

theorem P717677212788905023.correct : P717677212788905023.Spec := by
  intro n
  simp only [A163057, Nat.add_sub_cancel]

end A163057

/-! ## A163057.P42938903848721037

`ceil(p?[2*n+1]/2+n)`
-/

namespace A163057.P42938903848721037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2 + (n : ℚ)⌉

end

end A163057.P42938903848721037

namespace A163057

/-- `ceil(p?[2*n+1]/2+n)` -/
def P42938903848721037.Spec : Prop :=
  ∀ n, P42938903848721037.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P15711289240836326015

`round(p?[2*n+1]/2+n)`
-/

namespace A163057.P15711289240836326015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2 + (n : ℚ))

end

end A163057.P15711289240836326015

namespace A163057

/-- `round(p?[2*n+1]/2+n)` -/
def P15711289240836326015.Spec : Prop :=
  ∀ n, P15711289240836326015.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P15379654169949127064

`ceil(p?[n+1+n]/2)+n`
-/

namespace A163057.P15379654169949127064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ + (n : ℤ)

end

end A163057.P15379654169949127064

namespace A163057

/-- `ceil(p?[n+1+n]/2)+n` -/
def P15379654169949127064.Spec : Prop :=
  ∀ n, P15379654169949127064.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P6328661952367481517

`ceil(cosh(log(p?[2*n+1])))+n`
-/

namespace A163057.P6328661952367481517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌉ + (n : ℤ)

end

end A163057.P6328661952367481517

namespace A163057

/-- `ceil(cosh(log(p?[2*n+1])))+n` -/
def P6328661952367481517.Spec : Prop :=
  ∀ n, P6328661952367481517.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P15582839193710179363

`ceil(sinh(log(p?[2*n+1])))+n`
-/

namespace A163057.P15582839193710179363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌉ + (n : ℤ)

end

end A163057.P15582839193710179363

namespace A163057

/-- `ceil(sinh(log(p?[2*n+1])))+n` -/
def P15582839193710179363.Spec : Prop :=
  ∀ n, P15582839193710179363.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P12226900150155789119

`(p?[2*n+1]+1)/2+n`
-/

namespace A163057.P12226900150155789119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2 + (n : ℚ)

end

end A163057.P12226900150155789119

namespace A163057

/-- `(p?[2*n+1]+1)/2+n` -/
def P12226900150155789119.Spec : Prop :=
  ∀ n, P12226900150155789119.a n = (A163057 (n + 1) : ℚ)

end A163057

/-! ## A163057.P9741179762414056184

`floor(p?[n+1+n]/2)+n+1`
-/

namespace A163057.P9741179762414056184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A163057.P9741179762414056184

namespace A163057

/-- `floor(p?[n+1+n]/2)+n+1` -/
def P9741179762414056184.Spec : Prop :=
  ∀ n, P9741179762414056184.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P11441298139649293687

`round(sinh(log(p?[2*n+1])))+1+n`
-/

namespace A163057.P11441298139649293687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))) + 1 + (n : ℤ)

end

end A163057.P11441298139649293687

namespace A163057

/-- `round(sinh(log(p?[2*n+1])))+1+n` -/
def P11441298139649293687.Spec : Prop :=
  ∀ n, P11441298139649293687.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P8064924667942941155

`A175540(n+1)+1`
-/

namespace A163057.P8064924667942941155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + 1

end

end A163057.P8064924667942941155

namespace A163057

/-- `A175540(n+1)+1` -/
def P8064924667942941155.Spec : Prop :=
  ∀ n, P8064924667942941155.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P6469832750915059718

`A006254(n+1)+n`
-/

namespace A163057.P6469832750915059718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (n : ℤ)

end

end A163057.P6469832750915059718

namespace A163057

/-- `A006254(n+1)+n` -/
def P6469832750915059718.Spec : Prop :=
  ∀ n, P6469832750915059718.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P12030673273596794776

`∑[A100820(n+1)+2]`
-/

namespace A163057.P12030673273596794776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163057.P12030673273596794776

namespace A163057

/-- `∑[A100820(n+1)+2]` -/
def P12030673273596794776.Spec : Prop :=
  ∀ n, P12030673273596794776.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P8743165091428033242

`A005097(n+1)+1+n`
-/

namespace A163057.P8743165091428033242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1 + (n : ℤ)

end

end A163057.P8743165091428033242

namespace A163057

/-- `A005097(n+1)+1+n` -/
def P8743165091428033242.Spec : Prop :=
  ∀ n, P8743165091428033242.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P14455467870540658614

`A067076(n+1)+2+n`
-/

namespace A163057.P14455467870540658614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 2 + (n : ℤ)

end

end A163057.P14455467870540658614

namespace A163057

/-- `A067076(n+1)+2+n` -/
def P14455467870540658614.Spec : Prop :=
  ∀ n, P14455467870540658614.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P13533663618557386183

`A098090(n+1)-1+n`
-/

namespace A163057.P13533663618557386183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 1 + (n : ℤ)

end

end A163057.P13533663618557386183

namespace A163057

/-- `A098090(n+1)-1+n` -/
def P13533663618557386183.Spec : Prop :=
  ∀ n, P13533663618557386183.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P17628875959403732832

`A089253(n+1)-2+n`
-/

namespace A163057.P17628875959403732832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - 2 + (n : ℤ)

end

end A163057.P17628875959403732832

namespace A163057

/-- `A089253(n+1)-2+n` -/
def P17628875959403732832.Spec : Prop :=
  ∀ n, P17628875959403732832.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P16187202953382009514

`A089192(n+1)-3+n`
-/

namespace A163057.P16187202953382009514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 3 + (n : ℤ)

end

end A163057.P16187202953382009514

namespace A163057

/-- `A089192(n+1)-3+n` -/
def P16187202953382009514.Spec : Prop :=
  ∀ n, P16187202953382009514.a n = A163057 (n + 1)

end A163057

/-! ## A163057.P8305525223984132100

`(A014690(n+1)+n)/2`
-/

namespace A163057.P8305525223984132100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014690 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A163057.P8305525223984132100

namespace A163057

/-- `(A014690(n+1)+n)/2` -/
def P8305525223984132100.Spec : Prop :=
  ∀ n, P8305525223984132100.a n = (A163057 (n + 1) : ℚ)

end A163057

/-! ## A163057.P3553030811091532059

`A097069(n+1)-4+n`
-/

namespace A163057.P3553030811091532059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 4 + (n : ℤ)

end

end A163057.P3553030811091532059

namespace A163057

/-- `A097069(n+1)-4+n` -/
def P3553030811091532059.Spec : Prop :=
  ∀ n, P3553030811091532059.a n = A163057 (n + 1)

end A163057

/-!
# A163058: Primes in A163057.

The programs for A163058, the canonical program `A163058.P17793405762297747335` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163058 has offset 1).

The definition of A163058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163058.P17793405762297747335

`p?[A163057(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163058

/-- `p?[A163057(n+1)]` -/
def P17793405762297747335.Spec : Prop :=
  ∀ n, P17793405762297747335.a n = A163058 (n + 1)

theorem P17793405762297747335.correct : P17793405762297747335.Spec := by
  intro n
  simp only [A163058, Nat.add_sub_cancel]

end A163058

/-! ## A163058.P4921823700771458546

`p?[A175540(n+1)+1]`
-/

namespace A163058.P4921823700771458546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P4921823700771458546

namespace A163058

/-- `p?[A175540(n+1)+1]` -/
def P4921823700771458546.Spec : Prop :=
  ∀ n, P4921823700771458546.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P16268159848814008284

`p?[A006254(n+1)+n]`
-/

namespace A163058.P16268159848814008284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P16268159848814008284

namespace A163058

/-- `p?[A006254(n+1)+n]` -/
def P16268159848814008284.Spec : Prop :=
  ∀ n, P16268159848814008284.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P8199172636262654805

`p?[A102781(n+1)+n]`
-/

namespace A163058.P8199172636262654805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P8199172636262654805

namespace A163058

/-- `p?[A102781(n+1)+n]` -/
def P8199172636262654805.Spec : Prop :=
  ∀ n, P8199172636262654805.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P12496429326799588567

`p?[A130290(n+1)+n]`
-/

namespace A163058.P12496429326799588567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P12496429326799588567

namespace A163058

/-- `p?[A130290(n+1)+n]` -/
def P12496429326799588567.Spec : Prop :=
  ∀ n, P12496429326799588567.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P5818447915919160945

`p?[A111333(n+2)+n]`
-/

namespace A163058.P5818447915919160945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P5818447915919160945

namespace A163058

/-- `p?[A111333(n+2)+n]` -/
def P5818447915919160945.Spec : Prop :=
  ∀ n, P5818447915919160945.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P2550831356631910043

`p?[A130291(n+2)+n]`
-/

namespace A163058.P2550831356631910043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P2550831356631910043

namespace A163058

/-- `p?[A130291(n+2)+n]` -/
def P2550831356631910043.Spec : Prop :=
  ∀ n, P2550831356631910043.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P17882058951642335957

`p?[A005097(n+1)+1+n]`
-/

namespace A163058.P17882058951642335957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P17882058951642335957

namespace A163058

/-- `p?[A005097(n+1)+1+n]` -/
def P17882058951642335957.Spec : Prop :=
  ∀ n, P17882058951642335957.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P15445946758408996568

`p?[A098090(n+1)-1+n]`
-/

namespace A163058.P15445946758408996568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P15445946758408996568

namespace A163058

/-- `p?[A098090(n+1)-1+n]` -/
def P15445946758408996568.Spec : Prop :=
  ∀ n, P15445946758408996568.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P422552600706156805

`p?[A089192(n+1)-3+n]`
-/

namespace A163058.P422552600706156805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P422552600706156805

namespace A163058

/-- `p?[A089192(n+1)-3+n]` -/
def P422552600706156805.Spec : Prop :=
  ∀ n, P422552600706156805.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P10817910567778422688

`filter[A163057(n+1), A010051(#)]`
-/

namespace A163058.P10817910567778422688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163058.P10817910567778422688

namespace A163058

/-- `filter[A163057(n+1), A010051(#)]` -/
def P10817910567778422688.Spec : Prop :=
  ∀ n, P10817910567778422688.a n = A163058 (n + 1)

end A163058

/-! ## A163058.P2099531261714976451

`∩[A000040(n+1), A163057(n+1)]`
-/

namespace A163058.P2099531261714976451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P2099531261714976451

namespace A163058

/-- `∩[A000040(n+1), A163057(n+1)]` -/
def P2099531261714976451.Spec : Prop :=
  ∀ n, (P2099531261714976451.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P5095014604093628642

`∩[A008578(n+1), A163057(n+1)]`
-/

namespace A163058.P5095014604093628642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P5095014604093628642

namespace A163058

/-- `∩[A008578(n+1), A163057(n+1)]` -/
def P5095014604093628642.Spec : Prop :=
  ∀ n, (P5095014604093628642.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P2528548367695900645

`∩[A045319(n+1), A163057(n+1)]`
-/

namespace A163058.P2528548367695900645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P2528548367695900645

namespace A163058

/-- `∩[A045319(n+1), A163057(n+1)]` -/
def P2528548367695900645.Spec : Prop :=
  ∀ n, (P2528548367695900645.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P16136583693050118258

`∩[A045344(n+1), A163057(n+1)]`
-/

namespace A163058.P16136583693050118258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P16136583693050118258

namespace A163058

/-- `∩[A045344(n+1), A163057(n+1)]` -/
def P16136583693050118258.Spec : Prop :=
  ∀ n, (P16136583693050118258.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P7803293816057254734

`∩[A070957(n+1), A163057(n+1)]`
-/

namespace A163058.P7803293816057254734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P7803293816057254734

namespace A163058

/-- `∩[A070957(n+1), A163057(n+1)]` -/
def P7803293816057254734.Spec : Prop :=
  ∀ n, (P7803293816057254734.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P5923143001287683561

`∩[A138837(n+1), A163057(n+1)]`
-/

namespace A163058.P5923143001287683561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P5923143001287683561

namespace A163058

/-- `∩[A138837(n+1), A163057(n+1)]` -/
def P5923143001287683561.Spec : Prop :=
  ∀ n, (P5923143001287683561.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P12942749660341088059

`∩[A158611(n+1), A163057(n+1)]`
-/

namespace A163058.P12942749660341088059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P12942749660341088059

namespace A163058

/-- `∩[A158611(n+1), A163057(n+1)]` -/
def P12942749660341088059.Spec : Prop :=
  ∀ n, (P12942749660341088059.a n : ℤ) = A163058 (n + 1)

end A163058

/-! ## A163058.P1379391522302486688

`∩[A163057(n+1), A182986(n+1)]`
-/

namespace A163058.P1379391522302486688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163058.P1379391522302486688

namespace A163058

/-- `∩[A163057(n+1), A182986(n+1)]` -/
def P1379391522302486688.Spec : Prop :=
  ∀ n, (P1379391522302486688.a n : ℤ) = A163058 (n + 1)

end A163058

/-!
# A163059: An alternating sum from 4*n-3 up to the smaller of the n-th twin primes.

The programs for A163059, the canonical program `A163059.P8481546915683529169` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163059 has offset 1).

The definition of A163059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163059.P841139502148761403

`(A001359(n+1)+A016813(n))/2`
-/

namespace A163059.P841139502148761403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + A016813 n : ℚ) / 2

end

end A163059.P841139502148761403

namespace A163059

/-- `(A001359(n+1)+A016813(n))/2` -/
def P841139502148761403.Spec : Prop :=
  ∀ n, P841139502148761403.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P8481546915683529169

`A001057(A001359(n+1))-A001057(4*n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A163059

/-- `A001057(A001359(n+1))-A001057(4*n)` -/
def P8481546915683529169.Spec : Prop :=
  ∀ n, P8481546915683529169.a n = A163059 (n + 1)

theorem P8481546915683529169.correct : P8481546915683529169.Spec := by
  intro n
  simp only [A163059, Nat.add_sub_cancel]

end A163059

/-! ## A163059.P1813571978734950072

`A040040(n+1)+2*n`
-/

namespace A163059.P1813571978734950072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + (2 * n : ℤ)

end

end A163059.P1813571978734950072

namespace A163059

/-- `A040040(n+1)+2*n` -/
def P1813571978734950072.Spec : Prop :=
  ∀ n, P1813571978734950072.a n = A163059 (n + 1)

end A163059

/-! ## A163059.P16407210514065333098

`A243811(n+1)+2*(n+1)`
-/

namespace A163059.P16407210514065333098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1) + (2 * (n + 1) : ℤ)

end

end A163059.P16407210514065333098

namespace A163059

/-- `A243811(n+1)+2*(n+1)` -/
def P16407210514065333098.Spec : Prop :=
  ∀ n, P16407210514065333098.a n = A163059 (n + 1)

end A163059

/-! ## A163059.P5203820463386189885

`A014574(n+1)/2+2*n`
-/

namespace A163059.P5203820463386189885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) / 2 + (2 * n : ℚ)

end

end A163059.P5203820463386189885

namespace A163059

/-- `A014574(n+1)/2+2*n` -/
def P5203820463386189885.Spec : Prop :=
  ∀ n, P5203820463386189885.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P14395774539757630350

`A054735(n+1)/4+2*n`
-/

namespace A163059.P14395774539757630350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 4 + (2 * n : ℚ)

end

end A163059.P14395774539757630350

namespace A163059

/-- `A054735(n+1)/4+2*n` -/
def P14395774539757630350.Spec : Prop :=
  ∀ n, P14395774539757630350.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P14271107141632447978

`floor(A006512(n+1)/2+2*n)`
-/

namespace A163059.P14271107141632447978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006512 (n + 1) : ℚ) / 2 + (2 * n : ℚ)⌋

end

end A163059.P14271107141632447978

namespace A163059

/-- `floor(A006512(n+1)/2+2*n)` -/
def P14271107141632447978.Spec : Prop :=
  ∀ n, P14271107141632447978.a n = A163059 (n + 1)

end A163059

/-! ## A163059.P6715861489965883584

`(A144834(n+1)+2)/2+2*n`
-/

namespace A163059.P6715861489965883584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) + 2 : ℚ) / 2 + (2 * n : ℚ)

end

end A163059.P6715861489965883584

namespace A163059

/-- `(A144834(n+1)+2)/2+2*n` -/
def P6715861489965883584.Spec : Prop :=
  ∀ n, P6715861489965883584.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P8294544464349013011

`A005843(n)+A014574(n+1)/2`
-/

namespace A163059.P8294544464349013011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) + (A014574 (n + 1) : ℚ) / 2

end

end A163059.P8294544464349013011

namespace A163059

/-- `A005843(n)+A014574(n+1)/2` -/
def P8294544464349013011.Spec : Prop :=
  ∀ n, P8294544464349013011.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P10999002244975783320

`A168497(n+2)+2*n`
-/

namespace A163059.P10999002244975783320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2) + (2 * n : ℤ)

end

end A163059.P10999002244975783320

namespace A163059

/-- `A168497(n+2)+2*n` -/
def P10999002244975783320.Spec : Prop :=
  ∀ n, P10999002244975783320.a n = A163059 (n + 1)

end A163059

/-! ## A163059.P18260032386101482597

`(A077800(2*n+1)+A005408(2*n))/2`
-/

namespace A163059.P18260032386101482597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077800 (2 * n + 1) + A005408 (2 * n) : ℚ) / 2

end

end A163059.P18260032386101482597

namespace A163059

/-- `(A077800(2*n+1)+A005408(2*n))/2` -/
def P18260032386101482597.Spec : Prop :=
  ∀ n, P18260032386101482597.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P9482660103469352532

`(A267872(2*n)+A077800(2*n+1))/2`
-/

namespace A163059.P9482660103469352532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267872 (2 * n) + A077800 (2 * n + 1) : ℚ) / 2

end

end A163059.P9482660103469352532

namespace A163059

/-- `(A267872(2*n)+A077800(2*n+1))/2` -/
def P9482660103469352532.Spec : Prop :=
  ∀ n, P9482660103469352532.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P14533182270899369211

`(A004274(2*n+1)+A001097(2*n+1))/2`
-/

namespace A163059.P14533182270899369211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004274 (2 * n + 1) + A001097 (2 * n + 1) : ℚ) / 2

end

end A163059.P14533182270899369211

namespace A163059

/-- `(A004274(2*n+1)+A001097(2*n+1))/2` -/
def P14533182270899369211.Spec : Prop :=
  ∀ n, P14533182270899369211.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P9134763829394906981

`(A004280(2*n+1)+A001097(2*n+1))/2`
-/

namespace A163059.P9134763829394906981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004280 (2 * n + 1) + A001097 (2 * n + 1) : ℚ) / 2

end

end A163059.P9134763829394906981

namespace A163059

/-- `(A004280(2*n+1)+A001097(2*n+1))/2` -/
def P9134763829394906981.Spec : Prop :=
  ∀ n, P9134763829394906981.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P11448834711620558276

`(p?[A000040(n+1)-2]+4*n+1)/2`
-/

namespace A163059.P11448834711620558276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (4 * n + 1 : ℤ) : ℚ) / 2

end

end A163059.P11448834711620558276

namespace A163059

/-- `(p?[A000040(n+1)-2]+4*n+1)/2` -/
def P11448834711620558276.Spec : Prop :=
  ∀ n, P11448834711620558276.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P10445085451264106942

`A160830(A029707(n+1))+2*n+1`
-/

namespace A163059.P10445085451264106942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160830 (A029707 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A163059.P10445085451264106942

namespace A163059

/-- `A160830(A029707(n+1))+2*n+1` -/
def P10445085451264106942.Spec : Prop :=
  ∀ n, P10445085451264106942.a n = A163059 (n + 1)

end A163059

/-! ## A163059.P16628305788716439277

`(record[A020639(A000040(n+2)+2)]-1)/2+n+n`
-/

namespace A163059.P16628305788716439277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 2) + 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 : ℚ) / 2 + (n : ℚ) + (n : ℚ)

end

end A163059.P16628305788716439277

namespace A163059

/-- `(record[A020639(A000040(n+2)+2)]-1)/2+n+n` -/
def P16628305788716439277.Spec : Prop :=
  ∀ n, P16628305788716439277.a n = (A163059 (n + 1) : ℚ)

end A163059

/-! ## A163059.P7434197724386477871

`eq[A000203(2*n+1), A000010(2*n+3)]+2*n+1`
-/

namespace A163059.P7434197724386477871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (2 * n + 1)

end

end A163059.P7434197724386477871

namespace A163059

/-- `eq[A000203(2*n+1), A000010(2*n+3)]+2*n+1` -/
def P7434197724386477871.Spec : Prop :=
  ∀ n, (P7434197724386477871.a n : ℤ) = A163059 (n + 1)

end A163059

/-! ## A163059.P13200502991027058102

`eq[A000203(n+1), A000010(n+3)]/2+2*n+1`
-/

namespace A163059.P13200502991027058102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2 + (2 * n + 1 : ℚ)

end

end A163059.P13200502991027058102

namespace A163059

/-- `eq[A000203(n+1), A000010(n+3)]/2+2*n+1` -/
def P13200502991027058102.Spec : Prop :=
  ∀ n, P13200502991027058102.a n = (A163059 (n + 1) : ℚ)

end A163059

/-!
# A163061: Sum of the first n primes plus the first n nonprimes.

The programs for A163061, the canonical program `A163061.P15581848910612517848` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163061 has offset 1).

The definition of A163061 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163061.P15581848910612517848

`A007504(n+1)+A051349(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A163061

/-- `A007504(n+1)+A051349(n)` -/
def P15581848910612517848.Spec : Prop :=
  ∀ n, P15581848910612517848.a n = A163061 (n + 1)

theorem P15581848910612517848.correct : P15581848910612517848.Spec := by
  intro n
  simp only [A163061, Nat.add_sub_cancel]

end A163061

/-! ## A163061.P14291798718491620534

`A051349(n)+∑[A000040(n+1)]`
-/

namespace A163061.P14291798718491620534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P14291798718491620534

namespace A163061

/-- `A051349(n)+∑[A000040(n+1)]` -/
def P14291798718491620534.Spec : Prop :=
  ∀ n, P14291798718491620534.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P15975628259003595239

`A237589(n+1)+A175967(n+1)`
-/

namespace A163061.P15975628259003595239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + A175967 (n + 1)

end

end A163061.P15975628259003595239

namespace A163061

/-- `A237589(n+1)+A175967(n+1)` -/
def P15975628259003595239.Spec : Prop :=
  ∀ n, P15975628259003595239.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P12697123793081784867

`A362419(n+1)-A163116(n+1)`
-/

namespace A163061.P12697123793081784867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362419 (n + 1) - A163116 (n + 1)

end

end A163061.P12697123793081784867

namespace A163061

/-- `A362419(n+1)-A163116(n+1)` -/
def P12697123793081784867.Spec : Prop :=
  ∀ n, P12697123793081784867.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P6443560134112486939

`A163116(n+1)+2*A051349(n)`
-/

namespace A163061.P6443560134112486939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (n + 1) + 2 * A051349 n

end

end A163061.P6443560134112486939

namespace A163061

/-- `A163116(n+1)+2*A051349(n)` -/
def P6443560134112486939.Spec : Prop :=
  ∀ n, P6443560134112486939.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P15094551594387764511

`∑[A141468(n+1)+Δ[A007504(n)]]`
-/

namespace A163061.P15094551594387764511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P15094551594387764511

namespace A163061

/-- `∑[A141468(n+1)+Δ[A007504(n)]]` -/
def P15094551594387764511.Spec : Prop :=
  ∀ n, P15094551594387764511.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P17163389549331575687

`∑[A000040(n+1)+comp[A151800(n)]]`
-/

namespace A163061.P17163389549331575687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P17163389549331575687

namespace A163061

/-- `∑[A000040(n+1)+comp[A151800(n)]]` -/
def P17163389549331575687.Spec : Prop :=
  ∀ n, P17163389549331575687.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P16050775001173673714

`∑[A141468(n+1)+A000040(n+1)]`
-/

namespace A163061.P16050775001173673714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P16050775001173673714

namespace A163061

/-- `∑[A141468(n+1)+A000040(n+1)]` -/
def P16050775001173673714.Spec : Prop :=
  ∀ n, P16050775001173673714.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P9900826804221048539

`∑[A141468(n+1)+∑[A054541(n+1)]]`
-/

namespace A163061.P9900826804221048539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P9900826804221048539

namespace A163061

/-- `∑[A141468(n+1)+∑[A054541(n+1)]]` -/
def P9900826804221048539.Spec : Prop :=
  ∀ n, P9900826804221048539.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P14670738874495765892

`A000040(n+1)+A018252(n)+a(n-1)` with `a(0)=2`
-/

namespace A163061.P14670738874495765892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (n + 1) + (A018252 n + a (n - 1))

end

end A163061.P14670738874495765892

namespace A163061

/-- `A000040(n+1)+A018252(n)+a(n-1)` -/
def P14670738874495765892.Spec : Prop :=
  ∀ n, P14670738874495765892.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P16709467122670303627

`A051349(n+1)+A071411(n+1)+A051349(n)`
-/

namespace A163061.P16709467122670303627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1) + (A071411 (n + 1) + A051349 n)

end

end A163061.P16709467122670303627

namespace A163061

/-- `A051349(n+1)+A071411(n+1)+A051349(n)` -/
def P16709467122670303627.Spec : Prop :=
  ∀ n, P16709467122670303627.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P14331606214188421550

`A007504(n+1)+A007504(n+1)-A163116(n+1)`
-/

namespace A163061.P14331606214188421550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A007504 (n + 1) - A163116 (n + 1))

end

end A163061.P14331606214188421550

namespace A163061

/-- `A007504(n+1)+A007504(n+1)-A163116(n+1)` -/
def P14331606214188421550.Spec : Prop :=
  ∀ n, P14331606214188421550.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P7606283405524574055

`∑[A000040(n+1)+A018252(n+1)]-A018252(n+1)`
-/

namespace A163061.P7606283405524574055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018252 (n + 1)

end

end A163061.P7606283405524574055

namespace A163061

/-- `∑[A000040(n+1)+A018252(n+1)]-A018252(n+1)` -/
def P7606283405524574055.Spec : Prop :=
  ∀ n, P7606283405524574055.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P6213358393626876273

`A051349(n)+∑[A008578(n+2)]`
-/

namespace A163061.P6213358393626876273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P6213358393626876273

namespace A163061

/-- `A051349(n)+∑[A008578(n+2)]` -/
def P6213358393626876273.Spec : Prop :=
  ∀ n, P6213358393626876273.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P7523108274426573691

`∑[A141468(n+1)+record[A006530(n+2)]]`
-/

namespace A163061.P7523108274426573691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P7523108274426573691

namespace A163061

/-- `∑[A141468(n+1)+record[A006530(n+2)]]` -/
def P7523108274426573691.Spec : Prop :=
  ∀ n, P7523108274426573691.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P13775976653357667612

`∑[A141468(n+1)+record[A020639(n+2)]]`
-/

namespace A163061.P13775976653357667612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P13775976653357667612

namespace A163061

/-- `∑[A141468(n+1)+record[A020639(n+2)]]` -/
def P13775976653357667612.Spec : Prop :=
  ∀ n, P13775976653357667612.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P7912448651697547069

`∑[A141468(n+1)+record[A000010(n+1)+1]]`
-/

namespace A163061.P7912448651697547069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P7912448651697547069

namespace A163061

/-- `∑[A141468(n+1)+record[A000010(n+1)+1]]` -/
def P7912448651697547069.Spec : Prop :=
  ∀ n, P7912448651697547069.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P6326257430385638979

`∑[A141468(n+1)+eq[1, A001222(n+1)]+1]`
-/

namespace A163061.P6326257430385638979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P6326257430385638979

namespace A163061

/-- `∑[A141468(n+1)+eq[1, A001222(n+1)]+1]` -/
def P6326257430385638979.Spec : Prop :=
  ∀ n, P6326257430385638979.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P17440406959416636985

`∑[A141468(n+1)+eq[2, A000005(n+1)]+1]`
-/

namespace A163061.P17440406959416636985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P17440406959416636985

namespace A163061

/-- `∑[A141468(n+1)+eq[2, A000005(n+1)]+1]` -/
def P17440406959416636985.Spec : Prop :=
  ∀ n, P17440406959416636985.a n = A163061 (n + 1)

end A163061

/-! ## A163061.P5355423237673797998

`A088636(2*(n+1))-A018252(n+1)`
-/

namespace A163061.P5355423237673797998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088636 (2 * (n + 1)) - A018252 (n + 1)

end

end A163061.P5355423237673797998

namespace A163061

/-- `A088636(2*(n+1))-A018252(n+1)` -/
def P5355423237673797998.Spec : Prop :=
  ∀ n, P5355423237673797998.a n = A163061 (n + 1)

end A163061

/-!
# A163062: a(n) = ((3+sqrt(5))*(1+sqrt(5))^n + (3-sqrt(5))*(1-sqrt(5))^n)/2.

The programs for A163062, the canonical program `A163062.P17978508461233644694` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163062 has offset 0).

The definition of A163062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163062.P17978508461233644694

`2*a(n-1)+4*a(n-2)` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163062

/-- `2*a(n-1)+4*a(n-2)` -/
def P17978508461233644694.Spec : Prop :=
  ∀ n, (P17978508461233644694.a n : ℤ) = A163062 n

theorem P17978508461233644694.correct : P17978508461233644694.Spec := by
  intro n
  simp only [A163062]

end A163062

/-! ## A163062.P9642410595231193857

`2^n*A000032(n+2)`
-/

namespace A163062.P9642410595231193857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000032 (n + 2)

end

end A163062.P9642410595231193857

namespace A163062

/-- `2^n*A000032(n+2)` -/
def P9642410595231193857.Spec : Prop :=
  ∀ n, P9642410595231193857.a n = A163062 n

end A163062

/-! ## A163062.P12024242945649847262

`ogf((3+2x)/(1-2x-4x^2))`
-/

namespace A163062.P12024242945649847262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -2, -4] n

end

end A163062.P12024242945649847262

namespace A163062

/-- `ogf((3+2x)/(1-2x-4x^2))` -/
def P12024242945649847262.Spec : Prop :=
  ∀ n, P12024242945649847262.a n = A163062 n

end A163062

/-! ## A163062.P700014202198469862

`2^n*round(ϕ^(n+2))`
-/

namespace A163062.P700014202198469862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))

end

end A163062.P700014202198469862

namespace A163062

/-- `2^n*round(ϕ^(n+2))` -/
def P700014202198469862.Spec : Prop :=
  ∀ n, P700014202198469862.a n = A163062 n

end A163062

/-! ## A163062.P13382200052899979523

`abs(2*(3*a(n-2)-(a(n-2)-a(n-1))))` with `a(0)=3, a(1)=8`
-/

namespace A163062.P13382200052899979523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  |2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))|

end

end A163062.P13382200052899979523

namespace A163062

/-- `abs(2*(3*a(n-2)-(a(n-2)-a(n-1))))` -/
def P13382200052899979523.Spec : Prop :=
  ∀ n, P13382200052899979523.a n = A163062 n

end A163062

/-! ## A163062.P10232863248640466743

`5*A081057(n)-2`
-/

namespace A163062.P10232863248640466743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081057 n - 2

end

end A163062.P10232863248640466743

namespace A163062

/-- `5*A081057(n)-2` -/
def P10232863248640466743.Spec : Prop :=
  ∀ n, P10232863248640466743.a n = A163062 n

end A163062

/-! ## A163062.P2460372222848946406

`A206687(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A163062.P2460372222848946406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A206687 (n + 2) - a (n - 1)

end

end A163062.P2460372222848946406

namespace A163062

/-- `A206687(n+2)-a(n-1)` -/
def P2460372222848946406.Spec : Prop :=
  ∀ n, P2460372222848946406.a n = A163062 n

end A163062

/-! ## A163062.P6904543517528848844

`A162770(n)+A084057(n)`
-/

namespace A163062.P6904543517528848844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162770 n + A084057 n

end

end A163062.P6904543517528848844

namespace A163062

/-- `A162770(n)+A084057(n)` -/
def P6904543517528848844.Spec : Prop :=
  ∀ n, P6904543517528848844.a n = A163062 n

end A163062

/-! ## A163062.P13284240523985867275

`A163069(n)-A084057(n)`
-/

namespace A163062.P13284240523985867275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163069 n - A084057 n

end

end A163062.P13284240523985867275

namespace A163062

/-- `A163069(n)-A084057(n)` -/
def P13284240523985867275.Spec : Prop :=
  ∀ n, P13284240523985867275.a n = A163062 n

end A163062

/-! ## A163062.P8334462324262620326

`A087131(n)+A084057(n+1)`
-/

namespace A163062.P8334462324262620326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n + A084057 (n + 1)

end

end A163062.P8334462324262620326

namespace A163062

/-- `A087131(n)+A084057(n+1)` -/
def P8334462324262620326.Spec : Prop :=
  ∀ n, P8334462324262620326.a n = A163062 n

end A163062

/-! ## A163062.P501462552678153647

`A103435(n+1)+A087206(n)`
-/

namespace A163062.P501462552678153647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 (n + 1) + A087206 n

end

end A163062.P501462552678153647

namespace A163062

/-- `A103435(n+1)+A087206(n)` -/
def P501462552678153647.Spec : Prop :=
  ∀ n, P501462552678153647.a n = A163062 n

end A163062

/-! ## A163062.P17787116403719454062

`A081057(n)+A014334(n+2)`
-/

namespace A163062.P17787116403719454062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081057 n + A014334 (n + 2)

end

end A163062.P17787116403719454062

namespace A163062

/-- `A081057(n)+A014334(n+2)` -/
def P17787116403719454062.Spec : Prop :=
  ∀ n, P17787116403719454062.a n = A163062 n

end A163062

/-! ## A163062.P15039376134814395091

`A063782(n+1)-A103435(n)`
-/

namespace A163062.P15039376134814395091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 (n + 1) - A103435 n

end

end A163062.P15039376134814395091

namespace A163062

/-- `A063782(n+1)-A103435(n)` -/
def P15039376134814395091.Spec : Prop :=
  ∀ n, P15039376134814395091.a n = A163062 n

end A163062

/-! ## A163062.P2675025899035433391

`A063727(n)+2*A063782(n)`
-/

namespace A163062.P2675025899035433391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n + 2 * A063782 n

end

end A163062.P2675025899035433391

namespace A163062

/-- `A063727(n)+2*A063782(n)` -/
def P2675025899035433391.Spec : Prop :=
  ∀ n, P2675025899035433391.a n = A163062 n

end A163062

/-! ## A163062.P12860055780725608922

`A087206(n)+2*A063727(n)`
-/

namespace A163062.P12860055780725608922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n + 2 * A063727 n

end

end A163062.P12860055780725608922

namespace A163062

/-- `A087206(n)+2*A063727(n)` -/
def P12860055780725608922.Spec : Prop :=
  ∀ n, P12860055780725608922.a n = A163062 n

end A163062

/-! ## A163062.P2858775345005208334

`A162770(n)+A087131(n)/2`
-/

namespace A163062.P2858775345005208334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162770 n : ℚ) + (A087131 n : ℚ) / 2

end

end A163062.P2858775345005208334

namespace A163062

/-- `A162770(n)+A087131(n)/2` -/
def P2858775345005208334.Spec : Prop :=
  ∀ n, P2858775345005208334.a n = (A163062 n : ℚ)

end A163062

/-! ## A163062.P17657784833983169766

`A163069(n)-A087131(n)/2`
-/

namespace A163062.P17657784833983169766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163069 n : ℚ) - (A087131 n : ℚ) / 2

end

end A163062.P17657784833983169766

namespace A163062

/-- `A163069(n)-A087131(n)/2` -/
def P17657784833983169766.Spec : Prop :=
  ∀ n, P17657784833983169766.a n = (A163062 n : ℚ)

end A163062

/-! ## A163062.P14667154201374168460

`A084057(n+1)+Δ[A006483(n)]`
-/

namespace A163062.P14667154201374168460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163062.P14667154201374168460

namespace A163062

/-- `A084057(n+1)+Δ[A006483(n)]` -/
def P14667154201374168460.Spec : Prop :=
  ∀ n, P14667154201374168460.a n = A163062 n

end A163062

/-! ## A163062.P14877016487789613378

`Δ[A063727(n)]+2*A084057(n)`
-/

namespace A163062.P14877016487789613378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A084057 n

end

end A163062.P14877016487789613378

namespace A163062

/-- `Δ[A063727(n)]+2*A084057(n)` -/
def P14877016487789613378.Spec : Prop :=
  ∀ n, P14877016487789613378.a n = A163062 n

end A163062

/-! ## A163062.P280832945609856568

`A171648(2*(n+1))+A087206(n)`
-/

namespace A163062.P280832945609856568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171648 (2 * (n + 1)) + A087206 n

end

end A163062.P280832945609856568

namespace A163062

/-- `A171648(2*(n+1))+A087206(n)` -/
def P280832945609856568.Spec : Prop :=
  ∀ n, P280832945609856568.a n = A163062 n

end A163062

/-!
# A163063: Lucas(3n+2) = Fibonacci(3n+1) + Fibonacci(3n+3).

The programs for A163063, the canonical program `A163063.P13070145835208790261` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163063 has offset 0).

The definition of A163063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163063.P13070145835208790261

`4*a(n-1)+a(n-2)` with `a(0)=3, a(1)=11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163063

/-- `4*a(n-1)+a(n-2)` -/
def P13070145835208790261.Spec : Prop :=
  ∀ n, (P13070145835208790261.a n : ℤ) = A163063 n

theorem P13070145835208790261.correct : P13070145835208790261.Spec := by
  intro n
  simp only [A163063]

end A163063

/-! ## A163063.P6713968383257800032

`A000032(3*n+2)`
-/

namespace A163063.P6713968383257800032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n + 2)

end

end A163063.P6713968383257800032

namespace A163063

/-- `A000032(3*n+2)` -/
def P6713968383257800032.Spec : Prop :=
  ∀ n, P6713968383257800032.a n = A163063 n

end A163063

/-! ## A163063.P708691388582827604

`A033887(n)+A014445(n+1)`
-/

namespace A163063.P708691388582827604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n + A014445 (n + 1)

end

end A163063.P708691388582827604

namespace A163063

/-- `A033887(n)+A014445(n+1)` -/
def P708691388582827604.Spec : Prop :=
  ∀ n, P708691388582827604.a n = A163063 n

end A163063

/-! ## A163063.P8484255431165026014

`ogf((-3+x)/(-1+4x+x^2))`
-/

namespace A163063.P8484255431165026014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -4, -1] n

end

end A163063.P8484255431165026014

namespace A163063

/-- `ogf((-3+x)/(-1+4x+x^2))` -/
def P8484255431165026014.Spec : Prop :=
  ∀ n, P8484255431165026014.a n = A163063 n

end A163063

/-! ## A163063.P8908848674773481352

`round(ϕ^(3*n+2))`
-/

namespace A163063.P8908848674773481352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n + 2))

end

end A163063.P8908848674773481352

namespace A163063

/-- `round(ϕ^(3*n+2))` -/
def P8908848674773481352.Spec : Prop :=
  ∀ n, P8908848674773481352.a n = A163063 n

end A163063

/-! ## A163063.P9573770200673135795

`or(1, floor(ϕ^(2*n+n+2)))`
-/

namespace A163063.P9573770200673135795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.goldenRatio ^ (2 * n + (n + 2))⌋

end

end A163063.P9573770200673135795

namespace A163063

/-- `or(1, floor(ϕ^(2*n+n+2)))` -/
def P9573770200673135795.Spec : Prop :=
  ∀ n, P9573770200673135795.a n = A163063 n

end A163063

/-! ## A163063.P8261507585660514602

`A082587(6*n)`
-/

namespace A163063.P8261507585660514602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (6 * n)

end

end A163063.P8261507585660514602

namespace A163063

/-- `A082587(6*n)` -/
def P8261507585660514602.Spec : Prop :=
  ∀ n, P8261507585660514602.a n = A163063 n

end A163063

/-! ## A163063.P14828478633455169045

`A014447(Δ[n²])`
-/

namespace A163063.P14828478633455169045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163063.P14828478633455169045

namespace A163063

/-- `A014447(Δ[n²])` -/
def P14828478633455169045.Spec : Prop :=
  ∀ n, P14828478633455169045.a n = A163063 n

end A163063

/-! ## A163063.P16467929746219610214

`Δ[A048876(n)/2]`
-/

namespace A163063.P16467929746219610214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048876 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163063.P16467929746219610214

namespace A163063

/-- `Δ[A048876(n)/2]` -/
def P16467929746219610214.Spec : Prop :=
  ∀ n, P16467929746219610214.a n = (A163063 n : ℚ)

end A163063

/-! ## A163063.P632256559117893103

`Δ[A100886(3*n)]`
-/

namespace A163063.P632256559117893103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163063.P632256559117893103

namespace A163063

/-- `Δ[A100886(3*n)]` -/
def P632256559117893103.Spec : Prop :=
  ∀ n, P632256559117893103.a n = A163063 n

end A163063

/-! ## A163063.P8095329586536446800

`Δ[A173714(3*n)]`
-/

namespace A163063.P8095329586536446800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163063.P8095329586536446800

namespace A163063

/-- `Δ[A173714(3*n)]` -/
def P8095329586536446800.Spec : Prop :=
  ∀ n, P8095329586536446800.a n = A163063 n

end A163063

/-! ## A163063.P4659399871240411042

`A254729(3*(n+1))`
-/

namespace A163063.P4659399871240411042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (3 * (n + 1))

end

end A163063.P4659399871240411042

namespace A163063

/-- `A254729(3*(n+1))` -/
def P4659399871240411042.Spec : Prop :=
  ∀ n, P4659399871240411042.a n = A163063 n

end A163063

/-! ## A163063.P12021277365781073432

`2*A306672(n)-1`
-/

namespace A163063.P12021277365781073432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306672 n - 1

end

end A163063.P12021277365781073432

namespace A163063

/-- `2*A306672(n)-1` -/
def P12021277365781073432.Spec : Prop :=
  ∀ n, P12021277365781073432.a n = A163063 n

end A163063

/-! ## A163063.P4473706839871028334

`A000204(3*n+2)`
-/

namespace A163063.P4473706839871028334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (3 * n + 2)

end

end A163063.P4473706839871028334

namespace A163063

/-- `A000204(3*n+2)` -/
def P4473706839871028334.Spec : Prop :=
  ∀ n, P4473706839871028334.a n = A163063 n

end A163063

/-! ## A163063.P8694706661844706536

`A014739(3*n)+2`
-/

namespace A163063.P8694706661844706536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (3 * n) + 2

end

end A163063.P8694706661844706536

namespace A163063

/-- `A014739(3*n)+2` -/
def P8694706661844706536.Spec : Prop :=
  ∀ n, P8694706661844706536.a n = A163063 n

end A163063

/-! ## A163063.P1801703504821514829

`A080023(3*n+2)`
-/

namespace A163063.P1801703504821514829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (3 * n + 2)

end

end A163063.P1801703504821514829

namespace A163063

/-- `A080023(3*n+2)` -/
def P1801703504821514829.Spec : Prop :=
  ∀ n, P1801703504821514829.a n = A163063 n

end A163063

/-! ## A163063.P7264508930595884533

`A169985(3*n+2)`
-/

namespace A163063.P7264508930595884533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (3 * n + 2)

end

end A163063.P7264508930595884533

namespace A163063

/-- `A169985(3*n+2)` -/
def P7264508930595884533.Spec : Prop :=
  ∀ n, P7264508930595884533.a n = A163063 n

end A163063

/-! ## A163063.P8107488937099441832

`A232965(3*n+2)`
-/

namespace A163063.P8107488937099441832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232965 (3 * n + 2)

end

end A163063.P8107488937099441832

namespace A163063

/-- `A232965(3*n+2)` -/
def P8107488937099441832.Spec : Prop :=
  ∀ n, P8107488937099441832.a n = A163063 n

end A163063

/-! ## A163063.P4361197959613092613

`A302675(3*n+2)`
-/

namespace A163063.P4361197959613092613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302675 (3 * n + 2)

end

end A163063.P4361197959613092613

namespace A163063

/-- `A302675(3*n+2)` -/
def P4361197959613092613.Spec : Prop :=
  ∀ n, P4361197959613092613.a n = A163063 n

end A163063

/-! ## A163063.P8957579410974981444

`A138123(6*n+3)`
-/

namespace A163063.P8957579410974981444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (6 * n + 3)

end

end A163063.P8957579410974981444

namespace A163063

/-- `A138123(6*n+3)` -/
def P8957579410974981444.Spec : Prop :=
  ∀ n, P8957579410974981444.a n = A163063 n

end A163063

/-!
# A163064: a(n) = ((3+sqrt(5))*(4+sqrt(5))^n + (3-sqrt(5))*(4-sqrt(5))^n)/2.

The programs for A163064, the canonical program `A163064.P16938046952969685604` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163064 has offset 0).

The definition of A163064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163064.P16938046952969685604

`8*a(n-1)-11*a(n-2)` with `a(0)=3, a(1)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163064

/-- `8*a(n-1)-11*a(n-2)` -/
def P16938046952969685604.Spec : Prop :=
  ∀ n, P16938046952969685604.a n = A163064 n

theorem P16938046952969685604.correct : P16938046952969685604.Spec := by
  intro n
  simp only [A163064]

end A163064

/-! ## A163064.P3036634390836173842

`ogf((3-7x)/(1-8x+11x^2))`
-/

namespace A163064.P3036634390836173842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -8, 11] n

end

end A163064.P3036634390836173842

namespace A163064

/-- `ogf((3-7x)/(1-8x+11x^2))` -/
def P3036634390836173842.Spec : Prop :=
  ∀ n, P3036634390836173842.a n = A163064 n

end A163064

/-! ## A163064.P5183476854108674088

`Δ[A108404(n)]`
-/

namespace A163064.P5183476854108674088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163064.P5183476854108674088

namespace A163064

/-- `Δ[A108404(n)]` -/
def P5183476854108674088.Spec : Prop :=
  ∀ n, P5183476854108674088.a n = A163064 n

end A163064

/-! ## A163064.P720979806175706721

`Δ[A292466(∑[n+2]-1)]`
-/

namespace A163064.P720979806175706721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163064.P720979806175706721

namespace A163064

/-- `Δ[A292466(∑[n+2]-1)]` -/
def P720979806175706721.Spec : Prop :=
  ∀ n, P720979806175706721.a n = A163064 n

end A163064

/-! ## A163064.P2239494969154029236

`A162772(n)+A108404(n)`
-/

namespace A163064.P2239494969154029236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162772 n + A108404 n

end

end A163064.P2239494969154029236

namespace A163064

/-- `A162772(n)+A108404(n)` -/
def P2239494969154029236.Spec : Prop :=
  ∀ n, P2239494969154029236.a n = A163064 n

end A163064

/-! ## A163064.P15744307900273513705

`A108404(n+1)-A108404(n)`
-/

namespace A163064.P15744307900273513705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108404 (n + 1) - A108404 n

end

end A163064.P15744307900273513705

namespace A163064

/-- `A108404(n+1)-A108404(n)` -/
def P15744307900273513705.Spec : Prop :=
  ∀ n, P15744307900273513705.a n = A163064 n

end A163064

/-! ## A163064.P18034232261201225231

`2*A162772(n)-A162769(n)`
-/

namespace A163064.P18034232261201225231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162772 n - A162769 n

end

end A163064.P18034232261201225231

namespace A163064

/-- `2*A162772(n)-A162769(n)` -/
def P18034232261201225231.Spec : Prop :=
  ∀ n, P18034232261201225231.a n = A163064 n

end A163064

/-! ## A163064.P15987468823234741589

`((3+sqrt(5))*(4+sqrt(5))^n+(3-sqrt(5))*(4-sqrt(5))^n)/2`
-/

namespace A163064.P15987468823234741589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (5 : ℝ)) * (4 + Real.sqrt (5 : ℝ)) ^ n + (3 - Real.sqrt (5 : ℝ)) * (4 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163064.P15987468823234741589

namespace A163064

/-- `((3+sqrt(5))*(4+sqrt(5))^n+(3-sqrt(5))*(4-sqrt(5))^n)/2` -/
def P15987468823234741589.Spec : Prop :=
  ∀ n, P15987468823234741589.a n = (A163064 n : ℝ)

end A163064

/-!
# A163065: a(n) = ((3+sqrt(5))*(5+sqrt(5))^n + (3-sqrt(5))*(5-sqrt(5))^n)/2.

The programs for A163065, the canonical program `A163065.P10231856712595889122` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163065 has offset 0).

The definition of A163065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163065.P10231856712595889122

`10*a(n-1)-20*a(n-2)` with `a(0)=3, a(1)=20`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163065

/-- `10*a(n-1)-20*a(n-2)` -/
def P10231856712595889122.Spec : Prop :=
  ∀ n, P10231856712595889122.a n = A163065 n

theorem P10231856712595889122.correct : P10231856712595889122.Spec := by
  intro n
  simp only [A163065]

end A163065

/-! ## A163065.P8748258416705986480

`((3+sqrt(5))*(5+sqrt(5))^n+(3-sqrt(5))*(5-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163065.P8748258416705986480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (5 : ℝ)) * (5 + Real.sqrt (5 : ℝ)) ^ n + (3 - Real.sqrt (5 : ℝ)) * (5 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163065.P8748258416705986480

namespace A163065

/-- `((3+sqrt(5))*(5+sqrt(5))^n+(3-sqrt(5))*(5-sqrt(5))^n)/2` -/
def P8748258416705986480.Spec : Prop :=
  ∀ n, P8748258416705986480.a n = (A163065 n : ℝ)

end A163065

/-! ## A163065.P13895867846570093765

`ogf((3-10x)/(1-10x+20x^2))`
-/

namespace A163065.P13895867846570093765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10] [1, -10, 20] n

end

end A163065.P13895867846570093765

namespace A163065

/-- `ogf((3-10x)/(1-10x+20x^2))` -/
def P13895867846570093765.Spec : Prop :=
  ∀ n, P13895867846570093765.a n = A163065 n

end A163065

/-! ## A163065.P7205438549597737713

`2^n*A081567(n+1)`
-/

namespace A163065.P7205438549597737713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081567 (n + 1)

end

end A163065.P7205438549597737713

namespace A163065

/-- `2^n*A081567(n+1)` -/
def P7205438549597737713.Spec : Prop :=
  ∀ n, P7205438549597737713.a n = A163065 n

end A163065

/-! ## A163065.P7524761801004508877

`2^(n-1)*A147748(n+2)`
-/

namespace A163065.P7524761801004508877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A147748 (n + 2) : ℚ)

end

end A163065.P7524761801004508877

namespace A163065

/-- `2^(n-1)*A147748(n+2)` -/
def P7524761801004508877.Spec : Prop :=
  ∀ n, P7524761801004508877.a n = (A163065 n : ℚ)

end A163065

/-! ## A163065.P8255617466046172732

`A162773(n)+A090139(n)`
-/

namespace A163065.P8255617466046172732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162773 n + A090139 n

end

end A163065.P8255617466046172732

namespace A163065

/-- `A162773(n)+A090139(n)` -/
def P8255617466046172732.Spec : Prop :=
  ∀ n, P8255617466046172732.a n = A163065 n

end A163065

/-! ## A163065.P5794775585551522940

`Δ[A020876(n)]*A000079(n)`
-/

namespace A163065.P5794775585551522940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A163065.P5794775585551522940

namespace A163065

/-- `Δ[A020876(n)]*A000079(n)` -/
def P5794775585551522940.Spec : Prop :=
  ∀ n, P5794775585551522940.a n = A163065 n

end A163065

/-! ## A163065.P10202426792073983390

`A080878(n+2)*A268100(n)`
-/

namespace A163065.P10202426792073983390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (n + 2) * A268100 n

end

end A163065.P10202426792073983390

namespace A163065

/-- `A080878(n+2)*A268100(n)` -/
def P10202426792073983390.Spec : Prop :=
  ∀ n, P10202426792073983390.a n = A163065 n

end A163065

/-! ## A163065.P4982479836929245138

`A090139(n+1)-2*A090139(n)`
-/

namespace A163065.P4982479836929245138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090139 (n + 1) - 2 * A090139 n

end

end A163065.P4982479836929245138

namespace A163065

/-- `A090139(n+1)-2*A090139(n)` -/
def P4982479836929245138.Spec : Prop :=
  ∀ n, P4982479836929245138.a n = A163065 n

end A163065

/-! ## A163065.P10752909131020343431

`A093145(n+1)+A093123(n+1)/2`
-/

namespace A163065.P10752909131020343431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093145 (n + 1) : ℚ) + (A093123 (n + 1) : ℚ) / 2

end

end A163065.P10752909131020343431

namespace A163065

/-- `A093145(n+1)+A093123(n+1)/2` -/
def P10752909131020343431.Spec : Prop :=
  ∀ n, P10752909131020343431.a n = (A163065 n : ℚ)

end A163065

/-! ## A163065.P13696062560014805275

`A090139(n+1)-A093123(n+1)/2`
-/

namespace A163065.P13696062560014805275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090139 (n + 1) : ℚ) - (A093123 (n + 1) : ℚ) / 2

end

end A163065.P13696062560014805275

namespace A163065

/-- `A090139(n+1)-A093123(n+1)/2` -/
def P13696062560014805275.Spec : Prop :=
  ∀ n, P13696062560014805275.a n = (A163065 n : ℚ)

end A163065

/-! ## A163065.P10555313969160432288

`A093132(n+1)/2-A093145(n+1)`
-/

namespace A163065.P10555313969160432288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093132 (n + 1) : ℚ) / 2 - (A093145 (n + 1) : ℚ)

end

end A163065.P10555313969160432288

namespace A163065

/-- `A093132(n+1)/2-A093145(n+1)` -/
def P10555313969160432288.Spec : Prop :=
  ∀ n, P10555313969160432288.a n = (A163065 n : ℚ)

end A163065

/-! ## A163065.P18391950614876083119

`A016116(2*n)*A178381(2*n+3)`
-/

namespace A163065.P18391950614876083119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A178381 (2 * n + 3)

end

end A163065.P18391950614876083119

namespace A163065

/-- `A016116(2*n)*A178381(2*n+3)` -/
def P18391950614876083119.Spec : Prop :=
  ∀ n, P18391950614876083119.a n = A163065 n

end A163065

/-! ## A163065.P6062210551264446052

`lcm(A128018(n+1)/2, A081567(n+1))`
-/

namespace A163065.P6062210551264446052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A128018 (n + 1) : ℚ) / 2)) (A081567 (n + 1))

end

end A163065.P6062210551264446052

namespace A163065

/-- `lcm(A128018(n+1)/2, A081567(n+1))` -/
def P6062210551264446052.Spec : Prop :=
  ∀ n, (P6062210551264446052.a n : ℤ) = A163065 n

end A163065

/-! ## A163065.P12108856536496254975

`A000079(n)*A178381(A144396(n+1))`
-/

namespace A163065.P12108856536496254975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A178381 (A144396 (n + 1)).toNat

end

end A163065.P12108856536496254975

namespace A163065

/-- `A000079(n)*A178381(A144396(n+1))` -/
def P12108856536496254975.Spec : Prop :=
  ∀ n, P12108856536496254975.a n = A163065 n

end A163065

/-! ## A163065.P14517249960517902056

`A081567(n+1)/A093129(n)*A093123(n)`
-/

namespace A163065.P14517249960517902056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081567 (n + 1) : ℚ) / (A093129 n : ℚ) * (A093123 n : ℚ)

end

end A163065.P14517249960517902056

namespace A163065

/-- `A081567(n+1)/A093129(n)*A093123(n)` -/
def P14517249960517902056.Spec : Prop :=
  ∀ n, P14517249960517902056.a n = (A163065 n : ℚ)

end A163065

/-! ## A163065.P7975092475996813642

`A081567(n+1)+A000225(n)*A081567(n+1)`
-/

namespace A163065.P7975092475996813642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) + A000225 n * A081567 (n + 1)

end

end A163065.P7975092475996813642

namespace A163065

/-- `A081567(n+1)+A000225(n)*A081567(n+1)` -/
def P7975092475996813642.Spec : Prop :=
  ∀ n, P7975092475996813642.a n = A163065 n

end A163065

/-! ## A163065.P5945145443134565667

`(A093131(n+1)+A093129(n+1))*A011782(n+1)`
-/

namespace A163065.P5945145443134565667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093131 (n + 1) + A093129 (n + 1)) * A011782 (n + 1)

end

end A163065.P5945145443134565667

namespace A163065

/-- `(A093131(n+1)+A093129(n+1))*A011782(n+1)` -/
def P5945145443134565667.Spec : Prop :=
  ∀ n, P5945145443134565667.a n = A163065 n

end A163065

/-!
# A163066: a(n) = 12*a(n-1) - 31*a(n-2) for n > 1; a(0) = 2, a(1) = 17.

The programs for A163066, the canonical program `A163066.P6030062631914876076` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163066 has offset 0).

The definition of A163066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-31*a(n-2)` (program `A163066.P6030062631914876076`, by `A163066.P6030062631914876076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163066.P6030062631914876076

`12*a(n-1)-31*a(n-2)` with `a(0)=2, a(1)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163066

/-- `12*a(n-1)-31*a(n-2)` -/
def P6030062631914876076.Spec : Prop :=
  ∀ n, P6030062631914876076.a n = A163066 n

theorem P6030062631914876076.correct : P6030062631914876076.Spec := by
  intro n
  simp only [A163066]

end A163066

/-! ## A163066.P2480622836397651185

`((2+sqrt(5))*(6+sqrt(5))^n+(2-sqrt(5))*(6-sqrt(5))^n)/2`
-/

namespace A163066.P2480622836397651185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) * (6 + Real.sqrt (5 : ℝ)) ^ n + (2 - Real.sqrt (5 : ℝ)) * (6 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163066.P2480622836397651185

namespace A163066

/-- `((2+sqrt(5))*(6+sqrt(5))^n+(2-sqrt(5))*(6-sqrt(5))^n)/2` -/
def P2480622836397651185.Spec : Prop :=
  ∀ n, P2480622836397651185.a n = (A163066 n : ℝ)

end A163066

/-! ## A163066.P9375479944622519488

`A163146(n)+A152107(n)`
-/

namespace A163066.P9375479944622519488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163146 n + A152107 n

end

end A163066.P9375479944622519488

namespace A163066

/-- `A163146(n)+A152107(n)` -/
def P9375479944622519488.Spec : Prop :=
  ∀ n, P9375479944622519488.a n = A163066 n

end A163066

/-! ## A163066.P9375311501972354805

`Δ[A163306(n)/2]-A152107(n)`
-/

namespace A163066.P9375311501972354805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163306 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A152107 n : ℚ)

end

end A163066.P9375311501972354805

namespace A163066

/-- `Δ[A163306(n)/2]-A152107(n)` -/
def P9375311501972354805.Spec : Prop :=
  ∀ n, P9375311501972354805.a n = (A163066 n : ℚ)

end A163066

/-! ## A163066.P2709682658012732100

`A152107(n)+A152107(n+1)-5*A152107(n)`
-/

namespace A163066.P2709682658012732100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152107 n + (A152107 (n + 1) - 5 * A152107 n)

end

end A163066.P2709682658012732100

namespace A163066

/-- `A152107(n)+A152107(n+1)-5*A152107(n)` -/
def P2709682658012732100.Spec : Prop :=
  ∀ n, P2709682658012732100.a n = A163066 n

end A163066

/-!
# A163067: a(n) = 14*a(n-1) - 44*a(n-2) for n > 1; a(0) = 2, a(1) = 19.

The programs for A163067, the canonical program `A163067.P8064981868204016591` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163067 has offset 0).

The definition of A163067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-44*a(n-2)` (program `A163067.P8064981868204016591`, by `A163067.P8064981868204016591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163067.P8064981868204016591

`14*a(n-1)-44*a(n-2)` with `a(0)=2, a(1)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163067

/-- `14*a(n-1)-44*a(n-2)` -/
def P8064981868204016591.Spec : Prop :=
  ∀ n, P8064981868204016591.a n = A163067 n

theorem P8064981868204016591.correct : P8064981868204016591.Spec := by
  intro n
  simp only [A163067]

end A163067

/-! ## A163067.P13921100841515373776

`((2+sqrt(5))*(7+sqrt(5))^n+(2-sqrt(5))*(7-sqrt(5))^n)/2`
-/

namespace A163067.P13921100841515373776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) * (7 + Real.sqrt (5 : ℝ)) ^ n + (2 - Real.sqrt (5 : ℝ)) * (7 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163067.P13921100841515373776

namespace A163067

/-- `((2+sqrt(5))*(7+sqrt(5))^n+(2-sqrt(5))*(7-sqrt(5))^n)/2` -/
def P13921100841515373776.Spec : Prop :=
  ∀ n, P13921100841515373776.a n = (A163067 n : ℝ)

end A163067

/-! ## A163067.P1905673455165688468

`A163147(n)+A152108(n)`
-/

namespace A163067.P1905673455165688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163147 n + A152108 n

end

end A163067.P1905673455165688468

namespace A163067

/-- `A163147(n)+A152108(n)` -/
def P1905673455165688468.Spec : Prop :=
  ∀ n, P1905673455165688468.a n = A163067 n

end A163067

/-! ## A163067.P17276048884710854323

`A163147(A056143(n))+((sqrt(5)+7)^n+(7-sqrt(5))^n)/2`
-/

namespace A163067.P17276048884710854323
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163147 (A056143 n).toNat : ℝ) + ((Real.sqrt (5 : ℝ) + 7) ^ n + (7 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163067.P17276048884710854323

namespace A163067

/-- `A163147(A056143(n))+((sqrt(5)+7)^n+(7-sqrt(5))^n)/2` -/
def P17276048884710854323.Spec : Prop :=
  ∀ n, P17276048884710854323.a n = (A163067 n : ℝ)

end A163067

/-!
# A163068: a(n) = 16*a(n-1) - 59*a(n-2) for n > 1; a(0) = 2, a(1) = 21.

The programs for A163068, the canonical program `A163068.P4481308310900114138` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163068 has offset 0).

The definition of A163068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-59*a(n-2)` (program `A163068.P4481308310900114138`, by `A163068.P4481308310900114138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163068.P4481308310900114138

`16*a(n-1)-59*a(n-2)` with `a(0)=2, a(1)=21`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163068

/-- `16*a(n-1)-59*a(n-2)` -/
def P4481308310900114138.Spec : Prop :=
  ∀ n, P4481308310900114138.a n = A163068 n

theorem P4481308310900114138.correct : P4481308310900114138.Spec := by
  intro n
  simp only [A163068]

end A163068

/-! ## A163068.P16729739061273386767

`((2+sqrt(5))*(8+sqrt(5))^n+(2-sqrt(5))*(8-sqrt(5))^n)/2`
-/

namespace A163068.P16729739061273386767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) * (8 + Real.sqrt (5 : ℝ)) ^ n + (2 - Real.sqrt (5 : ℝ)) * (8 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163068.P16729739061273386767

namespace A163068

/-- `((2+sqrt(5))*(8+sqrt(5))^n+(2-sqrt(5))*(8-sqrt(5))^n)/2` -/
def P16729739061273386767.Spec : Prop :=
  ∀ n, P16729739061273386767.a n = (A163068 n : ℝ)

end A163068

/-! ## A163068.P6245772580064060620

`A163148(n)+A152109(n)`
-/

namespace A163068.P6245772580064060620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163148 n + A152109 n

end

end A163068.P6245772580064060620

namespace A163068

/-- `A163148(n)+A152109(n)` -/
def P6245772580064060620.Spec : Prop :=
  ∀ n, P6245772580064060620.a n = A163068 n

end A163068

/-!
# A163069: a(n) = ((4+sqrt(5))*(1+sqrt(5))^n + (4-sqrt(5))*(1-sqrt(5))^n)/2.

The programs for A163069, the canonical program `A163069.P4679564003503012842` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163069 has offset 0).

The definition of A163069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163069.P4679564003503012842

`2*a(n-1)+4*a(n-2)` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163069

/-- `2*a(n-1)+4*a(n-2)` -/
def P4679564003503012842.Spec : Prop :=
  ∀ n, (P4679564003503012842.a n : ℤ) = A163069 n

theorem P4679564003503012842.correct : P4679564003503012842.Spec := by
  intro n
  simp only [A163069]

end A163069

/-! ## A163069.P18089914709676791306

`ogf((4+x)/(1-2x-4x^2))`
-/

namespace A163069.P18089914709676791306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -2, -4] n

end

end A163069.P18089914709676791306

namespace A163069

/-- `ogf((4+x)/(1-2x-4x^2))` -/
def P18089914709676791306.Spec : Prop :=
  ∀ n, P18089914709676791306.a n = A163069 n

end A163069

/-! ## A163069.P8053080681103301026

`2*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=4, a(1)=9`
-/

namespace A163069.P8053080681103301026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A163069.P8053080681103301026

namespace A163069

/-- `2*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P8053080681103301026.Spec : Prop :=
  ∀ n, P8053080681103301026.a n = A163069 n

end A163069

/-! ## A163069.P9626500221608920119

`2^(n-1)*A022098(n+1)`
-/

namespace A163069.P9626500221608920119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A022098 (n + 1) : ℚ)

end

end A163069.P9626500221608920119

namespace A163069

/-- `2^(n-1)*A022098(n+1)` -/
def P9626500221608920119.Spec : Prop :=
  ∀ n, P9626500221608920119.a n = (A163069 n : ℚ)

end A163069

/-! ## A163069.P4572172709049525668

`2^(n-2)*A022370(n+1)`
-/

namespace A163069.P4572172709049525668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A022370 (n + 1) : ℚ)

end

end A163069.P4572172709049525668

namespace A163069

/-- `2^(n-2)*A022370(n+1)` -/
def P4572172709049525668.Spec : Prop :=
  ∀ n, P4572172709049525668.a n = (A163069 n : ℚ)

end A163069

/-! ## A163069.P17455059427056816850

`A163062(n)+A084057(n)`
-/

namespace A163069.P17455059427056816850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163062 n + A084057 n

end

end A163069.P17455059427056816850

namespace A163069

/-- `A163062(n)+A084057(n)` -/
def P17455059427056816850.Spec : Prop :=
  ∀ n, P17455059427056816850.a n = A163069 n

end A163069

/-! ## A163069.P15010490758727367511

`A162770(n)+A087131(n)`
-/

namespace A163069.P15010490758727367511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162770 n + A087131 n

end

end A163069.P15010490758727367511

namespace A163069

/-- `A162770(n)+A087131(n)` -/
def P15010490758727367511.Spec : Prop :=
  ∀ n, P15010490758727367511.a n = A163069 n

end A163069

/-! ## A163069.P18227398386202118570

`A209084(n+1)+A085449(n)`
-/

namespace A163069.P18227398386202118570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209084 (n + 1) + A085449 n

end

end A163069.P18227398386202118570

namespace A163069

/-- `A209084(n+1)+A085449(n)` -/
def P18227398386202118570.Spec : Prop :=
  ∀ n, P18227398386202118570.a n = A163069 n

end A163069

/-! ## A163069.P18416595212566673451

`A319196(n)+A063782(n+1)`
-/

namespace A163069.P18416595212566673451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 n + A063782 (n + 1)

end

end A163069.P18416595212566673451

namespace A163069

/-- `A319196(n)+A063782(n+1)` -/
def P18416595212566673451.Spec : Prop :=
  ∀ n, P18416595212566673451.a n = A163069 n

end A163069

/-! ## A163069.P12105536041451453415

`A163062(n)+A203579(n)-1`
-/

namespace A163069.P12105536041451453415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163062 n + (A203579 n - 1)

end

end A163069.P12105536041451453415

namespace A163069

/-- `A163062(n)+A203579(n)-1` -/
def P12105536041451453415.Spec : Prop :=
  ∀ n, P12105536041451453415.a n = A163069 n

end A163069

/-! ## A163069.P949460763960637584

`A162770(n)+2*A084057(n)`
-/

namespace A163069.P949460763960637584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162770 n + 2 * A084057 n

end

end A163069.P949460763960637584

namespace A163069

/-- `A162770(n)+2*A084057(n)` -/
def P949460763960637584.Spec : Prop :=
  ∀ n, P949460763960637584.a n = A163069 n

end A163069

/-! ## A163069.P11812971758618034352

`A085449(n)+4*A063727(n)`
-/

namespace A163069.P11812971758618034352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n + 4 * A063727 n

end

end A163069.P11812971758618034352

namespace A163069

/-- `A085449(n)+4*A063727(n)` -/
def P11812971758618034352.Spec : Prop :=
  ∀ n, P11812971758618034352.a n = A163069 n

end A163069

/-! ## A163069.P2761744149788519421

`A163305(n+1)+2*A087131(n)`
-/

namespace A163069.P2761744149788519421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163305 (n + 1) + 2 * A087131 n

end

end A163069.P2761744149788519421

namespace A163069

/-- `A163305(n+1)+2*A087131(n)` -/
def P2761744149788519421.Spec : Prop :=
  ∀ n, P2761744149788519421.a n = A163069 n

end A163069

/-! ## A163069.P17621172985396870513

`A084057(n+1)+3*A084057(n)`
-/

namespace A163069.P17621172985396870513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (n + 1) + 3 * A084057 n

end

end A163069.P17621172985396870513

namespace A163069

/-- `A084057(n+1)+3*A084057(n)` -/
def P17621172985396870513.Spec : Prop :=
  ∀ n, P17621172985396870513.a n = A163069 n

end A163069

/-! ## A163069.P15892660794159367053

`A163062(n)+2^(n-1)*A000032(n)`
-/

namespace A163069.P15892660794159367053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163062 n : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

end

end A163069.P15892660794159367053

namespace A163069

/-- `A163062(n)+2^(n-1)*A000032(n)` -/
def P15892660794159367053.Spec : Prop :=
  ∀ n, P15892660794159367053.a n = (A163069 n : ℚ)

end A163069

/-! ## A163069.P18258015864856964434

`A163062(n)+Δ[2^(n-1)*A000045(n)]`
-/

namespace A163069.P18258015864856964434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163062 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A163069.P18258015864856964434

namespace A163069

/-- `A163062(n)+Δ[2^(n-1)*A000045(n)]` -/
def P18258015864856964434.Spec : Prop :=
  ∀ n, P18258015864856964434.a n = (A163069 n : ℚ)

end A163069

/-! ## A163069.P1418445312361850581

`A163062(n)+Δ[A000045(n)*A131577(n)]`
-/

namespace A163069.P1418445312361850581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163062 n + (f1 (n + 1) - f1 n)

end

end A163069.P1418445312361850581

namespace A163069

/-- `A163062(n)+Δ[A000045(n)*A131577(n)]` -/
def P1418445312361850581.Spec : Prop :=
  ∀ n, P1418445312361850581.a n = A163069 n

end A163069

/-! ## A163069.P17002661113349684573

`A084057(n+1)+A087131(n)+A084057(n)`
-/

namespace A163069.P17002661113349684573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (n + 1) + (A087131 n + A084057 n)

end

end A163069.P17002661113349684573

namespace A163069

/-- `A084057(n+1)+A087131(n)+A084057(n)` -/
def P17002661113349684573.Spec : Prop :=
  ∀ n, P17002661113349684573.a n = A163069 n

end A163069

/-! ## A163069.P4455666896262342858

`A063727(n+1)+A319196(n)+A063727(n)`
-/

namespace A163069.P4455666896262342858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 (n + 1) + (A319196 n + A063727 n)

end

end A163069.P4455666896262342858

namespace A163069

/-- `A063727(n+1)+A319196(n)+A063727(n)` -/
def P4455666896262342858.Spec : Prop :=
  ∀ n, P4455666896262342858.a n = A163069 n

end A163069

/-! ## A163069.P2042369350494092084

`A103435(n+1)+A103435(n+1)+A085449(n)`
-/

namespace A163069.P2042369350494092084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 (n + 1) + (A103435 (n + 1) + A085449 n)

end

end A163069.P2042369350494092084

namespace A163069

/-- `A103435(n+1)+A103435(n+1)+A085449(n)` -/
def P2042369350494092084.Spec : Prop :=
  ∀ n, P2042369350494092084.a n = A163069 n

end A163069

/-!
# A163070: a(n) = ((4+sqrt(5))*(2+sqrt(5))^n + (4-sqrt(5))*(2-sqrt(5))^n)/2.

The programs for A163070, the canonical program `A163070.P3424793719191467426` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163070 has offset 0).

The definition of A163070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163070.P3424793719191467426

`4*a(n-1)+a(n-2)` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163070

/-- `4*a(n-1)+a(n-2)` -/
def P3424793719191467426.Spec : Prop :=
  ∀ n, (P3424793719191467426.a n : ℤ) = A163070 n

theorem P3424793719191467426.correct : P3424793719191467426.Spec := by
  intro n
  simp only [A163070]

end A163070

/-! ## A163070.P17290134252727569020

`2*A014448(n)+5*A001076(n)`
-/

namespace A163070.P17290134252727569020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014448 n + 5 * A001076 n

end

end A163070.P17290134252727569020

namespace A163070

/-- `2*A014448(n)+5*A001076(n)` -/
def P17290134252727569020.Spec : Prop :=
  ∀ n, P17290134252727569020.a n = A163070 n

end A163070

/-! ## A163070.P13725639362419373105

`ogf((-4+3x)/(-1+4x+x^2))`
-/

namespace A163070.P13725639362419373105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -4, -1] n

end

end A163070.P13725639362419373105

namespace A163070

/-- `ogf((-4+3x)/(-1+4x+x^2))` -/
def P13725639362419373105.Spec : Prop :=
  ∀ n, P13725639362419373105.a n = A163070 n

end A163070

/-! ## A163070.P6938679121310668671

`round(ϕ^(3*n)/2)+or(1, floor(ϕ^(2*n+n+2)))`
-/

namespace A163070.P6938679121310668671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n) / 2) + Int.lor 1 ⌊Real.goldenRatio ^ (2 * n + (n + 2))⌋

end

end A163070.P6938679121310668671

namespace A163070

/-- `round(ϕ^(3*n)/2)+or(1, floor(ϕ^(2*n+n+2)))` -/
def P6938679121310668671.Spec : Prop :=
  ∀ n, P6938679121310668671.a n = A163070 n

end A163070

/-! ## A163070.P1519234126536598982

`((4+sqrt(5))*(2+sqrt(5))^n+(4-sqrt(5))*(2-sqrt(5))^n)/2`
-/

namespace A163070.P1519234126536598982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (5 : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ n + (4 - Real.sqrt (5 : ℝ)) * (2 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163070.P1519234126536598982

namespace A163070

/-- `((4+sqrt(5))*(2+sqrt(5))^n+(4-sqrt(5))*(2-sqrt(5))^n)/2` -/
def P1519234126536598982.Spec : Prop :=
  ∀ n, P1519234126536598982.a n = (A163070 n : ℝ)

end A163070

/-! ## A163070.P10776071797269365307

`A163063(n)+A001077(n)`
-/

namespace A163070.P10776071797269365307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163063 n + A001077 n

end

end A163070.P10776071797269365307

namespace A163070

/-- `A163063(n)+A001077(n)` -/
def P10776071797269365307.Spec : Prop :=
  ∀ n, P10776071797269365307.a n = A163070 n

end A163070

/-! ## A163070.P11562983461471371259

`Δ[A048875(n)]-A048875(n)`
-/

namespace A163070.P11562983461471371259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048875 n

end

end A163070.P11562983461471371259

namespace A163070

/-- `Δ[A048875(n)]-A048875(n)` -/
def P11562983461471371259.Spec : Prop :=
  ∀ n, P11562983461471371259.a n = A163070 n

end A163070

/-! ## A163070.P12189483247605701123

`A014448(n)+A001077(n+1)`
-/

namespace A163070.P12189483247605701123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n + A001077 (n + 1)

end

end A163070.P12189483247605701123

namespace A163070

/-- `A014448(n)+A001077(n+1)` -/
def P12189483247605701123.Spec : Prop :=
  ∀ n, P12189483247605701123.a n = A163070 n

end A163070

/-! ## A163070.P1739110847432747540

`A015448(n+2)-A048877(n)`
-/

namespace A163070.P1739110847432747540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 2) - A048877 n

end

end A163070.P1739110847432747540

namespace A163070

/-- `A015448(n+2)-A048877(n)` -/
def P1739110847432747540.Spec : Prop :=
  ∀ n, P1739110847432747540.a n = A163070 n

end A163070

/-! ## A163070.P12011225799428230109

`A097924(n)+2*A033887(n)`
-/

namespace A163070.P12011225799428230109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n + 2 * A033887 n

end

end A163070.P12011225799428230109

namespace A163070

/-- `A097924(n)+2*A033887(n)` -/
def P12011225799428230109.Spec : Prop :=
  ∀ n, P12011225799428230109.a n = A163070 n

end A163070

/-! ## A163070.P14553506287279349803

`2*A097924(n)-A001076(n)`
-/

namespace A163070.P14553506287279349803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097924 n - A001076 n

end

end A163070.P14553506287279349803

namespace A163070

/-- `2*A097924(n)-A001076(n)` -/
def P14553506287279349803.Spec : Prop :=
  ∀ n, P14553506287279349803.a n = A163070 n

end A163070

/-! ## A163070.P11672814254801495716

`A163063(n)+A014448(n)/2`
-/

namespace A163070.P11672814254801495716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163063 n : ℚ) + (A014448 n : ℚ) / 2

end

end A163070.P11672814254801495716

namespace A163070

/-- `A163063(n)+A014448(n)/2` -/
def P11672814254801495716.Spec : Prop :=
  ∀ n, P11672814254801495716.a n = (A163070 n : ℚ)

end A163070

/-! ## A163070.P2924673639493105905

`A001077(n+1)+2*A001077(n)`
-/

namespace A163070.P2924673639493105905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) + 2 * A001077 n

end

end A163070.P2924673639493105905

namespace A163070

/-- `A001077(n+1)+2*A001077(n)` -/
def P2924673639493105905.Spec : Prop :=
  ∀ n, P2924673639493105905.a n = A163070 n

end A163070

/-! ## A163070.P13182530783337372012

`A048875(n+1)-2*A048875(n)`
-/

namespace A163070.P13182530783337372012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 (n + 1) - 2 * A048875 n

end

end A163070.P13182530783337372012

namespace A163070

/-- `A048875(n+1)-2*A048875(n)` -/
def P13182530783337372012.Spec : Prop :=
  ∀ n, P13182530783337372012.a n = A163070 n

end A163070

/-! ## A163070.P8449038652624972887

`A013655(3*n)+A001060(3*n)/2`
-/

namespace A163070.P8449038652624972887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013655 (3 * n) : ℚ) + (A001060 (3 * n) : ℚ) / 2

end

end A163070.P8449038652624972887

namespace A163070

/-- `A013655(3*n)+A001060(3*n)/2` -/
def P8449038652624972887.Spec : Prop :=
  ∀ n, P8449038652624972887.a n = (A163070 n : ℚ)

end A163070

/-! ## A163070.P7670338309972652512

`Δ[A173714(3*n)]+A000032(3*n)/2`
-/

namespace A163070.P7670338309972652512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A000032 (3 * n) : ℚ) / 2

end

end A163070.P7670338309972652512

namespace A163070

/-- `Δ[A173714(3*n)]+A000032(3*n)/2` -/
def P7670338309972652512.Spec : Prop :=
  ∀ n, P7670338309972652512.a n = (A163070 n : ℚ)

end A163070

/-! ## A163070.P9683048120005661953

`A134016(2*(n+1))-A134016(2*n+1)`
-/

namespace A163070.P9683048120005661953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134016 (2 * (n + 1)) - A134016 (2 * n + 1)

end

end A163070.P9683048120005661953

namespace A163070

/-- `A134016(2*(n+1))-A134016(2*n+1)` -/
def P9683048120005661953.Spec : Prop :=
  ∀ n, P9683048120005661953.a n = A163070 n

end A163070

/-! ## A163070.P3488242320300983365

`A000032(3*n)/2+Δ[A000032(2*n+1+n)]/2`
-/

namespace A163070.P3488242320300983365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * n) : ℚ) / 2 + (f1 (n + 1) - f1 n : ℚ) / 2

end

end A163070.P3488242320300983365

namespace A163070

/-- `A000032(3*n)/2+Δ[A000032(2*n+1+n)]/2` -/
def P3488242320300983365.Spec : Prop :=
  ∀ n, P3488242320300983365.a n = (A163070 n : ℚ)

end A163070

/-! ## A163070.P7311663222475624488

`A014445(n+1)+A014448(n)+A001076(n)`
-/

namespace A163070.P7311663222475624488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (n + 1) + (A014448 n + A001076 n)

end

end A163070.P7311663222475624488

namespace A163070

/-- `A014445(n+1)+A014448(n)+A001076(n)` -/
def P7311663222475624488.Spec : Prop :=
  ∀ n, P7311663222475624488.a n = A163070 n

end A163070

/-! ## A163070.P10552202350353531774

`A015448(n+1)+A097924(n)+A015448(n)`
-/

namespace A163070.P10552202350353531774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + (A097924 n + A015448 n)

end

end A163070.P10552202350353531774

namespace A163070

/-- `A015448(n+1)+A097924(n)+A015448(n)` -/
def P10552202350353531774.Spec : Prop :=
  ∀ n, P10552202350353531774.a n = A163070 n

end A163070

/-!
# A163071: a(n) = ((4+sqrt(5))*(3+sqrt(5))^n + (4-sqrt(5))*(3-sqrt(5))^n)/2.

The programs for A163071, the canonical program `A163071.P4994883776337802486` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163071 has offset 0).

The definition of A163071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163071.P4994883776337802486

`6*a(n-1)-4*a(n-2)` with `a(0)=4, a(1)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163071

/-- `6*a(n-1)-4*a(n-2)` -/
def P4994883776337802486.Spec : Prop :=
  ∀ n, P4994883776337802486.a n = A163071 n

theorem P4994883776337802486.correct : P4994883776337802486.Spec := by
  intro n
  simp only [A163071]

end A163071

/-! ## A163071.P10449354929090294985

`ogf((4-7x)/(1-6x+4x^2))`
-/

namespace A163071.P10449354929090294985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7] [1, -6, 4] n

end

end A163071.P10449354929090294985

namespace A163071

/-- `ogf((4-7x)/(1-6x+4x^2))` -/
def P10449354929090294985.Spec : Prop :=
  ∀ n, P10449354929090294985.a n = A163071 n

end A163071

/-! ## A163071.P4537540150192776180

`A098648(n+1)+A098648(n)`
-/

namespace A163071.P4537540150192776180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 (n + 1) + A098648 n

end

end A163071.P4537540150192776180

namespace A163071

/-- `A098648(n+1)+A098648(n)` -/
def P4537540150192776180.Spec : Prop :=
  ∀ n, P4537540150192776180.a n = A163071 n

end A163071

/-! ## A163071.P12071140221198919807

`5*A082761(n)-A098648(n)`
-/

namespace A163071.P12071140221198919807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A082761 n - A098648 n

end

end A163071.P12071140221198919807

namespace A163071

/-- `5*A082761(n)-A098648(n)` -/
def P12071140221198919807.Spec : Prop :=
  ∀ n, P12071140221198919807.a n = A163071 n

end A163071

/-! ## A163071.P1476777994821848022

`A228842(n)+Δ[A228842(n)/2]`
-/

namespace A163071.P1476777994821848022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228842 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228842 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A163071.P1476777994821848022

namespace A163071

/-- `A228842(n)+Δ[A228842(n)/2]` -/
def P1476777994821848022.Spec : Prop :=
  ∀ n, P1476777994821848022.a n = (A163071 n : ℚ)

end A163071

/-! ## A163071.P10480105038613645008

`A080878(2*(n+1))+A080878(2*n)`
-/

namespace A163071.P10480105038613645008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * (n + 1)) + A080878 (2 * n)

end

end A163071.P10480105038613645008

namespace A163071

/-- `A080878(2*(n+1))+A080878(2*n)` -/
def P10480105038613645008.Spec : Prop :=
  ∀ n, P10480105038613645008.a n = A163071 n

end A163071

/-! ## A163071.P3506517990039769740

`A080877(2*n+1)+A080877(2*n+3)`
-/

namespace A163071.P3506517990039769740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080877 (2 * n + 1) + A080877 (2 * n + 3)

end

end A163071.P3506517990039769740

namespace A163071

/-- `A080877(2*n+1)+A080877(2*n+3)` -/
def P3506517990039769740.Spec : Prop :=
  ∀ n, P3506517990039769740.a n = A163071 n

end A163071

/-! ## A163071.P830539126246322479

`((4+sqrt(5))*(3+sqrt(5))^n+(4-sqrt(5))*(3-sqrt(5))^n)/2`
-/

namespace A163071.P830539126246322479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (5 : ℝ)) * (3 + Real.sqrt (5 : ℝ)) ^ n + (4 - Real.sqrt (5 : ℝ)) * (3 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163071.P830539126246322479

namespace A163071

/-- `((4+sqrt(5))*(3+sqrt(5))^n+(4-sqrt(5))*(3-sqrt(5))^n)/2` -/
def P830539126246322479.Spec : Prop :=
  ∀ n, P830539126246322479.a n = (A163071 n : ℝ)

end A163071

/-!
# A163072: a(n) = ((4+sqrt(5))*(5+sqrt(5))^n + (4-sqrt(5))*(5-sqrt(5))^n)/2.

The programs for A163072, the canonical program `A163072.P10524958291922076955` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163072 has offset 0).

The definition of A163072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163072.P10524958291922076955

`10*a(n-1)-20*a(n-2)` with `a(0)=4, a(1)=25`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163072

/-- `10*a(n-1)-20*a(n-2)` -/
def P10524958291922076955.Spec : Prop :=
  ∀ n, P10524958291922076955.a n = A163072 n

theorem P10524958291922076955.correct : P10524958291922076955.Spec := by
  intro n
  simp only [A163072]

end A163072

/-! ## A163072.P6261636066890648894

`((4+sqrt(5))*(5+sqrt(5))^n+(4-sqrt(5))*(5-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163072.P6261636066890648894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (5 : ℝ)) * (5 + Real.sqrt (5 : ℝ)) ^ n + (4 - Real.sqrt (5 : ℝ)) * (5 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163072.P6261636066890648894

namespace A163072

/-- `((4+sqrt(5))*(5+sqrt(5))^n+(4-sqrt(5))*(5-sqrt(5))^n)/2` -/
def P6261636066890648894.Spec : Prop :=
  ∀ n, P6261636066890648894.a n = (A163072 n : ℝ)

end A163072

/-! ## A163072.P2862419288856329820

`ogf((4-15x)/(1-10x+20x^2))`
-/

namespace A163072.P2862419288856329820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -15] [1, -10, 20] n

end

end A163072.P2862419288856329820

namespace A163072

/-- `ogf((4-15x)/(1-10x+20x^2))` -/
def P2862419288856329820.Spec : Prop :=
  ∀ n, P2862419288856329820.a n = A163072 n

end A163072

/-! ## A163072.P4387730594043800076

`Δ[A090139(n)]`
-/

namespace A163072.P4387730594043800076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163072.P4387730594043800076

namespace A163072

/-- `Δ[A090139(n)]` -/
def P4387730594043800076.Spec : Prop :=
  ∀ n, P4387730594043800076.a n = A163072 n

end A163072

/-! ## A163072.P2405270574836556068

`A163065(n)+A090139(n)`
-/

namespace A163072.P2405270574836556068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163065 n + A090139 n

end

end A163072.P2405270574836556068

namespace A163072

/-- `A163065(n)+A090139(n)` -/
def P2405270574836556068.Spec : Prop :=
  ∀ n, P2405270574836556068.a n = A163072 n

end A163072

/-! ## A163072.P10197586062530707627

`A090139(n+1)-A090139(n)`
-/

namespace A163072.P10197586062530707627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090139 (n + 1) - A090139 n

end

end A163072.P10197586062530707627

namespace A163072

/-- `A090139(n+1)-A090139(n)` -/
def P10197586062530707627.Spec : Prop :=
  ∀ n, P10197586062530707627.a n = A163072 n

end A163072

/-! ## A163072.P9310313249630139982

`A162773(n)+2*A090139(n)`
-/

namespace A163072.P9310313249630139982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162773 n + 2 * A090139 n

end

end A163072.P9310313249630139982

namespace A163072

/-- `A162773(n)+2*A090139(n)` -/
def P9310313249630139982.Spec : Prop :=
  ∀ n, P9310313249630139982.a n = A163072 n

end A163072

/-! ## A163072.P9882763646036169052

`2*A163065(n)-A162773(n)`
-/

namespace A163072.P9882763646036169052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163065 n - A162773 n

end

end A163072.P9882763646036169052

namespace A163072

/-- `2*A163065(n)-A162773(n)` -/
def P9882763646036169052.Spec : Prop :=
  ∀ n, P9882763646036169052.a n = A163072 n

end A163072

/-! ## A163072.P16569347487362642296

`Δ[A000079(n)/2*A020876(n)]`
-/

namespace A163072.P16569347487362642296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A020876 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163072.P16569347487362642296

namespace A163072

/-- `Δ[A000079(n)/2*A020876(n)]` -/
def P16569347487362642296.Spec : Prop :=
  ∀ n, P16569347487362642296.a n = (A163072 n : ℚ)

end A163072

/-! ## A163072.P5470300356338971436

`Δ[A163065(n)-A162773(n)]`
-/

namespace A163072.P5470300356338971436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163065 n - A162773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163072.P5470300356338971436

namespace A163072

/-- `Δ[A163065(n)-A162773(n)]` -/
def P5470300356338971436.Spec : Prop :=
  ∀ n, P5470300356338971436.a n = A163072 n

end A163072

/-!
# A163073: a(n) = ((5+sqrt(5))*(4+sqrt(5))^n + (5-sqrt(5))*(4-sqrt(5))^n)/10.

The programs for A163073, the canonical program `A163073.P7998032801050685580` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163073 has offset 0).

The definition of A163073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163073.P7998032801050685580

`8*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163073

/-- `8*a(n-1)-11*a(n-2)` -/
def P7998032801050685580.Spec : Prop :=
  ∀ n, P7998032801050685580.a n = A163073 n

theorem P7998032801050685580.correct : P7998032801050685580.Spec := by
  intro n
  simp only [A163073]

end A163073

/-! ## A163073.P5727098075234814393

`((5+sqrt(5))*(4+sqrt(5))^n+(5-sqrt(5))*(4-sqrt(5))^n)/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163073.P5727098075234814393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) * (4 + Real.sqrt (5 : ℝ)) ^ n + (5 - Real.sqrt (5 : ℝ)) * (4 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A163073.P5727098075234814393

namespace A163073

/-- `((5+sqrt(5))*(4+sqrt(5))^n+(5-sqrt(5))*(4-sqrt(5))^n)/10` -/
def P5727098075234814393.Spec : Prop :=
  ∀ n, P5727098075234814393.a n = (A163073 n : ℝ)

end A163073

/-! ## A163073.P15759782687802634626

`ogf((1-3x)/(1-8x+11x^2))`
-/

namespace A163073.P15759782687802634626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -8, 11] n

end

end A163073.P15759782687802634626

namespace A163073

/-- `ogf((1-3x)/(1-8x+11x^2))` -/
def P15759782687802634626.Spec : Prop :=
  ∀ n, P15759782687802634626.a n = A163073 n

end A163073

/-! ## A163073.P10656054532296837419

`A108404(n)+A091870(n)`
-/

namespace A163073.P10656054532296837419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108404 n + A091870 n

end

end A163073.P10656054532296837419

namespace A163073

/-- `A108404(n)+A091870(n)` -/
def P10656054532296837419.Spec : Prop :=
  ∀ n, P10656054532296837419.a n = A163073 n

end A163073

/-! ## A163073.P11316203131044282614

`A292466(∑[n]+n)+A108404(n)`
-/

namespace A163073.P11316203131044282614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A108404 n

end

end A163073.P11316203131044282614

namespace A163073

/-- `A292466(∑[n]+n)+A108404(n)` -/
def P11316203131044282614.Spec : Prop :=
  ∀ n, P11316203131044282614.a n = A163073 n

end A163073

/-! ## A163073.P4245150754012751749

`A292466(A034856(n+1))+A091870(n)`
-/

namespace A163073.P4245150754012751749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (A034856 (n + 1)).toNat + A091870 n

end

end A163073.P4245150754012751749

namespace A163073

/-- `A292466(A034856(n+1))+A091870(n)` -/
def P4245150754012751749.Spec : Prop :=
  ∀ n, P4245150754012751749.a n = A163073 n

end A163073

/-! ## A163073.P2852891174535364197

`A108404(n)-A057428(n)*A091870(n)`
-/

namespace A163073.P2852891174535364197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108404 n - A057428 n * A091870 n

end

end A163073.P2852891174535364197

namespace A163073

/-- `A108404(n)-A057428(n)*A091870(n)` -/
def P2852891174535364197.Spec : Prop :=
  ∀ n, P2852891174535364197.a n = A163073 n

end A163073

/-!
# A163075: Primes of the form k$ + 1. Here '$' denotes the swinging factorial function (A056040).

The programs for A163075, there is no canonical definition to state claims against.
-/

/-! ## A163075.P3942200948545351028

`record[A020639(A056040(n)+1)]`
-/

namespace A163075.P3942200948545351028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056040 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163075.P3942200948545351028

/-! ## A163075.P9706312844418248890

`record[A020639(A182073(n)+1)]`
-/

namespace A163075.P9706312844418248890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A182073 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163075.P9706312844418248890

/-! ## A163075.P1428477358533844416

`record[A006530(record[A046521(n)+1])]`
-/

namespace A163075.P1428477358533844416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163075.P1428477358533844416

/-! ## A163075.P1032798692109432349

`record[A020639(A056042(n+1)+1)]`
-/

namespace A163075.P1032798692109432349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056042 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163075.P1032798692109432349

/-!
# A163076: Primes of the form k$ - 1. Here '$' denotes the swinging factorial function (A056040).

The programs for A163076, there is no canonical definition to state claims against.
-/

/-! ## A163076.P10946658715786848691

`p?[∪[A000984(n), A002457(n)]-1]`
-/

namespace A163076.P10946658715786848691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163076.P10946658715786848691

/-! ## A163076.P5640187633634804024

`A163074(lt[A000129(n+1), A286436(3*(n+1))])`
-/

namespace A163076.P5640187633634804024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286436 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163076.P5640187633634804024

/-!
# A163077: Numbers k such that k$ + 1 is prime. Here '$' denotes the swinging factorial function (A056040).

The programs for A163077, there is no canonical definition to state claims against.
-/

/-! ## A163077.P1102616560498894207

`lt[A187633(n+2), A082584(A035316(n+1))]`
-/

namespace A163077.P1102616560498894207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187633 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082584 (A035316 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163077.P1102616560498894207

/-! ## A163077.P17800691378362293764

`lt[A050832(n+1), A050818(A050827(2*n+5))]`
-/

namespace A163077.P17800691378362293764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050818 (A050827 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163077.P17800691378362293764

/-!
# A163079: Primes p such that p$ + 1 is also prime. Here '$' denotes the swinging factorial function (A056040).

The programs for A163079, there is no canonical definition to state claims against.
-/

/-! ## A163079.P15337977571231230548

`p?[A163077(n+1)]`
-/

namespace A163079.P15337977571231230548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163079.P15337977571231230548

/-! ## A163079.P12034833984433229008

`p?[record[A163077(ceil(C(or(1, n), n)/2))]]`
-/

namespace A163079.P12034833984433229008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163079.P12034833984433229008

/-! ## A163079.P14428986816550027598

`filter[A163077(n+2), A010051(#)]`
-/

namespace A163079.P14428986816550027598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163079.P14428986816550027598

/-! ## A163079.P10033235162808723302

`filter[A163077(n+2), A323153(#)]`
-/

namespace A163079.P10033235162808723302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A163079.P10033235162808723302

/-! ## A163079.P6005784169276762114

`filter[A163077(n+2), A327861(#)]`
-/

namespace A163079.P6005784169276762114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A163079.P6005784169276762114

/-!
# A163080: Primes p such that p$ - 1 is also prime. Here '$' denotes the swinging factorial function (A056040).

The programs for A163080, there is no canonical definition to state claims against.
-/

/-! ## A163080.P6280353315635431147

`p?[A163078(n+1)]`
-/

namespace A163080.P6280353315635431147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163080.P6280353315635431147

/-! ## A163080.P1745799729191359318

`p?[record[A163078(A152271(n))]]`
-/

namespace A163080.P1745799729191359318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163078 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163080.P1745799729191359318

/-! ## A163080.P15162532109525976625

`filter[A163078(n+1), A010051(#)]`
-/

namespace A163080.P15162532109525976625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163080.P15162532109525976625

/-! ## A163080.P8450429435344982067

`filter[A163078(n+1), A174897(#)]`
-/

namespace A163080.P8450429435344982067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A163080.P8450429435344982067

/-! ## A163080.P1878477064006330713

`filter[A163078(n+1), A257531(#)]`
-/

namespace A163080.P1878477064006330713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A163080.P1878477064006330713

/-!
# A163081: 

The programs for A163081, there is no canonical definition to state claims against.
-/

/-! ## A163081.P13469334139145400784

`A056040(A163079(n+1))+1`
-/

namespace A163081.P13469334139145400784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A163079 (n + 1)).toNat + 1

end

end A163081.P13469334139145400784

/-!
# A163082: Primes of the form p$ - 1 where p is prime, where '$' denotes the swinging factorial (A056040).

The programs for A163082, there is no canonical definition to state claims against.
-/

/-! ## A163082.P4014748402889293315

`A056040(A163080(n+1))-1`
-/

namespace A163082.P4014748402889293315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A163080 (n + 1)).toNat - 1

end

end A163082.P4014748402889293315

/-!
# A163084: Number of reduced words of length n in Coxeter group on 13 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163084, there is no canonical definition to state claims against.
-/

/-! ## A163084.P7629379977121796153

`A166558(n)-A326463(A064898(n))`
-/

namespace A163084.P7629379977121796153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166558 n - A326463 (A064898 n).toNat

end

end A163084.P7629379977121796153

/-!
# A163085: Product of first n swinging factorials (A056040).

The programs for A163085, there is no canonical definition to state claims against.
-/

/-! ## A163085.P2769112136962194922

`∏[A056040(n)]`
-/

namespace A163085.P2769112136962194922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163085.P2769112136962194922

/-! ## A163085.P16363928275632685312

`∏[sqrt(A327998(n))]`
-/

namespace A163085.P16363928275632685312
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A327998 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163085.P16363928275632685312

/-! ## A163085.P8489941322975796208

`∏[A182073(∑[n])]`
-/

namespace A163085.P8489941322975796208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182073 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163085.P8489941322975796208

/-! ## A163085.P15294603429533945825

`∏[A328001(∑[n])]`
-/

namespace A163085.P15294603429533945825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328001 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163085.P15294603429533945825

/-! ## A163085.P9538723725168765840

`∏[A081125(n)/floor(n/2)!]`
-/

namespace A163085.P9538723725168765840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163085.P9538723725168765840

/-!
# A163086: Product of first n terms of A163085.

The programs for A163086, there is no canonical definition to state claims against.
-/

/-! ## A163086.P17278032054299828296

`∏[A163085(n)]`
-/

namespace A163086.P17278032054299828296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163086.P17278032054299828296

/-! ## A163086.P16732664292966521782

`∏[∏[A056040(n)]]`
-/

namespace A163086.P16732664292966521782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163086.P16732664292966521782

/-! ## A163086.P325244531081949106

`∏[∏[sqrt(A327998(n))]]`
-/

namespace A163086.P325244531081949106
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A327998 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163086.P325244531081949106

/-! ## A163086.P5967897679693568619

`∏[∏[A182073(∑[n])]]`
-/

namespace A163086.P5967897679693568619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182073 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163086.P5967897679693568619

/-! ## A163086.P14813450252032647404

`∏[∏[A211226(A046092(n))]]`
-/

namespace A163086.P14813450252032647404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 (A046092 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163086.P14813450252032647404

/-!
# A163087: Product{k|n} k$. Here '$' denotes the swinging factorial function (A056040).

The programs for A163087, the canonical program `A163087.P13228092064453547001` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163087 has offset 0).

The definition of A163087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163087.P13228092064453547001

`∏{d}[n, A056040(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163087

/-- `∏{d}[n, A056040(#)]` -/
def P13228092064453547001.Spec : Prop :=
  ∀ n, P13228092064453547001.a n = A163087 n

theorem P13228092064453547001.correct : P13228092064453547001.Spec := by
  intro n
  simp only [A163087]

end A163087

/-! ## A163087.P8945399007761971600

`A056040(n)*A163088(n)`
-/

namespace A163087.P8945399007761971600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A163088 n

end

end A163087.P8945399007761971600

namespace A163087

/-- `A056040(n)*A163088(n)` -/
def P8945399007761971600.Spec : Prop :=
  ∀ n, P8945399007761971600.a n = A163087 n

end A163087

/-! ## A163087.P285642474503334843

`sqrt(A327998(n))*A163088(n)`
-/

namespace A163087.P285642474503334843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A327998 n : ℝ) * (A163088 n : ℝ)

end

end A163087.P285642474503334843

namespace A163087

/-- `sqrt(A327998(n))*A163088(n)` -/
def P285642474503334843.Spec : Prop :=
  ∀ n, P285642474503334843.a n = (A163087 n : ℝ)

end A163087

/-! ## A163087.P17265027407135622948

`n!/A163089(n)`
-/

namespace A163087.P17265027407135622948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A163089 n : ℚ)

end

end A163087.P17265027407135622948

namespace A163087

/-- `n!/A163089(n)` -/
def P17265027407135622948.Spec : Prop :=
  ∀ n, P17265027407135622948.a n = (A163087 n : ℚ)

end A163087

/-! ## A163087.P11420774371447359471

`A000142(n)/A163089(n)`
-/

namespace A163087.P11420774371447359471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A163089 n : ℚ)

end

end A163087.P11420774371447359471

namespace A163087

/-- `A000142(n)/A163089(n)` -/
def P11420774371447359471.Spec : Prop :=
  ∀ n, P11420774371447359471.a n = (A163087 n : ℚ)

end A163087

/-! ## A163087.P4700156331214641315

`∏[A028310(n)]/A163089(n)`
-/

namespace A163087.P4700156331214641315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A163089 n : ℚ)

end

end A163087.P4700156331214641315

namespace A163087

/-- `∏[A028310(n)]/A163089(n)` -/
def P4700156331214641315.Spec : Prop :=
  ∀ n, P4700156331214641315.a n = (A163087 n : ℚ)

end A163087

/-!
# A163088: (Product{k|n} k$) / n$. Here '$' denotes the swinging factorial function (A056040).

The programs for A163088, the canonical program `A163088.P2830907696303753989` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163088 has offset 0).

The definition of A163088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163088.P2830907696303753989

`A163087(n)/A056040(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163088

/-- `A163087(n)/A056040(n)` -/
def P2830907696303753989.Spec : Prop :=
  ∀ n, P2830907696303753989.a n = (A163088 n : ℚ)

end A163088

/-! ## A163088.P6243749990575488197

`A163087(n)/sqrt(A327998(n))`
-/

namespace A163088.P6243749990575488197
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163087 n : ℝ) / Real.sqrt (A327998 n : ℝ)

end

end A163088.P6243749990575488197

namespace A163088

/-- `A163087(n)/sqrt(A327998(n))` -/
def P6243749990575488197.Spec : Prop :=
  ∀ n, P6243749990575488197.a n = (A163088 n : ℝ)

end A163088

/-! ## A163088.P14884929254218494400

`A163087(n)/(∑[char[2*n]]*A057977(n))`
-/

namespace A163088.P14884929254218494400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163087 n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057977 n : ℚ)

end

end A163088.P14884929254218494400

namespace A163088

/-- `A163087(n)/(∑[char[2*n]]*A057977(n))` -/
def P14884929254218494400.Spec : Prop :=
  ∀ n, P14884929254218494400.a n = (A163088 n : ℚ)

end A163088

/-! ## A163088.P4955240826862142278

`A163087(n)/A328001(A000217(n))`
-/

namespace A163088.P4955240826862142278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163087 n : ℚ) / (A328001 (A000217 n).toNat : ℚ)

end

end A163088.P4955240826862142278

namespace A163088

/-- `A163087(n)/A328001(A000217(n))` -/
def P4955240826862142278.Spec : Prop :=
  ∀ n, P4955240826862142278.a n = (A163088 n : ℚ)

end A163088

/-! ## A163088.P15558818191592772113

`A163087(n)/A182073(∑[n])`
-/

namespace A163088.P15558818191592772113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163087 n : ℚ) / (A182073 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A163088.P15558818191592772113

namespace A163088

/-- `A163087(n)/A182073(∑[n])` -/
def P15558818191592772113.Spec : Prop :=
  ∀ n, P15558818191592772113.a n = (A163088 n : ℚ)

end A163088

/-!
# A163089: n! / (Product{k|n} k$). Here '$' denotes the swinging factorial function (A056040).

The programs for A163089, the canonical program `A163089.P10666734151274875849` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163089 has offset 0).

The definition of A163089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163087, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163089.P10666734151274875849

`n!/A163087(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163089

/-- `n!/A163087(n)` -/
def P10666734151274875849.Spec : Prop :=
  ∀ n, P10666734151274875849.a n = (A163089 n : ℚ)

end A163089

/-! ## A163089.P4260262925950802469

`A000142(n)/A163087(n)`
-/

namespace A163089.P4260262925950802469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A163087 n : ℚ)

end

end A163089.P4260262925950802469

namespace A163089

/-- `A000142(n)/A163087(n)` -/
def P4260262925950802469.Spec : Prop :=
  ∀ n, P4260262925950802469.a n = (A163089 n : ℚ)

end A163089

/-! ## A163089.P15912460674158625564

`∏[A028310(n)]/A163087(n)`
-/

namespace A163089.P15912460674158625564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A163087 n : ℚ)

end

end A163089.P15912460674158625564

namespace A163089

/-- `∏[A028310(n)]/A163087(n)` -/
def P15912460674158625564.Spec : Prop :=
  ∀ n, P15912460674158625564.a n = (A163089 n : ℚ)

end A163089

/-! ## A163089.P1661883115688417982

`A094587(A000217(n))/A163087(n)`
-/

namespace A163089.P1661883115688417982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A000217 n).toNat : ℚ) / (A163087 n : ℚ)

end

end A163089.P1661883115688417982

namespace A163089

/-- `A094587(A000217(n))/A163087(n)` -/
def P1661883115688417982.Spec : Prop :=
  ∀ n, P1661883115688417982.a n = (A163089 n : ℚ)

end A163089

/-!
# A163090: Number of reduced words of length n in Coxeter group on 14 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163090, there is no canonical definition to state claims against.
-/

/-! ## A163090.P11379885695071288936

`A167700(A182053(2*(n+1)))+A030008(n)`
-/

namespace A163090.P11379885695071288936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (A182053 (2 * (n + 1))).toNat + A030008 n

end

end A163090.P11379885695071288936

/-!
# A163094: a(n) = A162796(n)/2.

The programs for A163094, there is no canonical definition to state claims against.
-/

/-! ## A163094.P18438464658834823703

`A162796(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163094.P18438464658834823703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162796 n : ℚ) / 2

end

end A163094.P18438464658834823703

/-! ## A163094.P13986077347781220361

`∑[A162794(n)/2]`
-/

namespace A163094.P13986077347781220361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162794 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163094.P13986077347781220361

/-! ## A163094.P2103613513196073901

`A255747(2*n)/2`
-/

namespace A163094.P2103613513196073901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255747 (2 * n) : ℚ) / 2

end

end A163094.P2103613513196073901

/-! ## A163094.P8055602650139499429

`∑[A139251(2*n)/2]`
-/

namespace A163094.P8055602650139499429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163094.P8055602650139499429

/-! ## A163094.P6419616303862872572

`A266530(4*n+2)/4`
-/

namespace A163094.P6419616303862872572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266530 (4 * n + 2) : ℚ) / 4

end

end A163094.P6419616303862872572

/-! ## A163094.P4108990180320541015

`∑[A139251(comp[or(1, n)])]/2`
-/

namespace A163094.P4108990180320541015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A163094.P4108990180320541015

/-! ## A163094.P234352848351087659

`∑[A139251(comp[Δ[n²]])]/2`
-/

namespace A163094.P234352848351087659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A163094.P234352848351087659

/-! ## A163094.P15076063316540278538

`floor(A169707(2*n+1)/8)`
-/

namespace A163094.P15076063316540278538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169707 (2 * n + 1) : ℚ) / 8⌋

end

end A163094.P15076063316540278538

/-! ## A163094.P4016800735436504961

`record[A255747(and(n, n+1))/2]`
-/

namespace A163094.P4016800735436504961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255747 (Nat.land n (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163094.P4016800735436504961

/-! ## A163094.P16822734962146528576

`record[A255747(n%or(1, n))/2]`
-/

namespace A163094.P16822734962146528576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255747 (n % Nat.lor 1 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163094.P16822734962146528576

/-!
# A163095: a(n) = A000788(n)^2.

The programs for A163095, the canonical program `A163095.P4667298633254708483` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163095 has offset 0).

The definition of A163095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163095.P4667298633254708483

`A000788(n)²`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163095

/-- `A000788(n)²` -/
def P4667298633254708483.Spec : Prop :=
  ∀ n, P4667298633254708483.a n = A163095 n

theorem P4667298633254708483.correct : P4667298633254708483.Spec := by
  intro n
  simp only [A163095]

end A163095

/-! ## A163095.P1577768556207257140

`∑[a(and(n, n-1))+1]²` with `a(0)=0`
-/

namespace A163095.P1577768556207257140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P1577768556207257140

namespace A163095

/-- `∑[a(and(n, n-1))+1]²` -/
def P1577768556207257140.Spec : Prop :=
  ∀ n, (P1577768556207257140.a n : ℤ) = A163095 n

end A163095

/-! ## A163095.P12000790054343943963

`∑[∑[∑{e}[xor(n, -n), 2-#]]]²`
-/

namespace A163095.P12000790054343943963
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P12000790054343943963

namespace A163095

/-- `∑[∑[∑{e}[xor(n, -n), 2-#]]]²` -/
def P12000790054343943963.Spec : Prop :=
  ∀ n, P12000790054343943963.a n = A163095 n

end A163095

/-! ## A163095.P7283637914915217861

`∑[a(and(n, n-1))+1]^2` with `a(0)=0`
-/

namespace A163095.P7283637914915217861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P7283637914915217861

namespace A163095

/-- `∑[a(and(n, n-1))+1]^2` -/
def P7283637914915217861.Spec : Prop :=
  ∀ n, (P7283637914915217861.a n : ℤ) = A163095 n

end A163095

/-! ## A163095.P7320053135950169303

`∑[a(floor(n/2))+2-gcd(2, n)]²` with `a(0)=0`
-/

namespace A163095.P7320053135950169303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P7320053135950169303

namespace A163095

/-- `∑[a(floor(n/2))+2-gcd(2, n)]²` -/
def P7320053135950169303.Spec : Prop :=
  ∀ n, P7320053135950169303.a n = A163095 n

end A163095

/-! ## A163095.P15699340481272199918

`∑[a(floor(n/2))+a(n%2)]²` with `a(0)=0, a(1)=1`
-/

namespace A163095.P15699340481272199918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P15699340481272199918

namespace A163095

/-- `∑[a(floor(n/2))+a(n%2)]²` -/
def P15699340481272199918.Spec : Prop :=
  ∀ n, (P15699340481272199918.a n : ℤ) = A163095 n

end A163095

/-! ## A163095.P18025001927538057488

`∑[n-(∑[val(n+1, 2)]-val(n+1, 2))]²`
-/

namespace A163095.P18025001927538057488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P18025001927538057488

namespace A163095

/-- `∑[n-(∑[val(n+1, 2)]-val(n+1, 2))]²` -/
def P18025001927538057488.Spec : Prop :=
  ∀ n, P18025001927538057488.a n = A163095 n

end A163095

/-! ## A163095.P6803389785261603226

`∑[A000120(n)]²`
-/

namespace A163095.P6803389785261603226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P6803389785261603226

namespace A163095

/-- `∑[A000120(n)]²` -/
def P6803389785261603226.Spec : Prop :=
  ∀ n, P6803389785261603226.a n = A163095 n

end A163095

/-! ## A163095.P13748179115024420283

`∑[log2(A001316(n))]²`
-/

namespace A163095.P13748179115024420283
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P13748179115024420283

namespace A163095

/-- `∑[log2(A001316(n))]²` -/
def P13748179115024420283.Spec : Prop :=
  ∀ n, P13748179115024420283.a n = (A163095 n : ℝ)

end A163095

/-! ## A163095.P11828982689379850800

`∑[∑[A088705(n)]]²`
-/

namespace A163095.P11828982689379850800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P11828982689379850800

namespace A163095

/-- `∑[∑[A088705(n)]]²` -/
def P11828982689379850800.Spec : Prop :=
  ∀ n, P11828982689379850800.a n = A163095 n

end A163095

/-! ## A163095.P11878622071649033782

`∑[val(A102377(n), 2)]²`
-/

namespace A163095.P11878622071649033782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P11878622071649033782

namespace A163095

/-- `∑[val(A102377(n), 2)]²` -/
def P11878622071649033782.Spec : Prop :=
  ∀ n, (P11878622071649033782.a n : ℤ) = A163095 n

end A163095

/-! ## A163095.P18228629737134119740

`∑[val(A160713(n), 2)]²`
-/

namespace A163095.P18228629737134119740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P18228629737134119740

namespace A163095

/-- `∑[val(A160713(n), 2)]²` -/
def P18228629737134119740.Spec : Prop :=
  ∀ n, (P18228629737134119740.a n : ℤ) = A163095 n

end A163095

/-! ## A163095.P10743998149265214642

`∑[n-A011371(n)]²`
-/

namespace A163095.P10743998149265214642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P10743998149265214642

namespace A163095

/-- `∑[n-A011371(n)]²` -/
def P10743998149265214642.Spec : Prop :=
  ∀ n, P10743998149265214642.a n = A163095 n

end A163095

/-! ## A163095.P7932495298084649712

`∑[n-A092391(n)]²`
-/

namespace A163095.P7932495298084649712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P7932495298084649712

namespace A163095

/-- `∑[n-A092391(n)]²` -/
def P7932495298084649712.Spec : Prop :=
  ∀ n, P7932495298084649712.a n = A163095 n

end A163095

/-! ## A163095.P16596866075287337184

`(∑[n]-A174605(n))²`
-/

namespace A163095.P16596866075287337184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A174605 n) ^ 2

end

end A163095.P16596866075287337184

namespace A163095

/-- `(∑[n]-A174605(n))²` -/
def P16596866075287337184.Spec : Prop :=
  ∀ n, P16596866075287337184.a n = A163095 n

end A163095

/-! ## A163095.P8560684704383819296

`∑[log2(Δ[A006046(n)])]²`
-/

namespace A163095.P8560684704383819296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P8560684704383819296

namespace A163095

/-- `∑[log2(Δ[A006046(n)])]²` -/
def P8560684704383819296.Spec : Prop :=
  ∀ n, P8560684704383819296.a n = (A163095 n : ℝ)

end A163095

/-! ## A163095.P9913257427726565943

`∑[∑{d}[n, A297115(#)]]²`
-/

namespace A163095.P9913257427726565943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A297115 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P9913257427726565943

namespace A163095

/-- `∑[∑{d}[n, A297115(#)]]²` -/
def P9913257427726565943.Spec : Prop :=
  ∀ n, P9913257427726565943.a n = A163095 n

end A163095

/-! ## A163095.P15242914984459885253

`∑[log2(A060632(2*n))]²`
-/

namespace A163095.P15242914984459885253
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P15242914984459885253

namespace A163095

/-- `∑[log2(A060632(2*n))]²` -/
def P15242914984459885253.Spec : Prop :=
  ∀ n, P15242914984459885253.a n = (A163095 n : ℝ)

end A163095

/-! ## A163095.P17645974420067875104

`∑[log2(A102376(n))/2]²`
-/

namespace A163095.P17645974420067875104
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A102376 n : ℝ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P17645974420067875104

namespace A163095

/-- `∑[log2(A102376(n))/2]²` -/
def P17645974420067875104.Spec : Prop :=
  ∀ n, P17645974420067875104.a n = (A163095 n : ℝ)

end A163095

/-! ## A163095.P5827271014129944428

`∑[1-A063787(n+1)]²`
-/

namespace A163095.P5827271014129944428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163095.P5827271014129944428

namespace A163095

/-- `∑[1-A063787(n+1)]²` -/
def P5827271014129944428.Spec : Prop :=
  ∀ n, P5827271014129944428.a n = A163095 n

end A163095

/-!
# A163096: Odd numbers with an even number of partitions.

The programs for A163096, there is no canonical definition to state claims against.
-/

/-! ## A163096.P8391629691386651658

`∩[2*n+1, A209920(n+1)]`
-/

namespace A163096.P8391629691386651658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P8391629691386651658

/-! ## A163096.P13607837404727989820

`∩[A209920(n+1), A020742(n)]`
-/

namespace A163096.P13607837404727989820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P13607837404727989820

/-! ## A163096.P6770162859917913235

`∩[A209920(n+1), A060747(n)]`
-/

namespace A163096.P6770162859917913235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P6770162859917913235

/-! ## A163096.P18317598733549468379

`∩[A209920(n+1), A140139(n+1)]`
-/

namespace A163096.P18317598733549468379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P18317598733549468379

/-! ## A163096.P11898772016954546272

`∩[A209920(n+1), A144396(n+1)]`
-/

namespace A163096.P11898772016954546272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P11898772016954546272

/-! ## A163096.P62317217760828374

`∩[2*n+1, A001560(n+1)]`
-/

namespace A163096.P62317217760828374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P62317217760828374

/-! ## A163096.P16822341000667473280

`∩[A001560(n+1), A004273(n)]`
-/

namespace A163096.P16822341000667473280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P16822341000667473280

/-! ## A163096.P6072752414584028476

`∩[A001560(n+1), A020742(n)]`
-/

namespace A163096.P6072752414584028476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P6072752414584028476

/-! ## A163096.P3305698702077968331

`∩[A001560(n+1), A060747(n)]`
-/

namespace A163096.P3305698702077968331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P3305698702077968331

/-! ## A163096.P3433580285604494462

`∩[A001560(n+1), A062545(n)]`
-/

namespace A163096.P3433580285604494462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P3433580285604494462

/-! ## A163096.P2188038197427659607

`∩[A001560(n+1), A223134(n)]`
-/

namespace A163096.P2188038197427659607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P2188038197427659607

/-! ## A163096.P4158260000978298910

`∩[A001560(n+1), A005818(n+1)]`
-/

namespace A163096.P4158260000978298910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P4158260000978298910

/-! ## A163096.P6302064753697047886

`∩[A001560(n+1), A020735(n+1)]`
-/

namespace A163096.P6302064753697047886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P6302064753697047886

/-! ## A163096.P1501796259933527142

`∩[A001560(n+1), A144396(n+1)]`
-/

namespace A163096.P1501796259933527142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163096.P1501796259933527142

/-! ## A163096.P16942172664842316688

`eq[1, (A000025(n)+1)%2]`
-/

namespace A163096.P16942172664842316688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000025 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163096.P16942172664842316688

/-! ## A163096.P10891937145452034443

`lt[A000700(n)%2, n%2]`
-/

namespace A163096.P10891937145452034443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163096.P10891937145452034443

/-! ## A163096.P15566242414196453018

`eq[A040051(n), A142150(n)]`
-/

namespace A163096.P15566242414196453018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163096.P15566242414196453018

/-! ## A163096.P16448289834472931575

`eq[A040051(n), A237420(n)]`
-/

namespace A163096.P16448289834472931575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163096.P16448289834472931575

/-! ## A163096.P12887640255437925037

`eq[A040051(n), A266439(n)]`
-/

namespace A163096.P12887640255437925037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163096.P12887640255437925037

/-! ## A163096.P10396910258921389715

`filter[A001560(n+1), A000035(#)]`
-/

namespace A163096.P10396910258921389715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A163096.P10396910258921389715

/-!
# A163097: Even numbers with an odd number of partitions.

The programs for A163097, there is no canonical definition to state claims against.
-/

/-! ## A163097.P2793689104892685023

`2*A163099(n+1)`
-/

namespace A163097.P2793689104892685023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163099 (n + 1)

end

end A163097.P2793689104892685023

/-! ## A163097.P9727213490250714992

`A005843(A163099(n+1))`
-/

namespace A163097.P9727213490250714992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A163099 (n + 1)).toNat

end

end A163097.P9727213490250714992

/-! ## A163097.P1669804682275527346

`∩[A052002(n+1), A163300(n+1)]`
-/

namespace A163097.P1669804682275527346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P1669804682275527346

/-! ## A163097.P2447412708437402672

`∩[2*n, A052002(n+1)]`
-/

namespace A163097.P2447412708437402672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P2447412708437402672

/-! ## A163097.P2234859963409319535

`∩[A052002(n+1), A005843(n)]`
-/

namespace A163097.P2234859963409319535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P2234859963409319535

/-! ## A163097.P11728534214826135836

`∩[2*n, A209920(n+1)]`
-/

namespace A163097.P11728534214826135836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P11728534214826135836

/-! ## A163097.P11235121654139217817

`∩[A209920(n+1), A004271(n)]`
-/

namespace A163097.P11235121654139217817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P11235121654139217817

/-! ## A163097.P16280398688623529303

`∩[A209920(n+1), A004272(n)]`
-/

namespace A163097.P16280398688623529303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P16280398688623529303

/-! ## A163097.P15599507955049511875

`∩[A209920(n+1), A004275(n)]`
-/

namespace A163097.P15599507955049511875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P15599507955049511875

/-! ## A163097.P6888439454744170556

`∩[A209920(n+1), A005843(n)]`
-/

namespace A163097.P6888439454744170556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163097.P6888439454744170556

/-! ## A163097.P11023422208230666409

`filter[2*n, A040051(#)]`
-/

namespace A163097.P11023422208230666409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j) = 1) n)

end

end A163097.P11023422208230666409

/-! ## A163097.P6077594547392132622

`2*eq[1, A040051(2*n)]`
-/

namespace A163097.P6077594547392132622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163097.P6077594547392132622

/-! ## A163097.P2404683074813218750

`2*lt[A278478(2*n), 1]`
-/

namespace A163097.P2404683074813218750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163097.P2404683074813218750

/-! ## A163097.P14770245323386570045

`2*lt[A355676(2*n), 1]`
-/

namespace A163097.P14770245323386570045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163097.P14770245323386570045

/-! ## A163097.P3172064267649176640

`lt[1, A081362(n)%2+1]`
-/

namespace A163097.P3172064267649176640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081362 n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163097.P3172064267649176640

/-! ## A163097.P15835752169250556202

`lt[n%2, A000700(n)%2]`
-/

namespace A163097.P15835752169250556202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163097.P15835752169250556202

/-! ## A163097.P7495029233598530092

`eq[A000034(n), A040051(n)]`
-/

namespace A163097.P7495029233598530092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163097.P7495029233598530092

/-! ## A163097.P11014341373730655679

`eq[A010684(n), A040051(n)]`
-/

namespace A163097.P11014341373730655679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163097.P11014341373730655679

/-! ## A163097.P11882260010550196186

`eq[A010685(n), A040051(n)]`
-/

namespace A163097.P11882260010550196186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163097.P11882260010550196186

/-! ## A163097.P17434209331465709644

`eq[A010686(n), A040051(n)]`
-/

namespace A163097.P17434209331465709644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163097.P17434209331465709644

/-!
# A163098: a(n) = A127219(n)/2.

The programs for A163098, there is no canonical definition to state claims against.
-/

/-! ## A163098.P3566035215304553465

`A127219(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163098.P3566035215304553465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127219 (n + 1) : ℚ) / 2

end

end A163098.P3566035215304553465

/-! ## A163098.P14378304495265689124

`comp[A163099(n+1)]`
-/

namespace A163098.P14378304495265689124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A163098.P14378304495265689124

/-! ## A163098.P14669354424493549228

`lt[A069910(n)%2, 1]`
-/

namespace A163098.P14669354424493549228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069910 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163098.P14669354424493549228

/-! ## A163098.P529314759460386860

`lt[0, A278478(2*n)]`
-/

namespace A163098.P529314759460386860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163098.P529314759460386860

/-! ## A163098.P12382518555259270227

`lt[0, A355676(2*n)]`
-/

namespace A163098.P12382518555259270227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163098.P12382518555259270227

/-! ## A163098.P18316216191511003051

`eq[0, A000039(n)%2]`
-/

namespace A163098.P18316216191511003051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000039 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163098.P18316216191511003051

/-! ## A163098.P3144125185786998283

`eq[0, A040051(2*n)]`
-/

namespace A163098.P3144125185786998283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163098.P3144125185786998283

/-! ## A163098.P15229296652500085838

`A001281(A127219(n+1))`
-/

namespace A163098.P15229296652500085838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A127219 (n + 1)).toNat

end

end A163098.P15229296652500085838

/-! ## A163098.P12037325946797498488

`eq[0, A058696(n)%2]`
-/

namespace A163098.P12037325946797498488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058696 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163098.P12037325946797498488

/-! ## A163098.P4808566642672604304

`eq[0, A000041(2*n)%2]`
-/

namespace A163098.P4808566642672604304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163098.P4808566642672604304

/-!
# A163099: a(n) = A163097(n)/2.

The programs for A163099, there is no canonical definition to state claims against.
-/

/-! ## A163099.P10488960389322977385

`A163097(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163099.P10488960389322977385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163097 (n + 1) : ℚ) / 2

end

end A163099.P10488960389322977385

/-! ## A163099.P12282480075427440137

`∩[A052002(n+1), A163300(n+1)]/2`
-/

namespace A163099.P12282480075427440137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163099.P12282480075427440137

/-! ## A163099.P4421418873786713616

`∩[A052002(n+1), A005843(n)]/2`
-/

namespace A163099.P4421418873786713616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163099.P4421418873786713616

/-! ## A163099.P13434274825186398004

`∩[A209920(n+1), A004271(n)]/2`
-/

namespace A163099.P13434274825186398004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163099.P13434274825186398004

/-! ## A163099.P13827067663579682352

`∩[A209920(n+1), A004272(n)]/2`
-/

namespace A163099.P13827067663579682352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163099.P13827067663579682352

/-! ## A163099.P2437134919213804408

`∩[A209920(n+1), A004275(n)]/2`
-/

namespace A163099.P2437134919213804408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163099.P2437134919213804408

/-! ## A163099.P14510272983081161514

`∩[A209920(n+1), A005843(n)]/2`
-/

namespace A163099.P14510272983081161514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163099.P14510272983081161514

/-! ## A163099.P9900938102944833972

`eq[0, A278478(2*n)]`
-/

namespace A163099.P9900938102944833972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163099.P9900938102944833972

/-! ## A163099.P12515137626018912641

`eq[0, A355676(2*n)]`
-/

namespace A163099.P12515137626018912641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163099.P12515137626018912641

/-! ## A163099.P6860554442442219788

`lt[0, A040051(2*n)]`
-/

namespace A163099.P6860554442442219788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163099.P6860554442442219788

/-! ## A163099.P16320176543152270964

`eq[1, A069935(2*n)]`
-/

namespace A163099.P16320176543152270964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163099.P16320176543152270964

/-! ## A163099.P15662449279367748188

`eq[1, and(1, A000025(2*n))]`
-/

namespace A163099.P15662449279367748188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000025 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163099.P15662449279367748188

/-! ## A163099.P15395997814595763353

`A001281(A163097(n+1))`
-/

namespace A163099.P15395997814595763353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A163097 (n + 1)).toNat

end

end A163099.P15395997814595763353

/-! ## A163099.P7093316535561875824

`eq[A000034(n), A040051(n)]/2`
-/

namespace A163099.P7093316535561875824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P7093316535561875824

/-! ## A163099.P16845597901917029522

`eq[A010684(n), A040051(n)]/2`
-/

namespace A163099.P16845597901917029522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P16845597901917029522

/-! ## A163099.P14969277898724609633

`eq[A010685(n), A040051(n)]/2`
-/

namespace A163099.P14969277898724609633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P14969277898724609633

/-! ## A163099.P14235926303244101015

`eq[A010686(n), A040051(n)]/2`
-/

namespace A163099.P14235926303244101015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P14235926303244101015

/-! ## A163099.P4773168634279335086

`eq[A010687(n), A040051(n)]/2`
-/

namespace A163099.P4773168634279335086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P4773168634279335086

/-! ## A163099.P11634778294422601314

`eq[A010688(n), A040051(n)]/2`
-/

namespace A163099.P11634778294422601314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P11634778294422601314

/-! ## A163099.P3803174642493743782

`eq[A010689(n), A040051(n)]/2`
-/

namespace A163099.P3803174642493743782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A163099.P3803174642493743782

