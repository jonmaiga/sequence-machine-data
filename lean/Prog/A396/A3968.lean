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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
# A396801: Main diagonal of table A396800.

The programs for A396801, there is no canonical definition to state claims against.
-/

/-! ## A396801.P17193297624696418516

`A396800((n+1)²+n²)`
-/

namespace A396801.P17193297624696418516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 ((n + 1) ^ 2 + n ^ 2)

end

end A396801.P17193297624696418516

/-!
# A396802: Antidiagonal sums of table A396800.

The programs for A396802, there is no canonical definition to state claims against.
-/

/-! ## A396802.P3524553928278663026

`A306242(A244205(n)-A048767(n+1))`
-/

namespace A396802.P3524553928278663026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (A244205 (n + 11) - A048767 (n + 1)).toNat

end

end A396802.P3524553928278663026

/-!
# A396803: E.g.f. satisfies A(x) = x*exp( A^3(x) ).

The programs for A396803, there is no canonical definition to state claims against.
-/

/-! ## A396803.P16192043522563465265

`A396800(A034856(n+2))`
-/

namespace A396803.P16192043522563465265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (A034856 (n + 2)).toNat

end

end A396803.P16192043522563465265

/-! ## A396803.P11099411912201189849

`A396800(lt[A182703(n+1), 1])`
-/

namespace A396803.P11099411912201189849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A396803.P11099411912201189849

/-! ## A396803.P4647848518873827495

`A396800(eq[char[1]+1, A025581(n)])`
-/

namespace A396803.P4647848518873827495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A396803.P4647848518873827495

/-! ## A396803.P7654836019596859974

`A396800(eq[char[1]+1, A396800(n+3)])`
-/

namespace A396803.P7654836019596859974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A396803.P7654836019596859974

/-!
# A396805: E.g.f. satisfies A(x) = x*exp( A^5(x) ).

The programs for A396805, there is no canonical definition to state claims against.
-/

/-! ## A396805.P2614076033539534894

`A396800(A052905(n+2)+1)`
-/

namespace A396805.P2614076033539534894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (A052905 (n + 2) + 1).toNat

end

end A396805.P2614076033539534894

/-! ## A396805.P8610238459772018521

`A396800(lt[A285066(n+4), A347788(n)])`
-/

namespace A396805.P8610238459772018521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285066 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396805.P8610238459772018521

/-! ## A396805.P12114086182571011104

`A396800(lt[A285066(n+4), A391046(n)])`
-/

namespace A396805.P12114086182571011104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285066 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396805.P12114086182571011104

/-!
# A396811: Lower (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A396811, the canonical program `A396811.P3366068091821481228` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396811 has offset 0).

The definition of A396811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396811.P3366068091821481228

`A144065(n)-A265430(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A396811

/-- `A144065(n)-A265430(n)` -/
def P3366068091821481228.Spec : Prop :=
  ∀ n, P3366068091821481228.a n = A396811 n

theorem P3366068091821481228.correct : P3366068091821481228.Spec := by
  intro n
  simp only [A396811]

end A396811

/-! ## A396811.P14078255827404368286

`A186423(n)-A285869(n)`
-/

namespace A396811.P14078255827404368286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n - A285869 n

end

end A396811.P14078255827404368286

namespace A396811

/-- `A186423(n)-A285869(n)` -/
def P14078255827404368286.Spec : Prop :=
  ∀ n, P14078255827404368286.a n = A396811 n

end A396811

/-! ## A396811.P14345537965673481007

`A330133(n)-A302406(n)`
-/

namespace A396811.P14345537965673481007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n - A302406 n

end

end A396811.P14345537965673481007

namespace A396811

/-- `A330133(n)-A302406(n)` -/
def P14345537965673481007.Spec : Prop :=
  ∀ n, P14345537965673481007.a n = A396811 n

end A396811

/-! ## A396811.P15411922502167805928

`A397108(n)-A396812(n)`
-/

namespace A396811.P15411922502167805928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397108 n - A396812 n

end

end A396811.P15411922502167805928

namespace A396811

/-- `A397108(n)-A396812(n)` -/
def P15411922502167805928.Spec : Prop :=
  ∀ n, P15411922502167805928.a n = A396811 n

end A396811

/-! ## A396811.P12066239662912351179

`A211538(n+1)+A057353(n)`
-/

namespace A396811.P12066239662912351179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1) + A057353 n

end

end A396811.P12066239662912351179

namespace A396811

/-- `A211538(n+1)+A057353(n)` -/
def P12066239662912351179.Spec : Prop :=
  ∀ n, P12066239662912351179.a n = A396811 n

end A396811

/-! ## A396811.P13429001418244200442

`A031878(n+1)-A166515(n)`
-/

namespace A396811.P13429001418244200442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (n + 1) - A166515 n

end

end A396811.P13429001418244200442

namespace A396811

/-- `A031878(n+1)-A166515(n)` -/
def P13429001418244200442.Spec : Prop :=
  ∀ n, P13429001418244200442.a n = A396811 n

end A396811

/-! ## A396811.P13627692287878568397

`A211539(n)-A059169(n+1)`
-/

namespace A396811.P13627692287878568397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n - A059169 (n + 1)

end

end A396811.P13627692287878568397

namespace A396811

/-- `A211539(n)-A059169(n+1)` -/
def P13627692287878568397.Spec : Prop :=
  ∀ n, P13627692287878568397.a n = A396811 n

end A396811

/-! ## A396811.P2510212142831280075

`A397990(n)-A378790(n+1)`
-/

namespace A396811.P2510212142831280075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n - A378790 (n + 1)

end

end A396811.P2510212142831280075

namespace A396811

/-- `A397990(n)-A378790(n+1)` -/
def P2510212142831280075.Spec : Prop :=
  ∀ n, P2510212142831280075.a n = A396811 n

end A396811

/-! ## A396811.P5440709460872711899

`A000982(n)-A000982(A110654(n))`
-/

namespace A396811.P5440709460872711899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A000982 (A110654 n).toNat

end

end A396811.P5440709460872711899

namespace A396811

/-- `A000982(n)-A000982(A110654(n))` -/
def P5440709460872711899.Spec : Prop :=
  ∀ n, P5440709460872711899.a n = A396811 n

end A396811

/-! ## A396811.P10199239678059011385

`A186423(n)-A212831(A186421(n))`
-/

namespace A396811.P10199239678059011385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n - A212831 (A186421 n).toNat

end

end A396811.P10199239678059011385

namespace A396811

/-- `A186423(n)-A212831(A186421(n))` -/
def P10199239678059011385.Spec : Prop :=
  ∀ n, P10199239678059011385.a n = A396811 n

end A396811

/-! ## A396811.P13524848070040083522

`A008794(n)+A007590(A004526(n+1))`
-/

namespace A396811.P13524848070040083522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n + A007590 (A004526 (n + 1)).toNat

end

end A396811.P13524848070040083522

namespace A396811

/-- `A008794(n)+A007590(A004526(n+1))` -/
def P13524848070040083522.Spec : Prop :=
  ∀ n, P13524848070040083522.a n = A396811 n

end A396811

/-! ## A396811.P7372463812481349120

`A000982(n)-A000982(A004526(n+1))`
-/

namespace A396811.P7372463812481349120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A000982 (A004526 (n + 1)).toNat

end

end A396811.P7372463812481349120

namespace A396811

/-- `A000982(n)-A000982(A004526(n+1))` -/
def P7372463812481349120.Spec : Prop :=
  ∀ n, P7372463812481349120.a n = A396811 n

end A396811

/-! ## A396811.P6875663947744598230

`A061925(n)-A061925(A004526(n+1))`
-/

namespace A396811.P6875663947744598230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n - A061925 (A004526 (n + 1)).toNat

end

end A396811.P6875663947744598230

namespace A396811

/-- `A061925(n)-A061925(A004526(n+1))` -/
def P6875663947744598230.Spec : Prop :=
  ∀ n, P6875663947744598230.a n = A396811 n

end A396811

/-! ## A396811.P18111433255928058277

`A396813(n+1)+A396812(n)-A396814(n+1)`
-/

namespace A396811.P18111433255928058277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396813 (n + 1) + (A396812 n - A396814 (n + 1))

end

end A396811.P18111433255928058277

namespace A396811

/-- `A396813(n+1)+A396812(n)-A396814(n+1)` -/
def P18111433255928058277.Spec : Prop :=
  ∀ n, P18111433255928058277.a n = A396811 n

end A396811

/-! ## A396811.P6986139518522095973

`A396813(n+1)+A397107(n)-A397108(n+1)`
-/

namespace A396811.P6986139518522095973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396813 (n + 1) + (A397107 n - A397108 (n + 1))

end

end A396811.P6986139518522095973

namespace A396811

/-- `A396813(n+1)+A397107(n)-A397108(n+1)` -/
def P6986139518522095973.Spec : Prop :=
  ∀ n, P6986139518522095973.a n = A396811 n

end A396811

/-! ## A396811.P4019527824815832597

`A396813(n+1)-A215495(2*n)`
-/

namespace A396811.P4019527824815832597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396813 (n + 1) - A215495 (2 * n)

end

end A396811.P4019527824815832597

namespace A396811

/-- `A396813(n+1)-A215495(2*n)` -/
def P4019527824815832597.Spec : Prop :=
  ∀ n, P4019527824815832597.a n = A396811 n

end A396811

/-! ## A396811.P5371846658426766458

`A308160(2*(n+1))-A059169(n+1)`
-/

namespace A396811.P5371846658426766458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308160 (2 * (n + 1)) - A059169 (n + 1)

end

end A396811.P5371846658426766458

namespace A396811

/-- `A308160(2*(n+1))-A059169(n+1)` -/
def P5371846658426766458.Spec : Prop :=
  ∀ n, P5371846658426766458.a n = A396811 n

end A396811

/-! ## A396811.P18025048662400028946

`A026927(A047241(n+1))`
-/

namespace A396811.P18025048662400028946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A047241 (n + 1)).toNat

end

end A396811.P18025048662400028946

namespace A396811

/-- `A026927(A047241(n+1))` -/
def P18025048662400028946.Spec : Prop :=
  ∀ n, P18025048662400028946.a n = A396811 n

end A396811

/-! ## A396811.P3065433486235095693

`A309687(A047238(n+1))`
-/

namespace A396811.P3065433486235095693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 (A047238 (n + 1)).toNat

end

end A396811.P3065433486235095693

namespace A396811

/-- `A309687(A047238(n+1))` -/
def P3065433486235095693.Spec : Prop :=
  ∀ n, P3065433486235095693.a n = A396811 n

end A396811

/-! ## A396811.P735735953028824294

`A008794(n)+A004526(A008794(n+1))`
-/

namespace A396811.P735735953028824294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n + A004526 (A008794 (n + 1)).toNat

end

end A396811.P735735953028824294

namespace A396811

/-- `A008794(n)+A004526(A008794(n+1))` -/
def P735735953028824294.Spec : Prop :=
  ∀ n, P735735953028824294.a n = A396811 n

end A396811

/-!
# A396812: Upper (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A396812, the canonical program `A396812.P7981673423103489573` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396812 has offset 0).

The definition of A396812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396812.P7981673423103489573

`A186423(n)-A004526(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A396812

/-- `A186423(n)-A004526(n)` -/
def P7981673423103489573.Spec : Prop :=
  ∀ n, P7981673423103489573.a n = A396812 n

theorem P7981673423103489573.correct : P7981673423103489573.Spec := by
  intro n
  simp only [A396812]

end A396812

/-! ## A396812.P13819050240185447784

`A144065(n)-A187322(n)`
-/

namespace A396812.P13819050240185447784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n - A187322 n

end

end A396812.P13819050240185447784

namespace A396812

/-- `A144065(n)-A187322(n)` -/
def P13819050240185447784.Spec : Prop :=
  ∀ n, P13819050240185447784.a n = A396812 n

end A396812

/-! ## A396812.P15316131571833056310

`A397108(n)-A396811(n)`
-/

namespace A396812.P15316131571833056310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397108 n - A396811 n

end

end A396812.P15316131571833056310

namespace A396812

/-- `A397108(n)-A396811(n)` -/
def P15316131571833056310.Spec : Prop :=
  ∀ n, P15316131571833056310.a n = A396812 n

end A396812

/-! ## A396812.P18020907580303083637

`A378790(n+1)-A026741(n)`
-/

namespace A396812.P18020907580303083637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378790 (n + 1) - A026741 n

end

end A396812.P18020907580303083637

namespace A396812

/-- `A378790(n+1)-A026741(n)` -/
def P18020907580303083637.Spec : Prop :=
  ∀ n, P18020907580303083637.a n = A396812 n

end A396812

/-! ## A396812.P17694658258241735207

`∪[A238410(n+1), A393677(n)]`
-/

namespace A396812.P17694658258241735207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393677 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396812.P17694658258241735207

namespace A396812

/-- `∪[A238410(n+1), A393677(n)]` -/
def P17694658258241735207.Spec : Prop :=
  ∀ n, (P17694658258241735207.a n : ℤ) = A396812 n

end A396812

/-! ## A396812.P10752528138308163685

`A111712(n+1)-A391537(n+1)`
-/

namespace A396812.P10752528138308163685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (n + 1) - A391537 (n + 1)

end

end A396812.P10752528138308163685

namespace A396812

/-- `A111712(n+1)-A391537(n+1)` -/
def P10752528138308163685.Spec : Prop :=
  ∀ n, P10752528138308163685.a n = A396812 n

end A396812

/-! ## A396812.P4540279711999544332

`A000982(n)-A007590(A004526(n+1))`
-/

namespace A396812.P4540279711999544332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A007590 (A004526 (n + 1)).toNat

end

end A396812.P4540279711999544332

namespace A396812

/-- `A000982(n)-A007590(A004526(n+1))` -/
def P4540279711999544332.Spec : Prop :=
  ∀ n, P4540279711999544332.a n = A396812 n

end A396812

/-! ## A396812.P12263368457915312169

`A396814(n+1)+A396811(n)-A396813(n+1)`
-/

namespace A396812.P12263368457915312169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396814 (n + 1) + (A396811 n - A396813 (n + 1))

end

end A396812.P12263368457915312169

namespace A396812

/-- `A396814(n+1)+A396811(n)-A396813(n+1)` -/
def P12263368457915312169.Spec : Prop :=
  ∀ n, P12263368457915312169.a n = A396812 n

end A396812

/-! ## A396812.P12066893314063882069

`A396814(n+1)-A215495(2*n)`
-/

namespace A396812.P12066893314063882069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396814 (n + 1) - A215495 (2 * n)

end

end A396812.P12066893314063882069

namespace A396812

/-- `A396814(n+1)-A215495(2*n)` -/
def P12066893314063882069.Spec : Prop :=
  ∀ n, P12066893314063882069.a n = A396812 n

end A396812

/-! ## A396812.P7185380213475732853

`A110654(A397108(n))`
-/

namespace A396812.P7185380213475732853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A397108 n).toNat

end

end A396812.P7185380213475732853

namespace A396812

/-- `A110654(A397108(n))` -/
def P7185380213475732853.Spec : Prop :=
  ∀ n, P7185380213475732853.a n = A396812 n

end A396812

/-!
# A396813: Lower (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A396813, the canonical program `A396813.P17031582197009336318` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396813 has offset 0).

The definition of A396813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396813.P17031582197009336318

`floor(∑[∑[n]/a(n-1)]-n)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396813

/-- `floor(∑[∑[n]/a(n-1)]-n)` -/
def P17031582197009336318.Spec : Prop :=
  ∀ n, P17031582197009336318.a n = A396813 n

theorem P17031582197009336318.correct : P17031582197009336318.Spec := by
  intro n
  simp only [A396813]

end A396813

/-! ## A396813.P7443537583478283177

`∑[A186421(n+1)-1]`
-/

namespace A396813.P7443537583478283177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396813.P7443537583478283177

namespace A396813

/-- `∑[A186421(n+1)-1]` -/
def P7443537583478283177.Spec : Prop :=
  ∀ n, P7443537583478283177.a n = A396813 n

end A396813

/-! ## A396813.P17135223248173812251

`A396814(n)-A021913(n)`
-/

namespace A396813.P17135223248173812251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396814 n - A021913 n

end

end A396813.P17135223248173812251

namespace A396813

/-- `A396814(n)-A021913(n)` -/
def P17135223248173812251.Spec : Prop :=
  ∀ n, P17135223248173812251.a n = A396813 n

end A396813

/-! ## A396813.P14775572292420901553

`A269403(n)-A166515(n)`
-/

namespace A396813.P14775572292420901553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269403 n - A166515 n

end

end A396813.P14775572292420901553

namespace A396813

/-- `A269403(n)-A166515(n)` -/
def P14775572292420901553.Spec : Prop :=
  ∀ n, P14775572292420901553.a n = A396813 n

end A396813

/-! ## A396813.P2950577443659302405

`A330707(n)-A211539(n)`
-/

namespace A396813.P2950577443659302405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 n - A211539 n

end

end A396813.P2950577443659302405

namespace A396813

/-- `A330707(n)-A211539(n)` -/
def P2950577443659302405.Spec : Prop :=
  ∀ n, P2950577443659302405.a n = A396813 n

end A396813

/-! ## A396813.P14502963240072141618

`A397107(n)-A396814(n)`
-/

namespace A396813.P14502963240072141618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 n - A396814 n

end

end A396813.P14502963240072141618

namespace A396813

/-- `A397107(n)-A396814(n)` -/
def P14502963240072141618.Spec : Prop :=
  ∀ n, P14502963240072141618.a n = A396813 n

end A396813

/-! ## A396813.P7542974485441903040

`A319390(n)-A128929(n+4)`
-/

namespace A396813.P7542974485441903040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - A128929 (n + 4)

end

end A396813.P7542974485441903040

namespace A396813

/-- `A319390(n)-A128929(n+4)` -/
def P7542974485441903040.Spec : Prop :=
  ∀ n, P7542974485441903040.a n = A396813 n

end A396813

/-! ## A396813.P9998808882728329363

`A111710(n+1)-A186353(n+1)`
-/

namespace A396813.P9998808882728329363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111710 (n + 1) - A186353 (n + 1)

end

end A396813.P9998808882728329363

namespace A396813

/-- `A111710(n+1)-A186353(n+1)` -/
def P9998808882728329363.Spec : Prop :=
  ∀ n, P9998808882728329363.a n = A396813 n

end A396813

/-! ## A396813.P11442843097029201220

`A000982(n)-A000982(A004526(n))`
-/

namespace A396813.P11442843097029201220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A000982 (A004526 n).toNat

end

end A396813.P11442843097029201220

namespace A396813

/-- `A000982(n)-A000982(A004526(n))` -/
def P11442843097029201220.Spec : Prop :=
  ∀ n, P11442843097029201220.a n = A396813 n

end A396813

/-! ## A396813.P713188308114914773

`A061925(n)-A061925(A004526(n))`
-/

namespace A396813.P713188308114914773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n - A061925 (A004526 n).toNat

end

end A396813.P713188308114914773

namespace A396813

/-- `A061925(n)-A061925(A004526(n))` -/
def P713188308114914773.Spec : Prop :=
  ∀ n, P713188308114914773.a n = A396813 n

end A396813

/-! ## A396813.P13052939130499383047

`A008794(n+1)+A007590(A004526(n))`
-/

namespace A396813.P13052939130499383047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 1) + A007590 (A004526 n).toNat

end

end A396813.P13052939130499383047

namespace A396813

/-- `A008794(n+1)+A007590(A004526(n))` -/
def P13052939130499383047.Spec : Prop :=
  ∀ n, P13052939130499383047.a n = A396813 n

end A396813

/-! ## A396813.P7595779180956732956

`A396814(n)+A397266(n)-A397267(n)`
-/

namespace A396813.P7595779180956732956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396814 n + (A397266 n - A397267 n)

end

end A396813.P7595779180956732956

namespace A396813

/-- `A396814(n)+A397266(n)-A397267(n)` -/
def P7595779180956732956.Spec : Prop :=
  ∀ n, P7595779180956732956.a n = A396813 n

end A396813

/-! ## A396813.P8810651208377085333

`A186423(n+1)-(n+1)`
-/

namespace A396813.P8810651208377085333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (n + 1) - (n + 1 : ℤ)

end

end A396813.P8810651208377085333

namespace A396813

/-- `A186423(n+1)-(n+1)` -/
def P8810651208377085333.Spec : Prop :=
  ∀ n, P8810651208377085333.a n = A396813 n

end A396813

/-! ## A396813.P12345962622737002839

`A129819(n+1)+A129819(n+1)-A004526(n+1)`
-/

namespace A396813.P12345962622737002839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 (n + 1) + (A129819 (n + 1) - A004526 (n + 1))

end

end A396813.P12345962622737002839

namespace A396813

/-- `A129819(n+1)+A129819(n+1)-A004526(n+1)` -/
def P12345962622737002839.Spec : Prop :=
  ∀ n, P12345962622737002839.a n = A396813 n

end A396813

/-! ## A396813.P131344397074659008

`A008813(A032766(n+1))-(n+2)`
-/

namespace A396813.P131344397074659008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008813 (A032766 (n + 1)).toNat - (n + 2 : ℤ)

end

end A396813.P131344397074659008

namespace A396813

/-- `A008813(A032766(n+1))-(n+2)` -/
def P131344397074659008.Spec : Prop :=
  ∀ n, P131344397074659008.a n = A396813 n

end A396813

/-! ## A396813.P16603635946301205104

`A026927(A007310(n+1))`
-/

namespace A396813.P16603635946301205104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A007310 (n + 1)).toNat

end

end A396813.P16603635946301205104

namespace A396813

/-- `A026927(A007310(n+1))` -/
def P16603635946301205104.Spec : Prop :=
  ∀ n, P16603635946301205104.a n = A396813 n

end A396813

/-! ## A396813.P12743723538764190639

`A309687(A047233(n+1))`
-/

namespace A396813.P12743723538764190639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 (A047233 (n + 1)).toNat

end

end A396813.P12743723538764190639

namespace A396813

/-- `A309687(A047233(n+1))` -/
def P12743723538764190639.Spec : Prop :=
  ∀ n, P12743723538764190639.a n = A396813 n

end A396813

/-! ## A396813.P4530219245914128931

`A026927(A038179(n+2))`
-/

namespace A396813.P4530219245914128931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A038179 (n + 2)).toNat

end

end A396813.P4530219245914128931

namespace A396813

/-- `A026927(A038179(n+2))` -/
def P4530219245914128931.Spec : Prop :=
  ∀ n, P4530219245914128931.a n = A396813 n

end A396813

/-! ## A396813.P10405394926213707842

`A025797(A092899(n))`
-/

namespace A396813.P10405394926213707842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025797 (A092899 n).toNat

end

end A396813.P10405394926213707842

namespace A396813

/-- `A025797(A092899(n))` -/
def P10405394926213707842.Spec : Prop :=
  ∀ n, P10405394926213707842.a n = A396813 n

end A396813

/-! ## A396813.P3770725984411676155

`A008794(n+1)+A004526(A008794(n))`
-/

namespace A396813.P3770725984411676155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 1) + A004526 (A008794 n).toNat

end

end A396813.P3770725984411676155

namespace A396813

/-- `A008794(n+1)+A004526(A008794(n))` -/
def P3770725984411676155.Spec : Prop :=
  ∀ n, P3770725984411676155.a n = A396813 n

end A396813

/-!
# A396814: Upper (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A396814, the canonical program `A396814.P6530181582357071457` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396814 has offset 0).

The definition of A396814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396814.P6530181582357071457

`floor(∑[(n+1)/gcd(2, n)]-n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396814

/-- `floor(∑[(n+1)/gcd(2, n)]-n)` -/
def P6530181582357071457.Spec : Prop :=
  ∀ n, P6530181582357071457.a n = A396814 n

theorem P6530181582357071457.correct : P6530181582357071457.Spec := by
  intro n
  simp only [A396814]

end A396814

/-! ## A396814.P2644498046397632052

`A396813(n)+A021913(n)`
-/

namespace A396814.P2644498046397632052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396813 n + A021913 n

end

end A396814.P2644498046397632052

namespace A396814

/-- `A396813(n)+A021913(n)` -/
def P2644498046397632052.Spec : Prop :=
  ∀ n, P2644498046397632052.a n = A396814 n

end A396814

/-! ## A396814.P2496352637078808468

`A001318(n)-A002265(n)`
-/

namespace A396814.P2496352637078808468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A002265 n

end

end A396814.P2496352637078808468

namespace A396814

/-- `A001318(n)-A002265(n)` -/
def P2496352637078808468.Spec : Prop :=
  ∀ n, P2496352637078808468.a n = A396814 n

end A396814

/-! ## A396814.P16308844337168864929

`A319390(n)-A008621(n)`
-/

namespace A396814.P16308844337168864929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - A008621 n

end

end A396814.P16308844337168864929

namespace A396814

/-- `A319390(n)-A008621(n)` -/
def P16308844337168864929.Spec : Prop :=
  ∀ n, P16308844337168864929.a n = A396814 n

end A396814

/-! ## A396814.P4463891337687976480

`A249852(n)-A210978(n)`
-/

namespace A396814.P4463891337687976480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249852 n - A210978 n

end

end A396814.P4463891337687976480

namespace A396814

/-- `A249852(n)-A210978(n)` -/
def P4463891337687976480.Spec : Prop :=
  ∀ n, P4463891337687976480.a n = A396814 n

end A396814

/-! ## A396814.P3498640544309494078

`A387355(n)-A211539(n)`
-/

namespace A396814.P3498640544309494078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387355 n - A211539 n

end

end A396814.P3498640544309494078

namespace A396814

/-- `A387355(n)-A211539(n)` -/
def P3498640544309494078.Spec : Prop :=
  ∀ n, P3498640544309494078.a n = A396814 n

end A396814

/-! ## A396814.P2005655986351961052

`A397107(n)-A396813(n)`
-/

namespace A396814.P2005655986351961052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 n - A396813 n

end

end A396814.P2005655986351961052

namespace A396814

/-- `A397107(n)-A396813(n)` -/
def P2005655986351961052.Spec : Prop :=
  ∀ n, P2005655986351961052.a n = A396814 n

end A396814

/-! ## A396814.P7747928874751044938

`A378790(n+1)-A004525(n)`
-/

namespace A396814.P7747928874751044938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378790 (n + 1) - A004525 n

end

end A396814.P7747928874751044938

namespace A396814

/-- `A378790(n+1)-A004525(n)` -/
def P7747928874751044938.Spec : Prop :=
  ∀ n, P7747928874751044938.a n = A396814 n

end A396814

/-! ## A396814.P1710022790514369940

`A001318(n)-A004526(A004526(n))`
-/

namespace A396814.P1710022790514369940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A004526 (A004526 n).toNat

end

end A396814.P1710022790514369940

namespace A396814

/-- `A001318(n)-A004526(A004526(n))` -/
def P1710022790514369940.Spec : Prop :=
  ∀ n, P1710022790514369940.a n = A396814 n

end A396814

/-! ## A396814.P4812048375076192551

`A000982(n)-A007590(A004526(n))`
-/

namespace A396814.P4812048375076192551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A007590 (A004526 n).toNat

end

end A396814.P4812048375076192551

namespace A396814

/-- `A000982(n)-A007590(A004526(n))` -/
def P4812048375076192551.Spec : Prop :=
  ∀ n, P4812048375076192551.a n = A396814 n

end A396814

/-! ## A396814.P10455225044222157632

`A109613(A186423(n+1))-(n+1)`
-/

namespace A396814.P10455225044222157632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A186423 (n + 1)).toNat - (n + 1 : ℤ)

end

end A396814.P10455225044222157632

namespace A396814

/-- `A109613(A186423(n+1))-(n+1)` -/
def P10455225044222157632.Spec : Prop :=
  ∀ n, P10455225044222157632.a n = A396814 n

end A396814

/-! ## A396814.P2209538190172713052

`A240828(A109613(A186423(n+1)))-n`
-/

namespace A396814.P2209538190172713052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (A109613 (A186423 (n + 1)).toNat).toNat - (n : ℤ)

end

end A396814.P2209538190172713052

namespace A396814

/-- `A240828(A109613(A186423(n+1)))-n` -/
def P2209538190172713052.Spec : Prop :=
  ∀ n, P2209538190172713052.a n = A396814 n

end A396814

/-! ## A396814.P6678945951479051400

`A110654(A397107(n))`
-/

namespace A396814.P6678945951479051400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A397107 n).toNat

end

end A396814.P6678945951479051400

namespace A396814

/-- `A110654(A397107(n))` -/
def P6678945951479051400.Spec : Prop :=
  ∀ n, P6678945951479051400.a n = A396814 n

end A396814

/-! ## A396814.P15378651437785583201

`A004526(A001082(n+2))-n`
-/

namespace A396814.P15378651437785583201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001082 (n + 2)).toNat - (n : ℤ)

end

end A396814.P15378651437785583201

namespace A396814

/-- `A004526(A001082(n+2))-n` -/
def P15378651437785583201.Spec : Prop :=
  ∀ n, P15378651437785583201.a n = A396814 n

end A396814

/-!
# A396816: a(n) is the maximum size of a subset of the cyclic group Z/nZ that can be partitioned into three sum-free sets.

The programs for A396816, there is no canonical definition to state claims against.
-/

/-! ## A396816.P15631570581558138155

`∑[A092220(∑[A072545(3*n+1)+1])+1]`
-/

namespace A396816.P15631570581558138155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 (3 * n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396816.P15631570581558138155

/-!
# A396824: Numbers with no initial substring divisible by 3.

The programs for A396824, there is no canonical definition to state claims against.
-/

/-! ## A396824.P17435009773776500305

`record[A329424(n+1)]`
-/

namespace A396824.P17435009773776500305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396824.P17435009773776500305

/-! ## A396824.P3671775175240753762

`eq[n, A329424(A028310(n))]`
-/

namespace A396824.P3671775175240753762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396824.P3671775175240753762

/-! ## A396824.P10623075384218669919

`eq[A257174(n), A329424(n)]`
-/

namespace A396824.P10623075384218669919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396824.P10623075384218669919

/-! ## A396824.P1987509180575097720

`eq[A130509(n+1), A329424(n)]`
-/

namespace A396824.P1987509180575097720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396824.P1987509180575097720

/-! ## A396824.P15813996247198379882

`eq[A147534(n+1), A329424(n)]`
-/

namespace A396824.P15813996247198379882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396824.P15813996247198379882

/-!
# A396825: Positive integers that don't occur in A397366.

The programs for A396825, there is no canonical definition to state claims against.
-/

/-! ## A396825.P16552464141901939836

`eq[A087889(n+1), A151925(n+1)]`
-/

namespace A396825.P16552464141901939836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396825.P16552464141901939836

/-! ## A396825.P6413334918428942276

`lt[A357187(∏{p}[n+1, #+1]), A357187(n)]`
-/

namespace A396825.P6413334918428942276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A396825.P6413334918428942276

/-! ## A396825.P5922761505086166169

`lt[A221645(A000203(n+4)), A000089(n+1)]`
-/

namespace A396825.P5922761505086166169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221645 (A000203 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396825.P5922761505086166169

/-!
# A396829: a(n) is the least number of prime factors for any squarefree abundant number with prime(n) (the n-th prime) as its least prime factor.

The programs for A396829, there is no canonical definition to state claims against.
-/

/-! ## A396829.P16073430437545738091

`A007707(n+1)-n`
-/

namespace A396829.P16073430437545738091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - (n : ℤ)

end

end A396829.P16073430437545738091

/-! ## A396829.P17851849272171292989

`A007684(n+1)+A000007(n)-n`
-/

namespace A396829.P17851849272171292989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (n + 1) + (A000007 n - (n : ℤ))

end

end A396829.P17851849272171292989

/-! ## A396829.P12003143775584354105

`A354871(A007708(n+1))-n`
-/

namespace A396829.P12003143775584354105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354871 (A007708 (n + 1)).toNat - (n : ℤ)

end

end A396829.P12003143775584354105

/-!
# A396830: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} gcd(x_1, x_2, x_3, x_4, n)/gcd(x_1, x_2, x_3, x_4, x_5, n).

The programs for A396830, there is no canonical definition to state claims against.
-/

/-! ## A396830.P2907240804271392718

`∑{d}[n+1, A002618(#)*A372961((n+1)/#)]`
-/

namespace A396830.P2907240804271392718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396830.P2907240804271392718

/-! ## A396830.P12884593798478594136

`∑{d}[n+1, A115224(#)*A373059((n+1)/#)]`
-/

namespace A396830.P12884593798478594136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396830.P12884593798478594136

/-! ## A396830.P9557666501578842314

`∑{d}[n+1, A328641(#)*A372927((n+1)/#)]`
-/

namespace A396830.P9557666501578842314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A372927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396830.P9557666501578842314

/-!
# A396831: a(n) is the n-th digit after the decimal point in the decimal expansion of the natural logarithm of n.

The programs for A396831, the canonical program `A396831.P9098142302927561969` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396831 has offset 1).

The definition of A396831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396831.P9098142302927561969

`floor(10^(n+1)*(log(n+1)-floor(log(n+1))))%10`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396831

/-- `floor(10^(n+1)*(log(n+1)-floor(log(n+1))))%10` -/
def P9098142302927561969.Spec : Prop :=
  ∀ n, P9098142302927561969.a n = A396831 (n + 1)

theorem P9098142302927561969.correct : P9098142302927561969.Spec := by
  intro n
  simp only [A396831, Nat.add_sub_cancel]

end A396831

/-!
# A396833: The constant coefficient of (x + y + y^-1 + x^-1 + x^-1*y^-1)^n.

The programs for A396833, there is no canonical definition to state claims against.
-/

/-! ## A396833.P7619382307661926039

`A236933(A265066(a(n-2)))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A396833.P7619382307661926039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  A236933 (A265066 (a (n - 2)).toNat).toNat

end

end A396833.P7619382307661926039

/-! ## A396833.P15059113976347753509

`A002182(n+1)*A333224(A000166(n))`
-/

namespace A396833.P15059113976347753509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) * A333224 (A000166 n).toNat

end

end A396833.P15059113976347753509

/-!
# A396834: Lower (2/3,1/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A396834, the canonical program `A396834.P5557126064486009035` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396834 has offset 0).

The definition of A396834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396834.P5557126064486009035

`floor(a(n-1)+n*gcd(2, n)/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396834

/-- `floor(a(n-1)+n*gcd(2, n)/3)` -/
def P5557126064486009035.Spec : Prop :=
  ∀ n, P5557126064486009035.a n = A396834 n

theorem P5557126064486009035.correct : P5557126064486009035.Spec := by
  intro n
  simp only [A396834]

end A396834

/-! ## A396834.P5758716485390161088

`∑[floor(lcm(n+1, 2*n)/(2*n+n+2))]`
-/

namespace A396834.P5758716485390161088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (2 * n) : ℚ) / (2 * n + (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396834.P5758716485390161088

namespace A396834

/-- `∑[floor(lcm(n+1, 2*n)/(2*n+n+2))]` -/
def P5758716485390161088.Spec : Prop :=
  ∀ n, P5758716485390161088.a n = A396834 n

end A396834

/-! ## A396834.P12413791602853130717

`A006578(n)-A260708(n)`
-/

namespace A396834.P12413791602853130717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n - A260708 n

end

end A396834.P12413791602853130717

namespace A396834

/-- `A006578(n)-A260708(n)` -/
def P12413791602853130717.Spec : Prop :=
  ∀ n, P12413791602853130717.a n = A396834 n

end A396834

/-! ## A396834.P2690968578021503755

`A000982(n)-A394246(n)`
-/

namespace A396834.P2690968578021503755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A394246 n

end

end A396834.P2690968578021503755

namespace A396834

/-- `A000982(n)-A394246(n)` -/
def P2690968578021503755.Spec : Prop :=
  ∀ n, P2690968578021503755.a n = A396834 n

end A396834

/-! ## A396834.P11743085924561306936

`A396835(n)-A354354(n)`
-/

namespace A396834.P11743085924561306936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396835 n - A354354 n

end

end A396834.P11743085924561306936

namespace A396834

/-- `A396835(n)-A354354(n)` -/
def P11743085924561306936.Spec : Prop :=
  ∀ n, P11743085924561306936.a n = A396834 n

end A396834

/-! ## A396834.P13897041219165571376

`A008794(n+1)+A008794(n)-A394246(n)`
-/

namespace A396834.P13897041219165571376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 1) + (A008794 n - A394246 n)

end

end A396834.P13897041219165571376

namespace A396834

/-- `A008794(n+1)+A008794(n)-A394246(n)` -/
def P13897041219165571376.Spec : Prop :=
  ∀ n, P13897041219165571376.a n = A396834 n

end A396834

/-! ## A396834.P11303705506439972904

`A008802(A047270(n+1))`
-/

namespace A396834.P11303705506439972904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008802 (A047270 (n + 1)).toNat

end

end A396834.P11303705506439972904

namespace A396834

/-- `A008802(A047270(n+1))` -/
def P11303705506439972904.Spec : Prop :=
  ∀ n, P11303705506439972904.a n = A396834 n

end A396834

/-! ## A396834.P3719208495283394313

`A002264(A397108(n))`
-/

namespace A396834.P3719208495283394313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A397108 n).toNat

end

end A396834.P3719208495283394313

namespace A396834

/-- `A002264(A397108(n))` -/
def P3719208495283394313.Spec : Prop :=
  ∀ n, P3719208495283394313.a n = A396834 n

end A396834

/-! ## A396834.P17458594845496729224

`A008615(A354594(n))`
-/

namespace A396834.P17458594845496729224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A354594 n).toNat

end

end A396834.P17458594845496729224

namespace A396834

/-- `A008615(A354594(n))` -/
def P17458594845496729224.Spec : Prop :=
  ∀ n, P17458594845496729224.a n = A396834 n

end A396834

/-! ## A396834.P18009713426060487238

`A342696(A272705(n))`
-/

namespace A396834.P18009713426060487238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A272705 n).toNat

end

end A396834.P18009713426060487238

namespace A396834

/-- `A342696(A272705(n))` -/
def P18009713426060487238.Spec : Prop :=
  ∀ n, P18009713426060487238.a n = A396834 n

end A396834

/-!
# A396835: Upper (2/3,1/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A396835, the canonical program `A396835.P7164218109678521147` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396835 has offset 0).

The definition of A396835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396835.P7164218109678521147

`floor((6*n²-2*n+15+(-1)^n*(2*n-7))/24)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396835

/-- `floor((6*n²-2*n+15+(-1)^n*(2*n-7))/24)` -/
def P7164218109678521147.Spec : Prop :=
  ∀ n, P7164218109678521147.a n = A396835 n

theorem P7164218109678521147.correct : P7164218109678521147.Spec := by
  intro n
  simp only [A396835]

end A396835

/-! ## A396835.P16758653668970471058

`A396834(n)+A354354(n)`
-/

namespace A396835.P16758653668970471058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396834 n + A354354 n

end

end A396835.P16758653668970471058

namespace A396835

/-- `A396834(n)+A354354(n)` -/
def P16758653668970471058.Spec : Prop :=
  ∀ n, P16758653668970471058.a n = A396835 n

end A396835

/-! ## A396835.P10104901635484034046

`A396834(n)+abs(A322796(n))`
-/

namespace A396835.P10104901635484034046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396834 n + |A322796 n|

end

end A396835.P10104901635484034046

namespace A396835

/-- `A396834(n)+abs(A322796(n))` -/
def P10104901635484034046.Spec : Prop :=
  ∀ n, P10104901635484034046.a n = A396835 n

end A396835

/-! ## A396835.P262963763489113340

`A036407(A032766(n))`
-/

namespace A396835.P262963763489113340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 (A032766 n).toNat

end

end A396835.P262963763489113340

namespace A396835

/-- `A036407(A032766(n))` -/
def P262963763489113340.Spec : Prop :=
  ∀ n, P262963763489113340.a n = A396835 n

end A396835

/-! ## A396835.P13967111398834060132

`A396834(n+2)-A215495(2*n)`
-/

namespace A396835.P13967111398834060132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396834 (n + 2) - A215495 (2 * n)

end

end A396835.P13967111398834060132

namespace A396835

/-- `A396834(n+2)-A215495(2*n)` -/
def P13967111398834060132.Spec : Prop :=
  ∀ n, P13967111398834060132.a n = A396835 n

end A396835

/-! ## A396835.P15830662900226169351

`A396834(n)+A322796(n²)`
-/

namespace A396835.P15830662900226169351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396834 n + A322796 (n ^ 2)

end

end A396835.P15830662900226169351

namespace A396835

/-- `A396834(n)+A322796(n²)` -/
def P15830662900226169351.Spec : Prop :=
  ∀ n, P15830662900226169351.a n = A396835 n

end A396835

/-!
# A396838: G.f. A(x) satisfies (n+1)^2 * a(n) = n*(n+2)/2 * [x^n] A(x)^2 for n > 1.

The programs for A396838, there is no canonical definition to state claims against.
-/

/-! ## A396838.P10188561723417175893

`A057164(A356633(n)²)`
-/

namespace A396838.P10188561723417175893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A356633 n ^ 2).toNat

end

end A396838.P10188561723417175893

/-!
# A396840: Triangle of numbers T(n,k) = H(n)/(H(k)*H(n-k)) read by rows as k = 0..n for row n >= 0, where H(n) = Product_{k=0..n} k^k is the hyperfactorial of n (A002109).

The programs for A396840, there is no canonical definition to state claims against.
-/

/-! ## A396840.P7087639660042255689

`A229213(A114176(n))`
-/

namespace A396840.P7087639660042255689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229213 (A114176 n).toNat

end

end A396840.P7087639660042255689

/-!
# A396843: G.f. A(x) satisfies A( x*A(x) - 3*x*A(x)^2 ) = x^2.

The programs for A396843, there is no canonical definition to state claims against.
-/

/-! ## A396843.P5180246614014909609

`∑[A103977(∑[A277403(n+1)])]`
-/

namespace A396843.P5180246614014909609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396843.P5180246614014909609

/-!
# A396852: Numbers k such that bigomega(k) > omega(k)^2.

The programs for A396852, there is no canonical definition to state claims against.
-/

/-! ## A396852.P7628844324344336824

`filter[A340656(n+1), A351564(#)]`
-/

namespace A396852.P7628844324344336824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A396852.P7628844324344336824

/-! ## A396852.P9872520116835490438

`∩[A069189(n+1), A340656(n+1)]`
-/

namespace A396852.P9872520116835490438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396852.P9872520116835490438

/-! ## A396852.P11221696564559232602

`∩[A082377(n+1), A340656(n+1)]`
-/

namespace A396852.P11221696564559232602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396852.P11221696564559232602

/-! ## A396852.P7364280616216211919

`∩[A130091(n+1), A340656(n+1)]`
-/

namespace A396852.P7364280616216211919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396852.P7364280616216211919

/-! ## A396852.P5959168447554352541

`∩[A182852(n+1), A340656(n+1)]`
-/

namespace A396852.P5959168447554352541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396852.P5959168447554352541

/-!
# A396853: Primes p such that both Mordell equations y^2 = x^3 + p and y^2 = x^3 - p have integer solutions.

The programs for A396853, there is no canonical definition to state claims against.
-/

/-! ## A396853.P5055285831096020519

`∩[A161681(n+1), A318932(n+1)]`
-/

namespace A396853.P5055285831096020519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396853.P5055285831096020519

/-! ## A396853.P15527971710471516117

`∩[A179164(n+1), A386341(n+1)]`
-/

namespace A396853.P15527971710471516117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396853.P15527971710471516117

/-!
# A396856: Union of primes and perfect powers.

The programs for A396856, there is no canonical definition to state claims against.
-/

/-! ## A396856.P8891420244455090768

`∪[A000040(n+1), ∑[A076412(n)]]`
-/

namespace A396856.P8891420244455090768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396856.P8891420244455090768

/-! ## A396856.P11244191795442768396

`∪[∑[A076412(n)], A246655(n+1)]`
-/

namespace A396856.P11244191795442768396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A396856.P11244191795442768396

/-! ## A396856.P1519790126265988308

`∪[A000040(n+1), A001597(n+1)]`
-/

namespace A396856.P1519790126265988308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396856.P1519790126265988308

/-! ## A396856.P16127905371952624525

`∪[A001597(n+1), A050376(n+1)]`
-/

namespace A396856.P16127905371952624525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396856.P16127905371952624525

/-! ## A396856.P1969086233272678582

`∪[A001597(n+1), A096165(n+1)]`
-/

namespace A396856.P1969086233272678582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396856.P1969086233272678582

/-! ## A396856.P9926815493836872491

`∪[abs(A157985(n+1)), A000040(n+1)]`
-/

namespace A396856.P9926815493836872491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396856.P9926815493836872491

/-! ## A396856.P8462205307240292154

`∪[abs(A157985(n+1)), A246655(n+1)]`
-/

namespace A396856.P8462205307240292154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396856.P8462205307240292154

/-! ## A396856.P18185949586600112654

`∪[∪[(n+1)², A076467(n+1)], A000040(n+1)]`
-/

namespace A396856.P18185949586600112654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A396856.P18185949586600112654

/-! ## A396856.P11350533554344922023

`∪[∪[(n+1)², A076467(n+1)], A246655(n+1)]`
-/

namespace A396856.P11350533554344922023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A396856.P11350533554344922023

/-!
# A396858: The number of n-colorings of the faces of the pyritohedron up to rotation and reflection.

The programs for A396858, the canonical program `A396858.P7139502328343253310` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396858 has offset 0).

The definition of A396858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396858.P7139502328343253310

`(n^12+3*n^8+8*n²+8*n^4+4*n^6)/24`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396858

/-- `(n^12+3*n^8+8*n²+8*n^4+4*n^6)/24` -/
def P7139502328343253310.Spec : Prop :=
  ∀ n, P7139502328343253310.a n = (A396858 n : ℚ)

end A396858

/-!
# A396860: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of e.g.f. B(x)^k, where B(x) is the e.g.f. of A087961.

The programs for A396860, there is no canonical definition to state claims against.
-/

/-! ## A396860.P10976981213521341349

`A350530(n+1)-A294937(A128155(n+1))`
-/

namespace A396860.P10976981213521341349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350530 (n + 1) - A294937 (A128155 (n + 1)).toNat

end

end A396860.P10976981213521341349

/-!
# A396863: Discriminants of real quadratic fields with nontrivial Pólya group.

The programs for A396863, there is no canonical definition to state claims against.
-/

/-! ## A396863.P11769708828187136219

`∩[A035120(n+1), A354235(n+1)]`
-/

namespace A396863.P11769708828187136219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396863.P11769708828187136219

/-! ## A396863.P10504982384605181336

`∩[A035120(n+1), A355301(n+1)]`
-/

namespace A396863.P10504982384605181336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396863.P10504982384605181336

/-! ## A396863.P4815118411815514152

`∩[A094619(n+1), A354235(n+1)]`
-/

namespace A396863.P4815118411815514152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396863.P4815118411815514152

/-! ## A396863.P2790759161817102354

`∩[A094619(n+1), A355301(n+1)]`
-/

namespace A396863.P2790759161817102354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396863.P2790759161817102354

/-!
# A396865: 2-rank of the Pólya group of real quadratic field with discriminant A003658(n), n >= 2.

The programs for A396865, there is no canonical definition to state claims against.
-/

/-! ## A396865.P17009688652998365005

`log2(A396866(n+2))`
-/

namespace A396865.P17009688652998365005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A396866 (n + 2) : ℝ)

end

end A396865.P17009688652998365005

/-! ## A396865.P2305560686496245588

`A088357(n)%A396866(n+2)`
-/

namespace A396865.P2305560686496245588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088357 n) (A396866 (n + 2))

end

end A396865.P2305560686496245588

/-! ## A396865.P2975636980678967740

`A033844(n)%A396866(n+2)`
-/

namespace A396865.P2975636980678967740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033844 n) (A396866 (n + 2))

end

end A396865.P2975636980678967740

/-! ## A396865.P9130448217961108155

`A051439(n)%A396866(n+2)`
-/

namespace A396865.P9130448217961108155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051439 n) (A396866 (n + 2))

end

end A396865.P9130448217961108155

/-! ## A396865.P6153276348824456159

`A002189(n)%A396866(n+2)`
-/

namespace A396865.P6153276348824456159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002189 n) (A396866 (n + 2))

end

end A396865.P6153276348824456159

/-! ## A396865.P5253632347554126733

`A000413(n)%A396866(n+2)`
-/

namespace A396865.P5253632347554126733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000413 n) (A396866 (n + 2))

end

end A396865.P5253632347554126733

/-! ## A396865.P2978376629923663259

`A089998(n)%A396866(n+2)`
-/

namespace A396865.P2978376629923663259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089998 n) (A396866 (n + 2))

end

end A396865.P2978376629923663259

/-! ## A396865.P2743550869276659961

`A243496(n)%A003652(n+2)`
-/

namespace A396865.P2743550869276659961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243496 n) (A003652 (n + 2))

end

end A396865.P2743550869276659961

/-! ## A396865.P10099300505188023348

`A045535(n)%A396866(n+2)`
-/

namespace A396865.P10099300505188023348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045535 n) (A396866 (n + 2))

end

end A396865.P10099300505188023348

/-!
# A396866: Order of the Pólya group of real quadratic field with discriminant A003658(n), n >= 2.

The programs for A396866, there is no canonical definition to state claims against.
-/

/-! ## A396866.P12140883251487989192

`2^A396865(n+2)`
-/

namespace A396866.P12140883251487989192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A396865 (n + 2) : ℤ)

end

end A396866.P12140883251487989192

/-! ## A396866.P6779100385174980078

`A000079(abs(abs(A396865(n+2)-2*n)-2*n))`
-/

namespace A396866.P6779100385174980078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |(|A396865 (n + 2) - (2 * n : ℤ)| - (2 * n : ℤ))|.toNat

end

end A396866.P6779100385174980078

/-! ## A396866.P1088634183462355878

`A000689(abs(abs(A396865(n+2)-2*n)-2*n))`
-/

namespace A396866.P1088634183462355878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 |(|A396865 (n + 2) - (2 * n : ℤ)| - (2 * n : ℤ))|.toNat

end

end A396866.P1088634183462355878

/-! ## A396866.P14673288802261619421

`A008952(abs(abs(A396865(n+2)-2*n)-2*n))`
-/

namespace A396866.P14673288802261619421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 |(|A396865 (n + 2) - (2 * n : ℤ)| - (2 * n : ℤ))|.toNat

end

end A396866.P14673288802261619421

/-! ## A396866.P16914605317422587816

`A001285(A161448(3*n+5)*A396865(n+2))`
-/

namespace A396866.P16914605317422587816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A161448 (3 * n + 5) * A396865 (n + 2)).toNat

end

end A396866.P16914605317422587816

/-! ## A396866.P18007337074167332660

`A396865(n+2)+A000035(A145016(n+1))`
-/

namespace A396866.P18007337074167332660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396865 (n + 2) + A000035 (A145016 (n + 1)).toNat

end

end A396866.P18007337074167332660

/-! ## A396866.P9842329694274519207

`A396865(n+2)+A003415(A005383(n+1))`
-/

namespace A396866.P9842329694274519207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396865 (n + 2) + A003415 (A005383 (n + 1)).toNat

end

end A396866.P9842329694274519207

/-! ## A396866.P10821537844511349585

`A396865(n+2)+A297321(A000217(n))`
-/

namespace A396866.P10821537844511349585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396865 (n + 2) + A297321 (A000217 n).toNat

end

end A396866.P10821537844511349585

/-! ## A396866.P14719816781157340832

`A396865(n+2)+A133620(A238713(n+1))`
-/

namespace A396866.P14719816781157340832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396865 (n + 2) + A133620 (A238713 (n + 1)).toNat

end

end A396866.P14719816781157340832

/-! ## A396866.P541347978736119916

`A396865(n+2)+A055396(A000695(2*(n+1)))`
-/

namespace A396866.P541347978736119916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396865 (n + 2) + A055396 (A000695 (2 * (n + 1))).toNat

end

end A396866.P541347978736119916

/-!
# A396868: Least fundamental discriminant D of real quadratic fields such that omega(D) = n, where omega = A001221.

The programs for A396868, there is no canonical definition to state claims against.
-/

/-! ## A396868.P5369907410132674699

`A145398(A098026(n+1))+A098026(n+1)`
-/

namespace A396868.P5369907410132674699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145398 (A098026 (n + 1)).toNat + A098026 (n + 1)

end

end A396868.P5369907410132674699

/-!
# A396870: a(n) = 4*3^(2*n+1) - floor(2*3^(n+1/2))^2.

The programs for A396870, the canonical program `A396870.P11015378271159518528` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396870 has offset 0).

The definition of A396870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^(2*n+1)-floor(2*3^(n+1/2))²` (program `A396870.P11015378271159518528`, by `A396870.P11015378271159518528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396870.P11015378271159518528

`4*3^(2*n+1)-floor(2*3^(n+1/2))²`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396870

/-- `4*3^(2*n+1)-floor(2*3^(n+1/2))²` -/
def P11015378271159518528.Spec : Prop :=
  ∀ n, P11015378271159518528.a n = A396870 n

theorem P11015378271159518528.correct : P11015378271159518528.Spec := by
  intro n
  simp only [A396870]

end A396870

/-! ## A396870.P3174884774211147205

`A120864(Δ[3^n])`
-/

namespace A396870.P3174884774211147205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120864 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A396870.P3174884774211147205

namespace A396870

/-- `A120864(Δ[3^n])` -/
def P3174884774211147205.Spec : Prop :=
  ∀ n, P3174884774211147205.a n = A396870 n

end A396870

/-!
# A396871: a(n) = 4*5^(2*n+1) - floor(2*5^(n+1/2))^2.

The programs for A396871, the canonical program `A396871.P10312368681915669094` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396871 has offset 0).

The definition of A396871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^(2*n+1)-floor(2*5^(n+1/2))²` (program `A396871.P10312368681915669094`, by `A396871.P10312368681915669094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396871.P10312368681915669094

`4*5^(2*n+1)-floor(2*5^(n+1/2))²`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396871

/-- `4*5^(2*n+1)-floor(2*5^(n+1/2))²` -/
def P10312368681915669094.Spec : Prop :=
  ∀ n, P10312368681915669094.a n = A396871 n

theorem P10312368681915669094.correct : P10312368681915669094.Spec := by
  intro n
  simp only [A396871]

end A396871

/-!
# A396872: a(n) = 4*7^(2*n+1) - floor(2*7^(n+1/2))^2.

The programs for A396872, the canonical program `A396872.P17686248699572515404` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396872 has offset 0).

The definition of A396872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*7^(2*n+1)-floor(2*7^(n+1/2))²` (program `A396872.P17686248699572515404`, by `A396872.P17686248699572515404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396872.P17686248699572515404

`4*7^(2*n+1)-floor(2*7^(n+1/2))²`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396872

/-- `4*7^(2*n+1)-floor(2*7^(n+1/2))²` -/
def P17686248699572515404.Spec : Prop :=
  ∀ n, P17686248699572515404.a n = A396872 n

theorem P17686248699572515404.correct : P17686248699572515404.Spec := by
  intro n
  simp only [A396872]

end A396872

/-!
# A396873: Number of relations on an n-set whose minimum-deletion-to-transitivity equals three.

The programs for A396873, there is no canonical definition to state claims against.
-/

/-! ## A396873.P11658496699803611958

`A263764(A099752(n))`
-/

namespace A396873.P11658496699803611958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 (A099752 n).toNat

end

end A396873.P11658496699803611958

/-!
# A396878: Primes p such that the concatenation of p-1 and p is prime.

The programs for A396878, there is no canonical definition to state claims against.
-/

/-! ## A396878.P15811330164707273432

`∩[A046136(n+1), A277727(n+1)]`
-/

namespace A396878.P15811330164707273432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396878.P15811330164707273432

/-! ## A396878.P1584386770985539934

`∩[A015913(n+1), A351173(n+1)]`
-/

namespace A396878.P1584386770985539934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396878.P1584386770985539934

/-! ## A396878.P4937944477627730261

`∩[A046136(n+1), A351173(n+1)]`
-/

namespace A396878.P4937944477627730261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396878.P4937944477627730261

/-!
# A396882: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection such that all three triangles lie in the same row parallel to a side of the grid.

The programs for A396882, there is no canonical definition to state claims against.
-/

/-! ## A396882.P12036401513087199255

`A396762(n+1)-A071239(n)`
-/

namespace A396882.P12036401513087199255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396762 (n + 1) - A071239 n

end

end A396882.P12036401513087199255

/-!
# A396887: a(n) = (n-3)*a(n-1) + (n-1)*a(n-3); a(0) = 0, a(1) = 0, a(2) = 1.

The programs for A396887, the canonical program `A396887.P14464114701607586535` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396887 has offset 0).

The definition of A396887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-3)*a(n-1)+(n-1)*a(n-3)` (program `A396887.P14464114701607586535`, by `A396887.P14464114701607586535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396887.P14464114701607586535

`(n-3)*a(n-1)+(n-1)*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396887

/-- `(n-3)*a(n-1)+(n-1)*a(n-3)` -/
def P14464114701607586535.Spec : Prop :=
  ∀ n, P14464114701607586535.a n = A396887 n

theorem P14464114701607586535.correct : P14464114701607586535.Spec := by
  intro n
  simp only [A396887]

end A396887

/-!
# A396889: Number of polynomials f(x) of degree <= n with f(0) = 1 and coefficients in {0, 1, ..., n} such that f(k) is prime for all k = 1, 2, ..., n.

The programs for A396889, there is no canonical definition to state claims against.
-/

/-! ## A396889.P2608599742897847681

`A206772(A002360(n))`
-/

namespace A396889.P2608599742897847681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206772 (A002360 n).toNat

end

end A396889.P2608599742897847681

/-! ## A396889.P8012093952604047418

`∑[A354933(∏[A092261(n+1)+1]/2)]`
-/

namespace A396889.P8012093952604047418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396889.P8012093952604047418

/-!
# A396890: Convolution of A000290 and A000219.

The programs for A396890, there is no canonical definition to state claims against.
-/

/-! ## A396890.P17094024229337622810

`A087063(A100335(n))`
-/

namespace A396890.P17094024229337622810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087063 (A100335 n).toNat

end

end A396890.P17094024229337622810

/-! ## A396890.P11197927343020488790

`∑[A076411(∑[A094259(n)])]`
-/

namespace A396890.P11197927343020488790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396890.P11197927343020488790

/-!
# A396891: Convolution of A001157 and A000219.

The programs for A396891, there is no canonical definition to state claims against.
-/

/-! ## A396891.P14799663740629020724

`n*A000219(n)`
-/

namespace A396891.P14799663740629020724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000219 n

end

end A396891.P14799663740629020724

/-! ## A396891.P13395126946658118375

`n*(∑[A191659(n)]+1-A191659(n))`
-/

namespace A396891.P13395126946658118375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A191659 n))

end

end A396891.P13395126946658118375

/-! ## A396891.P8199414754450969944

`n*(A091360(n+1)-(A191659(n)+A091360(n)))`
-/

namespace A396891.P8199414754450969944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A091360 (n + 1) - (A191659 n + A091360 n))

end

end A396891.P8199414754450969944

/-! ## A396891.P15844720497150066281

`n*(A277963(n+1)+A277963(n)-A191659(n))`
-/

namespace A396891.P15844720497150066281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A277963 (n + 1) + (A277963 n - A191659 n))

end

end A396891.P15844720497150066281

/-! ## A396891.P18296420116452268636

`n*(A309267(n+1)+A091360(n)-A091360(n+1))`
-/

namespace A396891.P18296420116452268636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A309267 (n + 1) + (A091360 n - A091360 (n + 1)))

end

end A396891.P18296420116452268636

/-! ## A396891.P17127628429710263877

`n*sqrt(A383354(n))`
-/

namespace A396891.P17127628429710263877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A383354 n : ℝ)

end

end A396891.P17127628429710263877

/-! ## A396891.P9179135100828933375

`n*(A000712(n)+A116600(n)-A011782(n))`
-/

namespace A396891.P9179135100828933375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000712 n + (A116600 n - A011782 n))

end

end A396891.P9179135100828933375

/-! ## A396891.P18290094470031960760

`n*A242642(A179865(n+1))`
-/

namespace A396891.P18290094470031960760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242642 (A179865 (n + 1)).toNat

end

end A396891.P18290094470031960760

/-! ## A396891.P12982400593344744776

`n*A242642(A000007(n)+∑[n])`
-/

namespace A396891.P12982400593344744776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242642 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A396891.P12982400593344744776

/-! ## A396891.P16274678781261547583

`n*A242642(or(∑[n], A000007(n)))`
-/

namespace A396891.P16274678781261547583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242642 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000007 n)).toNat

end

end A396891.P16274678781261547583

/-! ## A396891.P17068498442631880022

`n*A257673(A238531(n+1)-1)`
-/

namespace A396891.P17068498442631880022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257673 (A238531 (n + 1) - 1).toNat

end

end A396891.P17068498442631880022

/-! ## A396891.P13358585481441506693

`n*A255961(A165157(2*n+1))`
-/

namespace A396891.P13358585481441506693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A255961 (A165157 (2 * n + 1)).toNat

end

end A396891.P13358585481441506693

/-!
# A396892: Number of unlabeled maximal 5-degenerate graphs on n vertices.

The programs for A396892, there is no canonical definition to state claims against.
-/

/-! ## A396892.P5707593310771154040

`A392919(A026938(n))`
-/

namespace A396892.P5707593310771154040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392919 (A026938 n).toNat

end

end A396892.P5707593310771154040

/-! ## A396892.P17982104065161232456

`A365543(A373578(n)-A174522(n))`
-/

namespace A396892.P17982104065161232456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (A373578 n - A174522 n).toNat

end

end A396892.P17982104065161232456

/-!
# A396893: Number of unlabeled maximal 6-degenerate graphs on n vertices.

The programs for A396893, there is no canonical definition to state claims against.
-/

/-! ## A396893.P6989469834477554351

`A364062(A092203(n))`
-/

namespace A396893.P6989469834477554351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A092203 n).toNat

end

end A396893.P6989469834477554351

/-! ## A396893.P11479978627979717411

`A364062(A241090(3*n))`
-/

namespace A396893.P11479978627979717411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A241090 (3 * n)).toNat

end

end A396893.P11479978627979717411

/-!
# A396894: Number of unlabeled maximal 7-degenerate graphs on n vertices.

The programs for A396894, there is no canonical definition to state claims against.
-/

/-! ## A396894.P14300609490648491943

`A342499(A342494(A274199(n+1))-(n+1))`
-/

namespace A396894.P14300609490648491943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342499 (A342494 (A274199 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A396894.P14300609490648491943

/-! ## A396894.P9411341917795862600

`or(A000720(A048143(n)), A373366(2*(n+1)))`
-/

namespace A396894.P9411341917795862600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000720 (A048143 n).toNat) (A373366 (2 * (n + 1)))

end

end A396894.P9411341917795862600

/-!
# A396895: a(n) = 4*p - floor(2*sqrt(p))^2, where p = prime(n).

The programs for A396895, there is no canonical definition to state claims against.
-/

/-! ## A396895.P6632982642532161262

`A396869(A027883(n+1))`
-/

namespace A396895.P6632982642532161262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396869 (A027883 (n + 1)).toNat

end

end A396895.P6632982642532161262

/-! ## A396895.P12051408962264771541

`A053186(A001749(n+1))`
-/

namespace A396895.P12051408962264771541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A001749 (n + 1)).toNat

end

end A396895.P12051408962264771541

/-! ## A396895.P8823631858463511034

`A053186(4*A000040(n+1))`
-/

namespace A396895.P8823631858463511034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (4 * A000040 (n + 1)).toNat

end

end A396895.P8823631858463511034

/-! ## A396895.P16773417579678434493

`A071797(4*A000040(n+1))`
-/

namespace A396895.P16773417579678434493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (4 * A000040 (n + 1)).toNat

end

end A396895.P16773417579678434493

/-!
# A396897: a(n) = n divided by the largest ratio of consecutive divisors of n.

The programs for A396897, there is no canonical definition to state claims against.
-/

/-! ## A396897.P14998610276728010771

`A086833(A348983(n+2))`
-/

namespace A396897.P14998610276728010771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (A348983 (n + 2)).toNat

end

end A396897.P14998610276728010771

/-! ## A396897.P5588149701536219710

`A332294(A262524(n+1))`
-/

namespace A396897.P5588149701536219710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (A262524 (n + 1)).toNat

end

end A396897.P5588149701536219710

/-! ## A396897.P12393600732807611097

`A151702(A034729(n+2))`
-/

namespace A396897.P12393600732807611097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A034729 (n + 2)).toNat

end

end A396897.P12393600732807611097

/-! ## A396897.P8110350147311361183

`A101296(n+2)-A011655(A282106(n))`
-/

namespace A396897.P8110350147311361183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 2) - A011655 (A282106 n).toNat

end

end A396897.P8110350147311361183

/-! ## A396897.P7459284945036138568

`A091220(A115123(n+2))`
-/

namespace A396897.P7459284945036138568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091220 (A115123 (n + 2)).toNat

end

end A396897.P7459284945036138568

/-!
# A396898: Indices k such that prime(k) + 2*prime(k+1) is prime.

The programs for A396898, there is no canonical definition to state claims against.
-/

/-! ## A396898.P16666583411073457374

`A000720(A175914(n+1))`
-/

namespace A396898.P16666583411073457374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A175914 (n + 1)).toNat

end

end A396898.P16666583411073457374

/-! ## A396898.P12831533679900114172

`A204892(A175914(n+1)-2)`
-/

namespace A396898.P12831533679900114172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A175914 (n + 1) - 2).toNat

end

end A396898.P12831533679900114172

/-! ## A396898.P10288010742711364781

`A056239(A175914(n+1))*A057427(n+3)`
-/

namespace A396898.P10288010742711364781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A175914 (n + 1)).toNat * A057427 (n + 3)

end

end A396898.P10288010742711364781

/-! ## A396898.P2981824290677239959

`A056239(A175914(n+1)%A055438(n+1))`
-/

namespace A396898.P2981824290677239959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A175914 (n + 1)) (A055438 (n + 1))).toNat

end

end A396898.P2981824290677239959

/-! ## A396898.P15899824540276415425

`A056239(A175914(n+1))%A175914(n+2)`
-/

namespace A396898.P15899824540276415425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A175914 (n + 1)).toNat) (A175914 (n + 2))

end

end A396898.P15899824540276415425

/-! ## A396898.P17646319410888245367

`A156061(2*A175914(n+1))`
-/

namespace A396898.P17646319410888245367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A175914 (n + 1)).toNat

end

end A396898.P17646319410888245367

