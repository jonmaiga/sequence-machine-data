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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A084600: Triangle, read by rows, where the n-th row lists the (2n+1) coefficients of (1+x+2x^2)^n for n >= 0.

The programs for A084600, there is no canonical definition to state claims against.
-/

/-! ## A084600.P16175588835934715861

`A336996(A020703(n+1)-1)`
-/

namespace A084600.P16175588835934715861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (A020703 (n + 1) - 1).toNat

end

end A084600.P16175588835934715861

/-! ## A084600.P1672765831719725250

`A336996(n-2*A196199(n))`
-/

namespace A084600.P1672765831719725250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 ((n : ℤ) - 2 * A196199 n).toNat

end

end A084600.P1672765831719725250

/-! ## A084600.P216849627125434630

`2^A196199(n)*A336996(n)`
-/

namespace A084600.P216849627125434630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A196199 n : ℤ) * (A336996 n : ℚ)

end

end A084600.P216849627125434630

/-! ## A084600.P15623251825773774206

`A336996(n-A196199(n)-A196199(n))`
-/

namespace A084600.P15623251825773774206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 ((n : ℤ) - A196199 n - A196199 n).toNat

end

end A084600.P15623251825773774206

/-!
# A084601: Coefficients of 1/(1-2*x-7*x^2)^(1/2); also, a(n) is the central coefficient of (1+x+2*x^2)^n.

The programs for A084601, there is no canonical definition to state claims against.
-/

/-! ## A084601.P16988337802496600200

`A119975(n)-A098518(n)`
-/

namespace A084601.P16988337802496600200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119975 n - A098518 n

end

end A084601.P16988337802496600200

/-! ## A084601.P1564803911507826651

`A336996(∑[2*n])`
-/

namespace A084601.P1564803911507826651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084601.P1564803911507826651

/-! ## A084601.P2477258074722896840

`A115991(∑[n])`
-/

namespace A084601.P2477258074722896840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084601.P2477258074722896840

/-! ## A084601.P9673343061839489728

`A110180(A340266(n+1))`
-/

namespace A084601.P9673343061839489728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A340266 (n + 1)).toNat

end

end A084601.P9673343061839489728

/-! ## A084601.P4922007525406758813

`A110180(eq[2, A002262(n)])`
-/

namespace A084601.P4922007525406758813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084601.P4922007525406758813

/-! ## A084601.P13851556096150301714

`A110180(A167614(n+1)-1)`
-/

namespace A084601.P13851556096150301714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A167614 (n + 1) - 1).toNat

end

end A084601.P13851556096150301714

/-! ## A084601.P5835393334428150090

`A110180(eq[2, A144328(n+1)])`
-/

namespace A084601.P5835393334428150090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084601.P5835393334428150090

/-! ## A084601.P717808122200571429

`A307855(∑[n+3])`
-/

namespace A084601.P717808122200571429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084601.P717808122200571429

/-! ## A084601.P9642975671233111657

`A084600(∑[2*n])`
-/

namespace A084601.P9642975671233111657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084601.P9642975671233111657

/-! ## A084601.P2094697439421170765

`A084600(n²)*A084600(A002378(n))`
-/

namespace A084601.P2094697439421170765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (n ^ 2) * A084600 (A002378 n).toNat

end

end A084601.P2094697439421170765

/-!
# A084603: Coefficients of 1/sqrt(1 - 2*x - 11*x^2); also, a(n) is the central coefficient of (1 + x + 3*x^2)^n.

The programs for A084603, there is no canonical definition to state claims against.
-/

/-! ## A084603.P73506562926800361

`A110180(A167614(n+2))`
-/

namespace A084603.P73506562926800361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A167614 (n + 2)).toNat

end

end A084603.P73506562926800361

/-! ## A084603.P4109717479716399260

`A110180(A340266(n+2)+1)`
-/

namespace A084603.P4109717479716399260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A340266 (n + 2) + 1).toNat

end

end A084603.P4109717479716399260

/-! ## A084603.P10997411051453343593

`A307855(∑[n+4]+2)`
-/

namespace A084603.P10997411051453343593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A084603.P10997411051453343593

/-! ## A084603.P9297949264895825007

`A084602(∑[2*n])`
-/

namespace A084603.P9297949264895825007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084603.P9297949264895825007

/-! ## A084603.P5091360699240764222

`lcm(2, A084602(A002378(n)))/2`
-/

namespace A084603.P5091360699240764222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A084602 (A002378 n).toNat) : ℚ) / 2

end

end A084603.P5091360699240764222

/-! ## A084603.P8469650838345839707

`A084602(n²+n)*A084602(n²)`
-/

namespace A084603.P8469650838345839707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084602 (n ^ 2 + n) * A084602 (n ^ 2)

end

end A084603.P8469650838345839707

/-! ## A084603.P17024344356499313085

`A084602(A002378(n))%A317115(n+1)`
-/

namespace A084603.P17024344356499313085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084602 (A002378 n).toNat) (A317115 (n + 1))

end

end A084603.P17024344356499313085

/-! ## A084603.P7327510594486011289

`lcm(A084602(A002378(n)), A155040(n))`
-/

namespace A084603.P7327510594486011289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084602 (A002378 n).toNat) (A155040 n)

end

end A084603.P7327510594486011289

/-!
# A084605: G.f.: 1/(1-2x-15x^2)^(1/2); also, a(n) is the central coefficient of (1+x+4x^2)^n.

The programs for A084605, there is no canonical definition to state claims against.
-/

/-! ## A084605.P4897785962637915488

`A151318(n)-2*A098520(n)`
-/

namespace A084605.P4897785962637915488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151318 n - 2 * A098520 n

end

end A084605.P4897785962637915488

/-! ## A084605.P5787094126630155961

`A307855(2*n+∑[n+3]+7)`
-/

namespace A084605.P5787094126630155961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A084605.P5787094126630155961

/-! ## A084605.P1198637741522959750

`A084604(∑[2*n])`
-/

namespace A084605.P1198637741522959750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084605.P1198637741522959750

/-! ## A084605.P2336052834038953550

`A084604(n²)*A084604(A002378(n))`
-/

namespace A084605.P2336052834038953550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (n ^ 2) * A084604 (A002378 n).toNat

end

end A084605.P2336052834038953550

/-! ## A084605.P988313595639080765

`A084604(A002378(n))+A000007(n+1)`
-/

namespace A084605.P988313595639080765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (A002378 n).toNat + A000007 (n + 1)

end

end A084605.P988313595639080765

/-! ## A084605.P15762303739810508160

`A084604(A002378(n))-n*A000007(n)`
-/

namespace A084605.P15762303739810508160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (A002378 n).toNat - (n : ℤ) * A000007 n

end

end A084605.P15762303739810508160

/-! ## A084605.P8104215172937218572

`A084604(A002378(n))/A084604(A014681(n)²)`
-/

namespace A084605.P8104215172937218572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084604 (A002378 n).toNat : ℚ) / (A084604 (A014681 n ^ 2).toNat : ℚ)

end

end A084605.P8104215172937218572

/-! ## A084605.P3533984425727927790

`A307847(∑[n+3])`
-/

namespace A084605.P3533984425727927790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084605.P3533984425727927790

/-! ## A084605.P10647718091215733291

`sqrt(A322240(n))`
-/

namespace A084605.P10647718091215733291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322240 n : ℝ)

end

end A084605.P10647718091215733291

/-!
# A084609: Coefficients of 1/sqrt(1-4*x-8*x^2); also, a(n) is the central coefficient of (1+2*x+3*x^2)^n.

The programs for A084609, the canonical program `A084609.P6003943893404852594` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084609 has offset 0).

The definition of A084609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084609.P6003943893404852594

`(2*(2*n-1)*a(n-1)+8*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084609

/-- `(2*(2*n-1)*a(n-1)+8*(n-1)*a(n-2))/n` -/
def P6003943893404852594.Spec : Prop :=
  ∀ n, P6003943893404852594.a n = (A084609 n : ℚ)

end A084609

/-! ## A084609.P3181754241831201904

`A110135(A167614(n+1)-1)`
-/

namespace A084609.P3181754241831201904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110135 (A167614 (n + 1) - 1).toNat

end

end A084609.P3181754241831201904

namespace A084609

/-- `A110135(A167614(n+1)-1)` -/
def P3181754241831201904.Spec : Prop :=
  ∀ n, P3181754241831201904.a n = A084609 n

end A084609

/-! ## A084609.P17016842466854642792

`A084608(∑[2*n])`
-/

namespace A084609.P17016842466854642792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084609.P17016842466854642792

namespace A084609

/-- `A084608(∑[2*n])` -/
def P17016842466854642792.Spec : Prop :=
  ∀ n, P17016842466854642792.a n = A084609 n

end A084609

/-! ## A084609.P12162711815226236825

`record[A084608(A002620(n))]`
-/

namespace A084609.P12162711815226236825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084609.P12162711815226236825

namespace A084609

/-- `record[A084608(A002620(n))]` -/
def P12162711815226236825.Spec : Prop :=
  ∀ n, P12162711815226236825.a n = A084609 n

end A084609

/-! ## A084609.P13332469012881335302

`record[A084608(A008797(n))]`
-/

namespace A084609.P13332469012881335302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (A008797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084609.P13332469012881335302

namespace A084609

/-- `record[A084608(A008797(n))]` -/
def P13332469012881335302.Spec : Prop :=
  ∀ n, P13332469012881335302.a n = A084609 n

end A084609

/-! ## A084609.P2621241030135740653

`record[A084608(∑[A004526(n)])]`
-/

namespace A084609.P2621241030135740653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084609.P2621241030135740653

namespace A084609

/-- `record[A084608(∑[A004526(n)])]` -/
def P2621241030135740653.Spec : Prop :=
  ∀ n, P2621241030135740653.a n = A084609 n

end A084609

/-! ## A084609.P18397137271185168857

`record[A084608(∑[A008619(n)])]`
-/

namespace A084609.P18397137271185168857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084609.P18397137271185168857

namespace A084609

/-- `record[A084608(∑[A008619(n)])]` -/
def P18397137271185168857.Spec : Prop :=
  ∀ n, P18397137271185168857.a n = A084609 n

end A084609

/-! ## A084609.P2951914683685507622

`A084608(A002620(2*n+1))*A084608(A002620(2*n))`
-/

namespace A084609.P2951914683685507622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (A002620 (2 * n + 1)).toNat * A084608 (A002620 (2 * n)).toNat

end

end A084609.P2951914683685507622

namespace A084609

/-- `A084608(A002620(2*n+1))*A084608(A002620(2*n))` -/
def P2951914683685507622.Spec : Prop :=
  ∀ n, P2951914683685507622.a n = A084609 n

end A084609

/-! ## A084609.P2188996664128725109

`record[A084608(A004526(n+1))/A084608(2*n+1)]`
-/

namespace A084609.P2188996664128725109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084608 (A004526 (n + 1)).toNat : ℚ) / (A084608 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084609.P2188996664128725109

namespace A084609

/-- `record[A084608(A004526(n+1))/A084608(2*n+1)]` -/
def P2188996664128725109.Spec : Prop :=
  ∀ n, P2188996664128725109.a n = (A084609 n : ℚ)

end A084609

/-!
# A084611: a(n) = sum of absolute values of coefficients of (1+x-x^2)^n.

The programs for A084611, there is no canonical definition to state claims against.
-/

/-! ## A084611.P13319012518523645201

`A084250(A291728(n))`
-/

namespace A084611.P13319012518523645201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084250 (A291728 n).toNat

end

end A084611.P13319012518523645201

/-! ## A084611.P5440916508139005444

`or(A002150(2^n), A067280(n+1))`
-/

namespace A084611.P5440916508139005444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002150 (2 ^ n)) (A067280 (n + 1))

end

end A084611.P5440916508139005444

/-! ## A084611.P12285896769395778812

`A265278(n)+A259153(A113913(n))`
-/

namespace A084611.P12285896769395778812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 n + A259153 (A113913 n).toNat

end

end A084611.P12285896769395778812

/-!
# A084613: a(n) = sum of absolute values of coefficients of (1 + x - 2*x^2)^n.

The programs for A084613, there is no canonical definition to state claims against.
-/

/-! ## A084613.P11666961185885329026

`A154477(A134757(n+1))+A003961(n+1)`
-/

namespace A084613.P11666961185885329026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154477 (A134757 (n + 1)).toNat + A003961 (n + 1)

end

end A084613.P11666961185885329026

/-!
# A084615: a(n) = sum of absolute values of coefficients of (1+x-3x^2)^n.

The programs for A084615, there is no canonical definition to state claims against.
-/

/-! ## A084615.P7971223621763085491

`∑[∑[A126875(n+5)]+1]`
-/

namespace A084615.P7971223621763085491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126875 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084615.P7971223621763085491

/-!
# A084617: Maximum number of circles with diameter 1 that can be packed in a square of side length n.

The programs for A084617, there is no canonical definition to state claims against.
-/

/-! ## A084617.P5657244037191082021

`A000196(A109913(n+1))+A000196(A123865(n+1))`
-/

namespace A084617.P5657244037191082021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109913 (n + 1)).toNat + A000196 (A123865 (n + 1)).toNat

end

end A084617.P5657244037191082021

/-! ## A084617.P1146021741680576233

`∑[A056792(A233268(n+1)²)]`
-/

namespace A084617.P1146021741680576233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A233268 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084617.P1146021741680576233

/-! ## A084617.P8945121987104929426

`∑[A263272(n)+record[A170980(n)]]`
-/

namespace A084617.P8945121987104929426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084617.P8945121987104929426

/-! ## A084617.P18093369016952612795

`∑[A064097(A373587(round(23^(n/3))))]`
-/

namespace A084617.P18093369016952612795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A373587 (SequenceMachineLib.roundAway ((23 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084617.P18093369016952612795

/-! ## A084617.P11586773962784437214

`A321936(A046680(n+1))+(n+1)²`
-/

namespace A084617.P11586773962784437214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A046680 (n + 1)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A084617.P11586773962784437214

/-!
# A084620: Fibonacci numbers k such that concatenation of k and its 10's complement is a prime.

The programs for A084620, there is no canonical definition to state claims against.
-/

/-! ## A084620.P16438701139971673914

`A000045(A084621(n+2))`
-/

namespace A084620.P16438701139971673914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A084621 (n + 2)).toNat

end

end A084620.P16438701139971673914

/-!
# A084622: Numbers n such that f(n) is a strict local extremum for the function f(x) = phi(x) + sigma(x); i.e., either f(n) > f(n-1) and f(n) > f(n+1) or f(n) < f(n-1) and f(n) < f(n+1).

The programs for A084622, there is no canonical definition to state claims against.
-/

/-! ## A084622.P14961452560079190300

`lt[A316621(A038124(n+5)), A051717(n)]`
-/

namespace A084622.P14961452560079190300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (A038124 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084622.P14961452560079190300

/-! ## A084622.P13043674920492351757

`lt[A080932(n+1), A051717(n)]`
-/

namespace A084622.P13043674920492351757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084622.P13043674920492351757

/-! ## A084622.P11687738530576405961

`lt[A107932(n+1), A051717(n)]`
-/

namespace A084622.P11687738530576405961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084622.P11687738530576405961

/-! ## A084622.P7442671914524459955

`lt[A224534(n+12), A051717(n)]`
-/

namespace A084622.P7442671914524459955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224534 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084622.P7442671914524459955

/-! ## A084622.P13162467706238895029

`lt[record[A107802(n+1)], A051717(n)]`
-/

namespace A084622.P13162467706238895029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A084622.P13162467706238895029

/-!
# A084623: Numerator of 2^(n-1)/n.

The programs for A084623, the canonical program `A084623.P2915288955471641731` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084623 has offset 1).

The definition of A084623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084623.P2915288955471641731

`2^(n-A007814(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084623

/-- `2^(n-A007814(n+1))` -/
def P2915288955471641731.Spec : Prop :=
  ∀ n, P2915288955471641731.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P1490411722669948198

`A075101(n+1)/2`
-/

namespace A084623.P1490411722669948198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 1) : ℚ) / 2

end

end A084623.P1490411722669948198

namespace A084623

/-- `A075101(n+1)/2` -/
def P1490411722669948198.Spec : Prop :=
  ∀ n, P1490411722669948198.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P6556149141110330808

`2^(n-val(n+1, 2))`
-/

namespace A084623.P6556149141110330808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A084623.P6556149141110330808

namespace A084623

/-- `2^(n-val(n+1, 2))` -/
def P6556149141110330808.Spec : Prop :=
  ∀ n, P6556149141110330808.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P11701979906924695063

`2^xor(n, val(n+1, 2))`
-/

namespace A084623.P11701979906924695063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor n (SequenceMachineLib.valuation (n + 1) 2)

end

end A084623.P11701979906924695063

namespace A084623

/-- `2^xor(n, val(n+1, 2))` -/
def P11701979906924695063.Spec : Prop :=
  ∀ n, (P11701979906924695063.a n : ℤ) = A084623 (n + 1)

end A084623

/-! ## A084623.P8337358258457194383

`2^Δ[A127944(n)]`
-/

namespace A084623.P8337358258457194383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127944 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A084623.P8337358258457194383

namespace A084623

/-- `2^Δ[A127944(n)]` -/
def P8337358258457194383.Spec : Prop :=
  ∀ n, P8337358258457194383.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P2971151752155401410

`2^A093049(n+1)`
-/

namespace A084623.P2971151752155401410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A093049 (n + 1) : ℤ)

end

end A084623.P2971151752155401410

namespace A084623

/-- `2^A093049(n+1)` -/
def P2971151752155401410.Spec : Prop :=
  ∀ n, P2971151752155401410.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P20930843680067754

`2^(A093048(n+1)-1)`
-/

namespace A084623.P20930843680067754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A093048 (n + 1) - 1 : ℤ)

end

end A084623.P20930843680067754

namespace A084623

/-- `2^(A093048(n+1)-1)` -/
def P20930843680067754.Spec : Prop :=
  ∀ n, P20930843680067754.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P14254454325810966905

`2^(A101921(n+1)-n)`
-/

namespace A084623.P14254454325810966905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101921 (n + 1) - (n : ℤ) : ℤ)

end

end A084623.P14254454325810966905

namespace A084623

/-- `2^(A101921(n+1)-n)` -/
def P14254454325810966905.Spec : Prop :=
  ∀ n, P14254454325810966905.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P13108405544674577898

`2^(2-A085058(n)+n)`
-/

namespace A084623.P13108405544674577898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 - A085058 n + (n : ℤ) : ℤ)

end

end A084623.P13108405544674577898

namespace A084623

/-- `2^(2-A085058(n)+n)` -/
def P13108405544674577898.Spec : Prop :=
  ∀ n, P13108405544674577898.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P17735611409136906539

`A000079(n-val(n+1, 2))`
-/

namespace A084623.P17735611409136906539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n - SequenceMachineLib.valuation (n + 1) 2)

end

end A084623.P17735611409136906539

namespace A084623

/-- `A000079(n-val(n+1, 2))` -/
def P17735611409136906539.Spec : Prop :=
  ∀ n, P17735611409136906539.a n = A084623 (n + 1)

end A084623

/-! ## A084623.P14917799155439926847

`A000079(xor(n, val(n+1, 2)))`
-/

namespace A084623.P14917799155439926847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.xor n (SequenceMachineLib.valuation (n + 1) 2))

end

end A084623.P14917799155439926847

namespace A084623

/-- `A000079(xor(n, val(n+1, 2)))` -/
def P14917799155439926847.Spec : Prop :=
  ∀ n, P14917799155439926847.a n = A084623 (n + 1)

end A084623

/-! ## A084623.P9921064652819119025

`2^(Δ[A000120(n)]+n-1)`
-/

namespace A084623.P9921064652819119025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n + (n : ℤ) - 1 : ℤ)

end

end A084623.P9921064652819119025

namespace A084623

/-- `2^(Δ[A000120(n)]+n-1)` -/
def P9921064652819119025.Spec : Prop :=
  ∀ n, P9921064652819119025.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P4990931636808090945

`2^(n+1-A001511(n+1))`
-/

namespace A084623.P4990931636808090945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A001511 (n + 1) : ℤ)

end

end A084623.P4990931636808090945

namespace A084623

/-- `2^(n+1-A001511(n+1))` -/
def P4990931636808090945.Spec : Prop :=
  ∀ n, P4990931636808090945.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P16483120312280383016

`2^(A088705(n+1)+n-1)`
-/

namespace A084623.P16483120312280383016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088705 (n + 1) + ((n : ℤ) - 1) : ℤ)

end

end A084623.P16483120312280383016

namespace A084623

/-- `2^(A088705(n+1)+n-1)` -/
def P16483120312280383016.Spec : Prop :=
  ∀ n, P16483120312280383016.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P14381765222526019795

`2^(n+2-A089080(n+2))`
-/

namespace A084623.P14381765222526019795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 2 : ℤ) - A089080 (n + 2) : ℤ)

end

end A084623.P14381765222526019795

namespace A084623

/-- `2^(n+2-A089080(n+2))` -/
def P14381765222526019795.Spec : Prop :=
  ∀ n, P14381765222526019795.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P16701446034053637027

`2^(n+3-A090739(n+1))`
-/

namespace A084623.P16701446034053637027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 3 : ℤ) - A090739 (n + 1) : ℤ)

end

end A084623.P16701446034053637027

namespace A084623

/-- `2^(n+3-A090739(n+1))` -/
def P16701446034053637027.Spec : Prop :=
  ∀ n, P16701446034053637027.a n = (A084623 (n + 1) : ℚ)

end A084623

/-! ## A084623.P18064674729000497404

`A000079(A093049(n+1))`
-/

namespace A084623.P18064674729000497404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A093049 (n + 1)).toNat

end

end A084623.P18064674729000497404

namespace A084623

/-- `A000079(A093049(n+1))` -/
def P18064674729000497404.Spec : Prop :=
  ∀ n, P18064674729000497404.a n = A084623 (n + 1)

end A084623

/-! ## A084623.P1507900082102449815

`A011782(A093048(n+1))`
-/

namespace A084623.P1507900082102449815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A093048 (n + 1)).toNat

end

end A084623.P1507900082102449815

namespace A084623

/-- `A011782(A093048(n+1))` -/
def P1507900082102449815.Spec : Prop :=
  ∀ n, P1507900082102449815.a n = A084623 (n + 1)

end A084623

/-! ## A084623.P11733703241728034442

`A048896(n)*A060818(n)`
-/

namespace A084623.P11733703241728034442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A060818 n

end

end A084623.P11733703241728034442

namespace A084623

/-- `A048896(n)*A060818(n)` -/
def P11733703241728034442.Spec : Prop :=
  ∀ n, P11733703241728034442.a n = A084623 (n + 1)

end A084623

/-! ## A084623.P8485446552100586528

`A131577(Δ[A000120(n)]+n)`
-/

namespace A084623.P8485446552100586528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A084623.P8485446552100586528

namespace A084623

/-- `A131577(Δ[A000120(n)]+n)` -/
def P8485446552100586528.Spec : Prop :=
  ∀ n, P8485446552100586528.a n = A084623 (n + 1)

end A084623

/-!
# A084624: a(n) = floor(C(n+5,5)/C(n+2,2)).

The programs for A084624, the canonical program `A084624.P13814389176931885006` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084624 has offset 0).

The definition of A084624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+5, 5)/C(n+2, 2))` (program `A084624.P13814389176931885006`, by `A084624.P13814389176931885006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084624.P17250129756581730911

`floor(C(n+5, 3)/10)`
-/

namespace A084624.P17250129756581730911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 5) 3 : ℚ) / 10⌋

end

end A084624.P17250129756581730911

namespace A084624

/-- `floor(C(n+5, 3)/10)` -/
def P17250129756581730911.Spec : Prop :=
  ∀ n, P17250129756581730911.a n = A084624 n

end A084624

/-! ## A084624.P13814389176931885006

`floor(C(n+5, 5)/C(n+2, 2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084624

/-- `floor(C(n+5, 5)/C(n+2, 2))` -/
def P13814389176931885006.Spec : Prop :=
  ∀ n, P13814389176931885006.a n = A084624 n

theorem P13814389176931885006.correct : P13814389176931885006.Spec := by
  intro n
  simp only [A084624]

end A084624

/-! ## A084624.P14989717341120019932

`floor((3+n)*(4+n)*(5+n)/60)`
-/

namespace A084624.P14989717341120019932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 + n) * (4 + n) * (5 + n) : ℚ) / 60⌋

end

end A084624.P14989717341120019932

namespace A084624

/-- `floor((3+n)*(4+n)*(5+n)/60)` -/
def P14989717341120019932.Spec : Prop :=
  ∀ n, P14989717341120019932.a n = A084624 n

end A084624

/-! ## A084624.P12557706740824306261

`round(sinh(log(∑[(n+3)²+n+3]))/10)`
-/

namespace A084624.P12557706740824306261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 10)

end

end A084624.P12557706740824306261

namespace A084624

/-- `round(sinh(log(∑[(n+3)²+n+3]))/10)` -/
def P12557706740824306261.Spec : Prop :=
  ∀ n, P12557706740824306261.a n = A084624 n

end A084624

/-! ## A084624.P11163671419562543018

`round((A210374(n)+1)/10)+1`
-/

namespace A084624.P11163671419562543018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210374 n + 1 : ℚ) / 10) + 1

end

end A084624.P11163671419562543018

namespace A084624

/-- `round((A210374(n)+1)/10)+1` -/
def P11163671419562543018.Spec : Prop :=
  ∀ n, P11163671419562543018.a n = A084624 n

end A084624

/-! ## A084624.P17991548569702061517

`record[floor(A189980(n)/A001972(n))]`
-/

namespace A084624.P17991548569702061517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189980 (n + 10) : ℚ) / (A001972 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084624.P17991548569702061517

namespace A084624

/-- `record[floor(A189980(n)/A001972(n))]` -/
def P17991548569702061517.Spec : Prop :=
  ∀ n, P17991548569702061517.a n = A084624 n

end A084624

/-! ## A084624.P13397607160880920779

`A008732(n)+A004526(A122047(n))`
-/

namespace A084624.P13397607160880920779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 n + A004526 (A122047 n).toNat

end

end A084624.P13397607160880920779

namespace A084624

/-- `A008732(n)+A004526(A122047(n))` -/
def P13397607160880920779.Spec : Prop :=
  ∀ n, P13397607160880920779.a n = A084624 n

end A084624

/-! ## A084624.P12488514838848417381

`A004526(A011912(n+5))`
-/

namespace A084624.P12488514838848417381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011912 (n + 5)).toNat

end

end A084624.P12488514838848417381

namespace A084624

/-- `A004526(A011912(n+5))` -/
def P12488514838848417381.Spec : Prop :=
  ∀ n, P12488514838848417381.a n = A084624 n

end A084624

/-! ## A084624.P12558263235580835063

`A008619(A011912(n)+A000096(n))`
-/

namespace A084624.P12558263235580835063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A011912 n + A000096 n).toNat

end

end A084624.P12558263235580835063

namespace A084624

/-- `A008619(A011912(n)+A000096(n))` -/
def P12558263235580835063.Spec : Prop :=
  ∀ n, P12558263235580835063.a n = A084624 n

end A084624

/-! ## A084624.P16794607960015214776

`A123108(A011912(n+5)*A057427(n))`
-/

namespace A084624.P16794607960015214776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A011912 (n + 5) * A057427 n).toNat

end

end A084624.P16794607960015214776

namespace A084624

/-- `A123108(A011912(n+5)*A057427(n))` -/
def P16794607960015214776.Spec : Prop :=
  ∀ n, P16794607960015214776.a n = A084624 n

end A084624

/-!
# A084625: Binomial transform of A084624.

The programs for A084625, there is no canonical definition to state claims against.
-/

/-! ## A084625.P2518951322207708498

`A094189(A055582(n))+1`
-/

namespace A084625.P2518951322207708498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A055582 n).toNat + 1

end

end A084625.P2518951322207708498

/-! ## A084625.P14599760852873587958

`∑[∑[A000006(A014330(n))]]`
-/

namespace A084625.P14599760852873587958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A014330 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084625.P14599760852873587958

/-!
# A084626: a(n) = floor(C(n+6,6)/C(n+2,2)).

The programs for A084626, the canonical program `A084626.P10293405784893010904` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084626 has offset 0).

The definition of A084626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+6, 6)/C(n+2, 2))` (program `A084626.P10293405784893010904`, by `A084626.P10293405784893010904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084626.P4179982938175254068

`floor(C(n+6, 4)/15)`
-/

namespace A084626.P4179982938175254068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 6) 4 : ℚ) / 15⌋

end

end A084626.P4179982938175254068

namespace A084626

/-- `floor(C(n+6, 4)/15)` -/
def P4179982938175254068.Spec : Prop :=
  ∀ n, P4179982938175254068.a n = A084626 n

end A084626

/-! ## A084626.P10293405784893010904

`floor(C(n+6, 6)/C(n+2, 2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084626

/-- `floor(C(n+6, 6)/C(n+2, 2))` -/
def P10293405784893010904.Spec : Prop :=
  ∀ n, P10293405784893010904.a n = A084626 n

theorem P10293405784893010904.correct : P10293405784893010904.Spec := by
  intro n
  simp only [A084626]

end A084626

/-! ## A084626.P10954492048658416531

`1+floor(n*(n+9)*(n²+9*n+38)/360)`
-/

namespace A084626.P10954492048658416531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n * (n + 9) * (n ^ 2 + 9 * n + 38) : ℚ) / 360⌋

end

end A084626.P10954492048658416531

namespace A084626

/-- `1+floor(n*(n+9)*(n²+9*n+38)/360)` -/
def P10954492048658416531.Spec : Prop :=
  ∀ n, P10954492048658416531.a n = A084626 n

end A084626

/-! ## A084626.P10188311659414163847

`round(A027659(n)/(3*(n+2)))`
-/

namespace A084626.P10188311659414163847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027659 n : ℚ) / (3 * (n + 2) : ℚ))

end

end A084626.P10188311659414163847

namespace A084626

/-- `round(A027659(n)/(3*(n+2)))` -/
def P10188311659414163847.Spec : Prop :=
  ∀ n, P10188311659414163847.a n = A084626 n

end A084626

/-! ## A084626.P2609055284810919834

`ceil((A051170(n+7)-2)/3)`
-/

namespace A084626.P2609055284810919834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051170 (n + 7) - 2 : ℚ) / 3⌉

end

end A084626.P2609055284810919834

namespace A084626

/-- `ceil((A051170(n+7)-2)/3)` -/
def P2609055284810919834.Spec : Prop :=
  ∀ n, P2609055284810919834.a n = A084626 n

end A084626

/-! ## A084626.P4555235653265189222

`record[floor(A299337(n)/A056136(n+1))]`
-/

namespace A084626.P4555235653265189222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299337 n : ℚ) / (A056136 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084626.P4555235653265189222

namespace A084626

/-- `record[floor(A299337(n)/A056136(n+1))]` -/
def P4555235653265189222.Spec : Prop :=
  ∀ n, P4555235653265189222.a n = A084626 n

end A084626

/-! ## A084626.P12890144840262652764

`record[floor(A213348(n+6)/A213344(n+2))]`
-/

namespace A084626.P12890144840262652764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213348 (n + 6) : ℚ) / (A213344 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084626.P12890144840262652764

namespace A084626

/-- `record[floor(A213348(n+6)/A213344(n+2))]` -/
def P12890144840262652764.Spec : Prop :=
  ∀ n, P12890144840262652764.a n = A084626 n

end A084626

/-! ## A084626.P14655435468952703604

`A000027(floor(A242159(n+7)/A242155(n+3)))`
-/

namespace A084626.P14655435468952703604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A242159 (n + 7) : ℚ) / (A242155 (n + 3) : ℚ)⌋.toNat

end

end A084626.P14655435468952703604

namespace A084626

/-- `A000027(floor(A242159(n+7)/A242155(n+3)))` -/
def P14655435468952703604.Spec : Prop :=
  ∀ n, P14655435468952703604.a n = A084626 n

end A084626

/-!
# A084627: a(n) = floor(C(n+6,6)/C(n+3,3)).

The programs for A084627, the canonical program `A084627.P9730265133338150266` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084627 has offset 0).

The definition of A084627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+6, 6)/C(n+3, 3))` (program `A084627.P9730265133338150266`, by `A084627.P9730265133338150266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084627.P11368620684787794698

`floor(C(n+6, 3)/20)`
-/

namespace A084627.P11368620684787794698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 6) 3 : ℚ) / 20⌋

end

end A084627.P11368620684787794698

namespace A084627

/-- `floor(C(n+6, 3)/20)` -/
def P11368620684787794698.Spec : Prop :=
  ∀ n, P11368620684787794698.a n = A084627 n

end A084627

/-! ## A084627.P9730265133338150266

`floor(C(n+6, 6)/C(n+3, 3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084627

/-- `floor(C(n+6, 6)/C(n+3, 3))` -/
def P9730265133338150266.Spec : Prop :=
  ∀ n, P9730265133338150266.a n = A084627 n

theorem P9730265133338150266.correct : P9730265133338150266.Spec := by
  intro n
  simp only [A084627]

end A084627

/-! ## A084627.P5299474167292865945

`1+floor(n*(n²+15*n+74)/120)`
-/

namespace A084627.P5299474167292865945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n * (n ^ 2 + 15 * n + 74) : ℚ) / 120⌋

end

end A084627.P5299474167292865945

namespace A084627

/-- `1+floor(n*(n²+15*n+74)/120)` -/
def P5299474167292865945.Spec : Prop :=
  ∀ n, P5299474167292865945.a n = A084627 n

end A084627

/-! ## A084627.P2591892478628370161

`round(∑[A000217(n+4)]/20)`
-/

namespace A084627.P2591892478628370161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 20)

end

end A084627.P2591892478628370161

namespace A084627

/-- `round(∑[A000217(n+4)]/20)` -/
def P2591892478628370161.Spec : Prop :=
  ∀ n, P2591892478628370161.a n = A084627 n

end A084627

/-! ## A084627.P15157011771174496793

`floor(A084624(n+1)/2)`
-/

namespace A084627.P15157011771174496793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084624 (n + 1) : ℚ) / 2⌋

end

end A084627.P15157011771174496793

namespace A084627

/-- `floor(A084624(n+1)/2)` -/
def P15157011771174496793.Spec : Prop :=
  ∀ n, P15157011771174496793.a n = A084627 n

end A084627

/-! ## A084627.P8208258519678156775

`floor(record[A008646(n)/(n+1)])`
-/

namespace A084627.P8208258519678156775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008646 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A084627.P8208258519678156775

namespace A084627

/-- `floor(record[A008646(n)/(n+1)])` -/
def P8208258519678156775.Spec : Prop :=
  ∀ n, P8208258519678156775.a n = A084627 n

end A084627

/-! ## A084627.P4128901518406572963

`floor(A051170(n+7)/(n+3))`
-/

namespace A084627.P4128901518406572963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051170 (n + 7) : ℚ) / (n + 3 : ℚ)⌋

end

end A084627.P4128901518406572963

namespace A084627

/-- `floor(A051170(n+7)/(n+3))` -/
def P4128901518406572963.Spec : Prop :=
  ∀ n, P4128901518406572963.a n = A084627 n

end A084627

/-! ## A084627.P7841207839856930649

`floor(A000292(n+4)/20)`
-/

namespace A084627.P7841207839856930649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (n + 4) : ℚ) / 20⌋

end

end A084627.P7841207839856930649

namespace A084627

/-- `floor(A000292(n+4)/20)` -/
def P7841207839856930649.Spec : Prop :=
  ∀ n, P7841207839856930649.a n = A084627 n

end A084627

/-! ## A084627.P4679881529022016450

`floor(A011894(n+6)/10)`
-/

namespace A084627.P4679881529022016450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011894 (n + 6) : ℚ) / 10⌋

end

end A084627.P4679881529022016450

namespace A084627

/-- `floor(A011894(n+6)/10)` -/
def P4679881529022016450.Spec : Prop :=
  ∀ n, P4679881529022016450.a n = A084627 n

end A084627

/-! ## A084627.P16625009039410617655

`floor(A002409(n)/(2^n*∑[∑[n+1]]))`
-/

namespace A084627.P16625009039410617655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002409 n : ℚ) / ((2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ)⌋

end

end A084627.P16625009039410617655

namespace A084627

/-- `floor(A002409(n)/(2^n*∑[∑[n+1]]))` -/
def P16625009039410617655.Spec : Prop :=
  ∀ n, P16625009039410617655.a n = A084627 n

end A084627

/-! ## A084627.P17180397280808146246

`floor(A036220(n)/A036216(n))`
-/

namespace A084627.P17180397280808146246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036220 n : ℚ) / (A036216 n : ℚ)⌋

end

end A084627.P17180397280808146246

namespace A084627

/-- `floor(A036220(n)/A036216(n))` -/
def P17180397280808146246.Spec : Prop :=
  ∀ n, P17180397280808146246.a n = A084627 n

end A084627

/-!
# A084628: a(n) = floor(binomial(n+7,7)/binomial(n+3,3)).

The programs for A084628, the canonical program `A084628.P12836011230199097948` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084628 has offset 0).

The definition of A084628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+7, 7)/C(n+3, 3))` (program `A084628.P12836011230199097948`, by `A084628.P12836011230199097948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084628.P5905079978618086767

`floor(C(n+7, 4)/35)`
-/

namespace A084628.P5905079978618086767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 7) 4 : ℚ) / 35⌋

end

end A084628.P5905079978618086767

namespace A084628

/-- `floor(C(n+7, 4)/35)` -/
def P5905079978618086767.Spec : Prop :=
  ∀ n, P5905079978618086767.a n = A084628 n

end A084628

/-! ## A084628.P12836011230199097948

`floor(C(n+7, 7)/C(n+3, 3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084628

/-- `floor(C(n+7, 7)/C(n+3, 3))` -/
def P12836011230199097948.Spec : Prop :=
  ∀ n, P12836011230199097948.a n = A084628 n

theorem P12836011230199097948.correct : P12836011230199097948.Spec := by
  intro n
  simp only [A084628]

end A084628

/-! ## A084628.P4405440820376890266

`1+floor(n*(n+11)*(n²+11*n+58)/840)`
-/

namespace A084628.P4405440820376890266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n * (n + 11) * (n ^ 2 + 11 * n + 58) : ℚ) / 840⌋

end

end A084628.P4405440820376890266

namespace A084628

/-- `1+floor(n*(n+11)*(n²+11*n+58)/840)` -/
def P4405440820376890266.Spec : Prop :=
  ∀ n, P4405440820376890266.a n = A084628 n

end A084628

/-! ## A084628.P14284117853852678103

`floor(A000580(n+7)/∑[∑[n+1]])`
-/

namespace A084628.P14284117853852678103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000580 (n + 7) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A084628.P14284117853852678103

namespace A084628

/-- `floor(A000580(n+7)/∑[∑[n+1]])` -/
def P14284117853852678103.Spec : Prop :=
  ∀ n, P14284117853852678103.a n = A084628 n

end A084628

/-! ## A084628.P4062992046742525350

`floor(A105250(n)/A001249(n))`
-/

namespace A084628.P4062992046742525350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105250 n : ℚ) / (A001249 n : ℚ)⌋

end

end A084628.P4062992046742525350

namespace A084628

/-- `floor(A105250(n)/A001249(n))` -/
def P4062992046742525350.Spec : Prop :=
  ∀ n, P4062992046742525350.a n = A084628 n

end A084628

/-! ## A084628.P7424517402296356782

`floor(Δ[A036837(n+7)]/7)`
-/

namespace A084628.P7424517402296356782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036837 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 7⌋

end

end A084628.P7424517402296356782

namespace A084628

/-- `floor(Δ[A036837(n+7)]/7)` -/
def P7424517402296356782.Spec : Prop :=
  ∀ n, P7424517402296356782.a n = A084628 n

end A084628

/-! ## A084628.P3236030822492044403

`floor(Δ[A166808(n+2)]/35)`
-/

namespace A084628.P3236030822492044403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 35⌋

end

end A084628.P3236030822492044403

namespace A084628

/-- `floor(Δ[A166808(n+2)]/35)` -/
def P3236030822492044403.Spec : Prop :=
  ∀ n, P3236030822492044403.a n = A084628 n

end A084628

/-! ## A084628.P14306738129982211628

`floor(A008646(n+3)/7)`
-/

namespace A084628.P14306738129982211628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008646 (n + 3) : ℚ) / 7⌋

end

end A084628.P14306738129982211628

namespace A084628

/-- `floor(A008646(n+3)/7)` -/
def P14306738129982211628.Spec : Prop :=
  ∀ n, P14306738129982211628.a n = A084628 n

end A084628

/-! ## A084628.P4625769120188317345

`floor(A051170(n+8)/7)`
-/

namespace A084628.P4625769120188317345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051170 (n + 8) : ℚ) / 7⌋

end

end A084628.P4625769120188317345

namespace A084628

/-- `floor(A051170(n+8)/7)` -/
def P4625769120188317345.Spec : Prop :=
  ∀ n, P4625769120188317345.a n = A084628 n

end A084628

/-! ## A084628.P16173815924598506520

`floor(A000332(n+7)/35)`
-/

namespace A084628.P16173815924598506520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000332 (n + 7) : ℚ) / 35⌋

end

end A084628.P16173815924598506520

namespace A084628

/-- `floor(A000332(n+7)/35)` -/
def P16173815924598506520.Spec : Prop :=
  ∀ n, P16173815924598506520.a n = A084628 n

end A084628

/-! ## A084628.P4728171529533026560

`floor(A036221(n)/A036216(n))`
-/

namespace A084628.P4728171529533026560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036221 n : ℚ) / (A036216 n : ℚ)⌋

end

end A084628.P4728171529533026560

namespace A084628

/-- `floor(A036221(n)/A036216(n))` -/
def P4728171529533026560.Spec : Prop :=
  ∀ n, P4728171529533026560.a n = A084628 n

end A084628

/-!
# A084630: a(n) = floor(C(n+7,7)/C(n+5,5)).

The programs for A084630, the canonical program `A084630.P8175260760013802097` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084630 has offset 0).

The definition of A084630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+7, 7)/C(n+5, 5))` (program `A084630.P8175260760013802097`, by `A084630.P8175260760013802097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084630.P3498380972100824102

`floor(C(n+7, 2)/21)`
-/

namespace A084630.P3498380972100824102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 7) 2 : ℚ) / 21⌋

end

end A084630.P3498380972100824102

namespace A084630

/-- `floor(C(n+7, 2)/21)` -/
def P3498380972100824102.Spec : Prop :=
  ∀ n, P3498380972100824102.a n = A084630 n

end A084630

/-! ## A084630.P8044777704292206255

`1+floor(n*(n+13)/42)`
-/

namespace A084630.P8044777704292206255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n * (n + 13) : ℚ) / 42⌋

end

end A084630.P8044777704292206255

namespace A084630

/-- `1+floor(n*(n+13)/42)` -/
def P8044777704292206255.Spec : Prop :=
  ∀ n, P8044777704292206255.a n = A084630 n

end A084630

/-! ## A084630.P8175260760013802097

`floor(C(n+7, 7)/C(n+5, 5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084630

/-- `floor(C(n+7, 7)/C(n+5, 5))` -/
def P8175260760013802097.Spec : Prop :=
  ∀ n, P8175260760013802097.a n = A084630 n

theorem P8175260760013802097.correct : P8175260760013802097.Spec := by
  intro n
  simp only [A084630]

end A084630

/-! ## A084630.P6137456259257145102

`floor(A000217(n+6)/21)`
-/

namespace A084630.P6137456259257145102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 6) : ℚ) / 21⌋

end

end A084630.P6137456259257145102

namespace A084630

/-- `floor(A000217(n+6)/21)` -/
def P6137456259257145102.Spec : Prop :=
  ∀ n, P6137456259257145102.a n = A084630 n

end A084630

/-! ## A084630.P3187468256934383856

`round(Δ[A026054(n+3)]/21)`
-/

namespace A084630.P3187468256934383856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 21)

end

end A084630.P3187468256934383856

namespace A084630

/-- `round(Δ[A026054(n+3)]/21)` -/
def P3187468256934383856.Spec : Prop :=
  ∀ n, P3187468256934383856.a n = A084630 n

end A084630

/-! ## A084630.P10026155956943224159

`floor(A032248(n)/A032246(n+9))`
-/

namespace A084630.P10026155956943224159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032248 (n + 10) : ℚ) / (A032246 (n + 9) : ℚ)⌋

end

end A084630.P10026155956943224159

namespace A084630

/-- `floor(A032248(n)/A032246(n+9))` -/
def P10026155956943224159.Spec : Prop :=
  ∀ n, P10026155956943224159.a n = A084630 n

end A084630

/-! ## A084630.P16042894214357706303

`floor(A008725(n+2)/3)`
-/

namespace A084630.P16042894214357706303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008725 (n + 2) : ℚ) / 3⌋

end

end A084630.P16042894214357706303

namespace A084630

/-- `floor(A008725(n+2)/3)` -/
def P16042894214357706303.Spec : Prop :=
  ∀ n, P16042894214357706303.a n = A084630 n

end A084630

/-! ## A084630.P2563798187109783843

`round(A052905(n+3)/21)`
-/

namespace A084630.P2563798187109783843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052905 (n + 3) : ℚ) / 21)

end

end A084630.P2563798187109783843

namespace A084630

/-- `round(A052905(n+3)/21)` -/
def P2563798187109783843.Spec : Prop :=
  ∀ n, P2563798187109783843.a n = A084630 n

end A084630

/-! ## A084630.P11281799489793973048

`floor(A167614(n+5)/21)`
-/

namespace A084630.P11281799489793973048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167614 (n + 5) : ℚ) / 21⌋

end

end A084630.P11281799489793973048

namespace A084630

/-- `floor(A167614(n+5)/21)` -/
def P11281799489793973048.Spec : Prop :=
  ∀ n, P11281799489793973048.a n = A084630 n

end A084630

/-! ## A084630.P6912129447198869020

`round((A046691(n+4)-1)/21)`
-/

namespace A084630.P6912129447198869020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046691 (n + 4) - 1 : ℚ) / 21)

end

end A084630.P6912129447198869020

namespace A084630

/-- `round((A046691(n+4)-1)/21)` -/
def P6912129447198869020.Spec : Prop :=
  ∀ n, P6912129447198869020.a n = A084630 n

end A084630

/-! ## A084630.P14213654910108883111

`round((A000124(n+5)+n)/21)`
-/

namespace A084630.P14213654910108883111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000124 (n + 5) + (n : ℤ) : ℚ) / 21)

end

end A084630.P14213654910108883111

namespace A084630

/-- `round((A000124(n+5)+n)/21)` -/
def P14213654910108883111.Spec : Prop :=
  ∀ n, P14213654910108883111.a n = A084630 n

end A084630

/-! ## A084630.P999526133239978942

`floor(A000124(n+6)/21)`
-/

namespace A084630.P999526133239978942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 (n + 6) : ℚ) / 21⌋

end

end A084630.P999526133239978942

namespace A084630

/-- `floor(A000124(n+6)/21)` -/
def P999526133239978942.Spec : Prop :=
  ∀ n, P999526133239978942.a n = A084630 n

end A084630

/-! ## A084630.P6294777594949929336

`A002264(A008725(n+2))`
-/

namespace A084630.P6294777594949929336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008725 (n + 2)).toNat

end

end A084630.P6294777594949929336

namespace A084630

/-- `A002264(A008725(n+2))` -/
def P6294777594949929336.Spec : Prop :=
  ∀ n, P6294777594949929336.a n = A084630 n

end A084630

/-! ## A084630.P9872360467832580311

`A002264(A011867(n+7))`
-/

namespace A084630.P9872360467832580311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011867 (n + 7)).toNat

end

end A084630.P9872360467832580311

namespace A084630

/-- `A002264(A011867(n+7))` -/
def P9872360467832580311.Spec : Prop :=
  ∀ n, P9872360467832580311.a n = A084630 n

end A084630

/-! ## A084630.P10182421317387704981

`A008620(A011867(n)+n)`
-/

namespace A084630.P10182421317387704981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A011867 n + (n : ℤ)).toNat

end

end A084630.P10182421317387704981

namespace A084630

/-- `A008620(A011867(n)+n)` -/
def P10182421317387704981.Spec : Prop :=
  ∀ n, P10182421317387704981.a n = A084630 n

end A084630

/-! ## A084630.P16704464620505312583

`A008620(A174738(n+2)+n)`
-/

namespace A084630.P16704464620505312583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A174738 (n + 2) + (n : ℤ)).toNat

end

end A084630.P16704464620505312583

namespace A084630

/-- `A008620(A174738(n+2)+n)` -/
def P16704464620505312583.Spec : Prop :=
  ∀ n, P16704464620505312583.a n = A084630 n

end A084630

/-! ## A084630.P7512074184749251776

`A002264(A174738(n+2)+n+3)`
-/

namespace A084630.P7512074184749251776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A174738 (n + 2) + (n + 3 : ℤ)).toNat

end

end A084630.P7512074184749251776

namespace A084630

/-- `A002264(A174738(n+2)+n+3)` -/
def P7512074184749251776.Spec : Prop :=
  ∀ n, P7512074184749251776.a n = A084630 n

end A084630

/-! ## A084630.P10315332886054646773

`A138999(A002264(∑[n+6])-1)`
-/

namespace A084630.P10315332886054646773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A084630.P10315332886054646773

namespace A084630

/-- `A138999(A002264(∑[n+6])-1)` -/
def P10315332886054646773.Spec : Prop :=
  ∀ n, P10315332886054646773.a n = A084630 n

end A084630

/-!
# A084631: a(n) = floor(C(n+8,8)/C(n+2,2)).

The programs for A084631, the canonical program `A084631.P9298052049464206024` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084631 has offset 0).

The definition of A084631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+8, 8)/C(n+2, 2))` (program `A084631.P9298052049464206024`, by `A084631.P9298052049464206024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084631.P8147880404522822849

`floor(C(n+8, 6)/28)`
-/

namespace A084631.P8147880404522822849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 8) 6 : ℚ) / 28⌋

end

end A084631.P8147880404522822849

namespace A084631

/-- `floor(C(n+8, 6)/28)` -/
def P8147880404522822849.Spec : Prop :=
  ∀ n, P8147880404522822849.a n = A084631 n

end A084631

/-! ## A084631.P9298052049464206024

`floor(C(n+8, 8)/C(n+2, 2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084631

/-- `floor(C(n+8, 8)/C(n+2, 2))` -/
def P9298052049464206024.Spec : Prop :=
  ∀ n, P9298052049464206024.a n = A084631 n

theorem P9298052049464206024.correct : P9298052049464206024.Spec := by
  intro n
  simp only [A084631]

end A084631

/-! ## A084631.P12409406583980442083

`floor(A053310(n)/∑[∑[n+1]])`
-/

namespace A084631.P12409406583980442083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053310 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A084631.P12409406583980442083

namespace A084631

/-- `floor(A053310(n)/∑[∑[n+1]])` -/
def P12409406583980442083.Spec : Prop :=
  ∀ n, P12409406583980442083.a n = A084631 n

end A084631

/-! ## A084631.P14618435662729333226

`floor(Δ[A215053(n+8)/4])`
-/

namespace A084631.P14618435662729333226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215053 (n + 8) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A084631.P14618435662729333226

namespace A084631

/-- `floor(Δ[A215053(n+8)/4])` -/
def P14618435662729333226.Spec : Prop :=
  ∀ n, P14618435662729333226.a n = A084631 n

end A084631

/-! ## A084631.P10513840782156165051

`floor(A051172(n+9)/4)`
-/

namespace A084631.P10513840782156165051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051172 (n + 9) : ℚ) / 4⌋

end

end A084631.P10513840782156165051

namespace A084631

/-- `floor(A051172(n+9)/4)` -/
def P10513840782156165051.Spec : Prop :=
  ∀ n, P10513840782156165051.a n = A084631 n

end A084631

/-! ## A084631.P2323702619404192268

`floor(A000579(n+8)/28)`
-/

namespace A084631.P2323702619404192268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000579 (n + 8) : ℚ) / 28⌋

end

end A084631.P2323702619404192268

namespace A084631

/-- `floor(A000579(n+8)/28)` -/
def P2323702619404192268.Spec : Prop :=
  ∀ n, P2323702619404192268.a n = A084631 n

end A084631

/-!
# A084633: Inverse binomial transform of repeated odd numbers.

The programs for A084633, the canonical program `A084633.P10153496245687767378` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084633 has offset 0).

The definition of A084633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084633.P3917237112478776836

`ogf((1+2x+2x^2)/(1+2x))`
-/

namespace A084633.P3917237112478776836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2] [1, 2] n

end

end A084633.P3917237112478776836

namespace A084633

/-- `ogf((1+2x+2x^2)/(1+2x))` -/
def P3917237112478776836.Spec : Prop :=
  ∀ n, P3917237112478776836.a n = A084633 n

end A084633

/-! ## A084633.P10153496245687767378

`-(2*a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084633

/-- `-(2*a(n-1))` -/
def P10153496245687767378.Spec : Prop :=
  ∀ n, P10153496245687767378.a n = A084633 n

theorem P10153496245687767378.correct : P10153496245687767378.Spec := by
  intro n
  simp only [A084633]

end A084633

/-! ## A084633.P11180016376690805692

`4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=-4`
-/

namespace A084633.P11180016376690805692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, -4] fun n a =>
  4 * a (n - 2)

end

end A084633.P11180016376690805692

namespace A084633

/-- `4*a(n-2)` -/
def P11180016376690805692.Spec : Prop :=
  ∀ n, P11180016376690805692.a n = A084633 n

end A084633

/-! ## A084633.P6783369001109532694

`a(n-1)/(1/2-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A084633.P6783369001109532694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A084633.P6783369001109532694

namespace A084633

/-- `a(n-1)/(1/2-1)` -/
def P6783369001109532694.Spec : Prop :=
  ∀ n, P6783369001109532694.a n = (A084633 n : ℚ)

end A084633

/-! ## A084633.P1335960513457977517

`(-2)^(n-2)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A084633.P1335960513457977517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 1)

end

end A084633.P1335960513457977517

namespace A084633

/-- `(-2)^(n-2)-a(n-1)` -/
def P1335960513457977517.Spec : Prop :=
  ∀ n, P1335960513457977517.a n = (A084633 n : ℚ)

end A084633

/-! ## A084633.P14288624138389861145

`2-(a(n-1)+a(n-1)+2%n)` with `a(0)=1`
-/

namespace A084633.P14288624138389861145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) + (a (n - 1) + ((2 % n : ℕ) : ℤ)))

end

end A084633.P14288624138389861145

namespace A084633

/-- `2-(a(n-1)+a(n-1)+2%n)` -/
def P14288624138389861145.Spec : Prop :=
  ∀ n, P14288624138389861145.a n = A084633 n

end A084633

/-! ## A084633.P824817777312499304

`1-floor(a(n-1)+a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084633.P824817777312499304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  1 - (a (n - 1) + (a (n - 1) + 1))

end

end A084633.P824817777312499304

namespace A084633

/-- `1-floor(a(n-1)+a(n-1)+1)` -/
def P824817777312499304.Spec : Prop :=
  ∀ n, P824817777312499304.a n = A084633 n

theorem P824817777312499304.correct : P824817777312499304.Spec := by
  intro n
  simp only [A084633, Nat.add_sub_cancel, A084633.P824817777312499304.a, A084633.P10153496245687767378.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084633

/-! ## A084633.P9793285515598516533

`floor(1-a(n-1)-a(n-1))-1` with `a(0)=1, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084633.P9793285515598516533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  1 - a (n - 1) - a (n - 1) - 1

end

end A084633.P9793285515598516533

namespace A084633

/-- `floor(1-a(n-1)-a(n-1))-1` -/
def P9793285515598516533.Spec : Prop :=
  ∀ n, P9793285515598516533.a n = A084633 n

theorem P9793285515598516533.correct : P9793285515598516533.Spec := by
  intro n
  simp only [A084633, Nat.add_sub_cancel, A084633.P9793285515598516533.a, A084633.P10153496245687767378.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084633

/-! ## A084633.P1241547750650195105

`gcd(3, a(n-1))-(a(n-1)+a(n-1)+1)` with `a(0)=1, a(1)=0`
-/

namespace A084633.P1241547750650195105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (Int.gcd 3 (a (n - 1)) : ℤ) - (a (n - 1) + (a (n - 1) + 1))

end

end A084633.P1241547750650195105

namespace A084633

/-- `gcd(3, a(n-1))-(a(n-1)+a(n-1)+1)` -/
def P1241547750650195105.Spec : Prop :=
  ∀ n, P1241547750650195105.a n = A084633 n

end A084633

/-! ## A084633.P9671742713768420441

`A117575(2*n)+char[1]`
-/

namespace A084633.P9671742713768420441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A084633.P9671742713768420441

namespace A084633

/-- `A117575(2*n)+char[1]` -/
def P9671742713768420441.Spec : Prop :=
  ∀ n, P9671742713768420441.a n = A084633 n

end A084633

/-! ## A084633.P4796094846998518668

`A034008(n)*A280560(n)`
-/

namespace A084633.P4796094846998518668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A280560 n

end

end A084633.P4796094846998518668

namespace A084633

/-- `A034008(n)*A280560(n)` -/
def P4796094846998518668.Spec : Prop :=
  ∀ n, P4796094846998518668.a n = A084633 n

end A084633

/-! ## A084633.P11127508702392492785

`A033322(n+1)-A123344(n)`
-/

namespace A084633.P11127508702392492785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) - A123344 n

end

end A084633.P11127508702392492785

namespace A084633

/-- `A033322(n+1)-A123344(n)` -/
def P11127508702392492785.Spec : Prop :=
  ∀ n, P11127508702392492785.a n = A084633 n

end A084633

/-! ## A084633.P8131415705561743964

`(2-A084099(n)²)*A034008(n)`
-/

namespace A084633.P8131415705561743964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A084099 n ^ 2) * A034008 n

end

end A084633.P8131415705561743964

namespace A084633

/-- `(2-A084099(n)²)*A034008(n)` -/
def P8131415705561743964.Spec : Prop :=
  ∀ n, P8131415705561743964.a n = A084633 n

end A084633

/-! ## A084633.P15620705874798286487

`A233583(n+1)-(A123344(n)+n)`
-/

namespace A084633.P15620705874798286487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - (A123344 n + (n : ℤ))

end

end A084633.P15620705874798286487

namespace A084633

/-- `A233583(n+1)-(A123344(n)+n)` -/
def P15620705874798286487.Spec : Prop :=
  ∀ n, P15620705874798286487.a n = A084633 n

end A084633

/-! ## A084633.P17026621266287654990

`round((abs(2-n)-n)^n/2)`
-/

namespace A084633.P17026621266287654990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((|2 - (n : ℤ)| - (n : ℤ)) ^ n : ℚ) / 2)

end

end A084633.P17026621266287654990

namespace A084633

/-- `round((abs(2-n)-n)^n/2)` -/
def P17026621266287654990.Spec : Prop :=
  ∀ n, P17026621266287654990.a n = A084633 n

end A084633

/-! ## A084633.P6477270832155825801

`A186949(n)/A280560(n)`
-/

namespace A084633.P6477270832155825801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186949 n : ℚ) / (A280560 n : ℚ)

end

end A084633.P6477270832155825801

namespace A084633

/-- `A186949(n)/A280560(n)` -/
def P6477270832155825801.Spec : Prop :=
  ∀ n, P6477270832155825801.a n = (A084633 n : ℚ)

end A084633

/-! ## A084633.P16743254868619829733

`char[1]+∑[A110164(n)]`
-/

namespace A084633.P16743254868619829733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A084633.P16743254868619829733

namespace A084633

/-- `char[1]+∑[A110164(n)]` -/
def P16743254868619829733.Spec : Prop :=
  ∀ n, P16743254868619829733.a n = A084633 n

end A084633

/-! ## A084633.P12594220075877129315

`A058764(n)-A056450(n)`
-/

namespace A084633.P12594220075877129315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n - A056450 n

end

end A084633.P12594220075877129315

namespace A084633

/-- `A058764(n)-A056450(n)` -/
def P12594220075877129315.Spec : Prop :=
  ∀ n, P12594220075877129315.a n = A084633 n

end A084633

/-! ## A084633.P3701457328898062998

`A290074(n)-A000225(n)`
-/

namespace A084633.P3701457328898062998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 n - A000225 n

end

end A084633.P3701457328898062998

namespace A084633

/-- `A290074(n)-A000225(n)` -/
def P3701457328898062998.Spec : Prop :=
  ∀ n, P3701457328898062998.a n = A084633 n

end A084633

/-! ## A084633.P10313886941541011464

`2*A016116(n)²-A111286(n+1)`
-/

namespace A084633.P10313886941541011464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016116 n ^ 2 - A111286 (n + 1)

end

end A084633.P10313886941541011464

namespace A084633

/-- `2*A016116(n)²-A111286(n+1)` -/
def P10313886941541011464.Spec : Prop :=
  ∀ n, P10313886941541011464.a n = A084633 n

end A084633

/-!
# A084634: Binomial transform of 1, 1, 1, 2, 2, 2, 2, 2, ...

The programs for A084634, the canonical program `A084634.P2714212107151663742` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084634 has offset 0).

The definition of A084634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084634.P2714212107151663742

`2^(n+1)-1-C(n+1, 2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084634

/-- `2^(n+1)-1-C(n+1, 2)` -/
def P2714212107151663742.Spec : Prop :=
  ∀ n, P2714212107151663742.a n = A084634 n

theorem P2714212107151663742.correct : P2714212107151663742.Spec := by
  intro n
  simp only [A084634]

end A084634

/-! ## A084634.P7646986090819817282

`2^(n+1)-(n²+n+2)/2`
-/

namespace A084634.P7646986090819817282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) - (n ^ 2 + n + 2 : ℚ) / 2

end

end A084634.P7646986090819817282

namespace A084634

/-- `2^(n+1)-(n²+n+2)/2` -/
def P7646986090819817282.Spec : Prop :=
  ∀ n, P7646986090819817282.a n = (A084634 n : ℚ)

theorem P7646986090819817282.correct : P7646986090819817282.Spec := by
  intro n
  simp only [A084634, Nat.add_sub_cancel, A084634.P7646986090819817282.a, A084634.P2714212107151663742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084634

/-! ## A084634.P11996194774186134716

`xor(∑[2^n], ∑[n])`
-/

namespace A084634.P11996194774186134716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A084634.P11996194774186134716

namespace A084634

/-- `xor(∑[2^n], ∑[n])` -/
def P11996194774186134716.Spec : Prop :=
  ∀ n, (P11996194774186134716.a n : ℤ) = A084634 n

end A084634

/-! ## A084634.P2848405463291017309

`-∑[or(n, -2^n)]`
-/

namespace A084634.P2848405463291017309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084634.P2848405463291017309

namespace A084634

/-- `-∑[or(n, -2^n)]` -/
def P2848405463291017309.Spec : Prop :=
  ∀ n, P2848405463291017309.a n = A084634 n

end A084634

/-! ## A084634.P9729851446750962723

`∑[∑[ogf((1-3x+3x^2)/(1-3x+2x^2))]]`
-/

namespace A084634.P9729851446750962723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -3, 2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P9729851446750962723

namespace A084634

/-- `∑[∑[ogf((1-3x+3x^2)/(1-3x+2x^2))]]` -/
def P9729851446750962723.Spec : Prop :=
  ∀ n, P9729851446750962723.a n = A084634 n

end A084634

/-! ## A084634.P12911864658321459793

`∑[a(n-1)-(2-a(n-1)-n)]` with `a(0)=1`
-/

namespace A084634.P12911864658321459793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P12911864658321459793

namespace A084634

/-- `∑[a(n-1)-(2-a(n-1)-n)]` -/
def P12911864658321459793.Spec : Prop :=
  ∀ n, P12911864658321459793.a n = A084634 n

end A084634

/-! ## A084634.P9310076664263432859

`∑[A000325(n)]`
-/

namespace A084634.P9310076664263432859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P9310076664263432859

namespace A084634

/-- `∑[A000325(n)]` -/
def P9310076664263432859.Spec : Prop :=
  ∀ n, P9310076664263432859.a n = A084634 n

end A084634

/-! ## A084634.P18059366389646711009

`-∑[n-A000079(n)]`
-/

namespace A084634.P18059366389646711009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084634.P18059366389646711009

namespace A084634

/-- `-∑[n-A000079(n)]` -/
def P18059366389646711009.Spec : Prop :=
  ∀ n, P18059366389646711009.a n = A084634 n

end A084634

/-! ## A084634.P16122229931900437012

`Δ[A084635(n+1)]`
-/

namespace A084634.P16122229931900437012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084634.P16122229931900437012

namespace A084634

/-- `Δ[A084635(n+1)]` -/
def P16122229931900437012.Spec : Prop :=
  ∀ n, P16122229931900437012.a n = A084634 n

theorem P16122229931900437012.correct : P16122229931900437012.Spec := by
  intro n
  simp only [A084634, Nat.add_sub_cancel, A084634.P16122229931900437012.f1, A084634.P16122229931900437012.a, A084634.P2714212107151663742.a, A084635, A084635.P7084108224544920820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084634

/-! ## A084634.P8657632770335995017

`∑[A132824(n+1)]/2`
-/

namespace A084634.P8657632770335995017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132824 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A084634.P8657632770335995017

namespace A084634

/-- `∑[A132824(n+1)]/2` -/
def P8657632770335995017.Spec : Prop :=
  ∀ n, P8657632770335995017.a n = (A084634 n : ℚ)

end A084634

/-! ## A084634.P2514969531410543298

`Δ[Δ[A084636(n+1)]]`
-/

namespace A084634.P2514969531410543298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084636 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084634.P2514969531410543298

namespace A084634

/-- `Δ[Δ[A084636(n+1)]]` -/
def P2514969531410543298.Spec : Prop :=
  ∀ n, P2514969531410543298.a n = A084634 n

end A084634

/-! ## A084634.P262006472112162560

`A055580(n)%A048578(n)`
-/

namespace A084634.P262006472112162560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055580 n) (A048578 n)

end

end A084634.P262006472112162560

namespace A084634

/-- `A055580(n)%A048578(n)` -/
def P262006472112162560.Spec : Prop :=
  ∀ n, P262006472112162560.a n = A084634 n

end A084634

/-! ## A084634.P2291038599512499578

`∑[A336996(n²)-n]`
-/

namespace A084634.P2291038599512499578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (n ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P2291038599512499578

namespace A084634

/-- `∑[A336996(n²)-n]` -/
def P2291038599512499578.Spec : Prop :=
  ∀ n, P2291038599512499578.a n = A084634 n

end A084634

/-! ## A084634.P9634669233755334647

`∑[A139548(n²)-n]`
-/

namespace A084634.P9634669233755334647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139548 (n ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P9634669233755334647

namespace A084634

/-- `∑[A139548(n²)-n]` -/
def P9634669233755334647.Spec : Prop :=
  ∀ n, P9634669233755334647.a n = A084634 n

end A084634

/-! ## A084634.P7479380438218914072

`∑[A194356(n²)-n]`
-/

namespace A084634.P7479380438218914072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194356 (n ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P7479380438218914072

namespace A084634

/-- `∑[A194356(n²)-n]` -/
def P7479380438218914072.Spec : Prop :=
  ∀ n, P7479380438218914072.a n = A084634 n

end A084634

/-! ## A084634.P4417078636526316923

`∑[A194357(n²)-n]`
-/

namespace A084634.P4417078636526316923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194357 (n ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P4417078636526316923

namespace A084634

/-- `∑[A194357(n²)-n]` -/
def P4417078636526316923.Spec : Prop :=
  ∀ n, P4417078636526316923.a n = A084634 n

end A084634

/-! ## A084634.P17582342314486427282

`∑[A049063((n+1)²)-n]`
-/

namespace A084634.P17582342314486427282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 ((n + 1) ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P17582342314486427282

namespace A084634

/-- `∑[A049063((n+1)²)-n]` -/
def P17582342314486427282.Spec : Prop :=
  ∀ n, P17582342314486427282.a n = A084634 n

end A084634

/-! ## A084634.P17329093208653690102

`∑[A105070((n+1)²)-n]`
-/

namespace A084634.P17329093208653690102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 ((n + 1) ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P17329093208653690102

namespace A084634

/-- `∑[A105070((n+1)²)-n]` -/
def P17329093208653690102.Spec : Prop :=
  ∀ n, P17329093208653690102.a n = A084634 n

end A084634

/-! ## A084634.P3186370451918843039

`∑[A207622((n+1)²)-n]`
-/

namespace A084634.P3186370451918843039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207622 ((n + 1) ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P3186370451918843039

namespace A084634

/-- `∑[A207622((n+1)²)-n]` -/
def P3186370451918843039.Spec : Prop :=
  ∀ n, P3186370451918843039.a n = A084634 n

end A084634

/-! ## A084634.P12741148448602896054

`∑[A208754((n+1)²)-n]`
-/

namespace A084634.P12741148448602896054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208754 ((n + 1) ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084634.P12741148448602896054

namespace A084634

/-- `∑[A208754((n+1)²)-n]` -/
def P12741148448602896054.Spec : Prop :=
  ∀ n, P12741148448602896054.a n = A084634 n

end A084634

/-!
# A084635: Binomial transform of 1,0,1,0,1,1,1,...

The programs for A084635, the canonical program `A084635.P7084108224544920820` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084635 has offset 0).

The definition of A084635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084635.P7084108224544920820

`2^n-n-C(n, 3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084635

/-- `2^n-n-C(n, 3)` -/
def P7084108224544920820.Spec : Prop :=
  ∀ n, P7084108224544920820.a n = A084635 n

theorem P7084108224544920820.correct : P7084108224544920820.Spec := by
  intro n
  simp only [A084635]

end A084635

/-! ## A084635.P18169064888608293019

`2^n-n*(n²-3*n+8)/6`
-/

namespace A084635.P18169064888608293019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - ((n : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 8) : ℚ) / 6

end

end A084635.P18169064888608293019

namespace A084635

/-- `2^n-n*(n²-3*n+8)/6` -/
def P18169064888608293019.Spec : Prop :=
  ∀ n, P18169064888608293019.a n = (A084635 n : ℚ)

theorem P18169064888608293019.correct : P18169064888608293019.Spec := by
  intro n
  simp only [A084635, Nat.add_sub_cancel, A084635.P18169064888608293019.a, A084635.P7084108224544920820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084635

/-! ## A084635.P6530848343771578168

`abs(A000079(n)-C(n, 3)-n)`
-/

namespace A084635.P6530848343771578168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - (Nat.choose n 3 : ℤ) - (n : ℤ)|

end

end A084635.P6530848343771578168

namespace A084635

/-- `abs(A000079(n)-C(n, 3)-n)` -/
def P6530848343771578168.Spec : Prop :=
  ∀ n, P6530848343771578168.a n = A084635 n

end A084635

/-! ## A084635.P5792798896312362513

`abs(A050407(n)-∑[A056469(n)-(n+1)])`
-/

namespace A084635.P5792798896312362513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050407 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A084635.P5792798896312362513

namespace A084635

/-- `abs(A050407(n)-∑[A056469(n)-(n+1)])` -/
def P5792798896312362513.Spec : Prop :=
  ∀ n, P5792798896312362513.a n = A084635 n

end A084635

/-! ## A084635.P3581005019673529274

`Δ[Δ[A084637(n)]]`
-/

namespace A084635.P3581005019673529274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084635.P3581005019673529274

namespace A084635

/-- `Δ[Δ[A084637(n)]]` -/
def P3581005019673529274.Spec : Prop :=
  ∀ n, P3581005019673529274.a n = A084635 n

end A084635

/-! ## A084635.P4969082204625089271

`Δ[A084636(n)%A297917(n+1)]`
-/

namespace A084635.P4969082204625089271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084636 n) (A297917 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084635.P4969082204625089271

namespace A084635

/-- `Δ[A084636(n)%A297917(n+1)]` -/
def P4969082204625089271.Spec : Prop :=
  ∀ n, P4969082204625089271.a n = A084635 n

end A084635

/-! ## A084635.P2790667755296233867

`Δ[A084636(n)%A119375(n)]`
-/

namespace A084635.P2790667755296233867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084636 n) (A119375 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084635.P2790667755296233867

namespace A084635

/-- `Δ[A084636(n)%A119375(n)]` -/
def P2790667755296233867.Spec : Prop :=
  ∀ n, P2790667755296233867.a n = A084635 n

end A084635

/-!
# A084636: Binomial transform of (1,0,1,0,1,0,2,0,2,0,2,0,...).

The programs for A084636, the canonical program `A084636.P12201687113205627878` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084636 has offset 0).

The definition of A084636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084636.P12201687113205627878

`A084635(n-1)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084636

/-- `A084635(n-1)+a(n-1)` -/
def P12201687113205627878.Spec : Prop :=
  ∀ n, P12201687113205627878.a n = A084636 n

theorem P12201687113205627878.correct : P12201687113205627878.Spec := by
  intro n
  simp only [A084636]

end A084636

/-! ## A084636.P9635056946498938471

`A084638(n)+A000579(n)`
-/

namespace A084636.P9635056946498938471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n + A000579 n

end

end A084636.P9635056946498938471

namespace A084636

/-- `A084638(n)+A000579(n)` -/
def P9635056946498938471.Spec : Prop :=
  ∀ n, P9635056946498938471.a n = A084636 n

end A084636

/-! ## A084636.P16143797315030698857

`A011782(n)+A002664(abs(1-n))`
-/

namespace A084636.P16143797315030698857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002664 |1 - (n : ℤ)|.toNat

end

end A084636.P16143797315030698857

namespace A084636

/-- `A011782(n)+A002664(abs(1-n))` -/
def P16143797315030698857.Spec : Prop :=
  ∀ n, P16143797315030698857.a n = A084636 n

end A084636

/-! ## A084636.P17761715386372565272

`A084637(n)+A000389(A289207(n+1))`
-/

namespace A084636.P17761715386372565272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n + A000389 (A289207 (n + 1)).toNat

end

end A084636.P17761715386372565272

namespace A084636

/-- `A084637(n)+A000389(A289207(n+1))` -/
def P17761715386372565272.Spec : Prop :=
  ∀ n, P17761715386372565272.a n = A084636 n

end A084636

/-! ## A084636.P9000314888034624180

`A008859(n)+A084638(n)-A006261(n)`
-/

namespace A084636.P9000314888034624180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n + (A084638 n - A006261 n)

end

end A084636.P9000314888034624180

namespace A084636

/-- `A008859(n)+A084638(n)-A006261(n)` -/
def P9000314888034624180.Spec : Prop :=
  ∀ n, P9000314888034624180.a n = A084636 n

end A084636

/-! ## A084636.P15877533279026721088

`A000579(n)+A084637(n)-A000579(A171950(n+1))`
-/

namespace A084636.P15877533279026721088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + (A084637 n - A000579 (A171950 (n + 1)).toNat)

end

end A084636.P15877533279026721088

namespace A084636

/-- `A000579(n)+A084637(n)-A000579(A171950(n+1))` -/
def P15877533279026721088.Spec : Prop :=
  ∀ n, P15877533279026721088.a n = A084636 n

end A084636

/-! ## A084636.P7329717437925168567

`Δ[A084637(n)%(2^n)]`
-/

namespace A084636.P7329717437925168567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084637 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084636.P7329717437925168567

namespace A084636

/-- `Δ[A084637(n)%(2^n)]` -/
def P7329717437925168567.Spec : Prop :=
  ∀ n, P7329717437925168567.a n = A084636 n

end A084636

/-! ## A084636.P1569542094371262282

`A000007(n)+Δ[A084637(n)]`
-/

namespace A084636.P1569542094371262282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A084636.P1569542094371262282

namespace A084636

/-- `A000007(n)+Δ[A084637(n)]` -/
def P1569542094371262282.Spec : Prop :=
  ∀ n, P1569542094371262282.a n = A084636 n

end A084636

/-! ## A084636.P17947742539488757862

`A084637(n+1)+A084638(n)-A084638(n+1)`
-/

namespace A084636.P17947742539488757862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 (n + 1) + (A084638 n - A084638 (n + 1))

end

end A084636.P17947742539488757862

namespace A084636

/-- `A084637(n+1)+A084638(n)-A084638(n+1)` -/
def P17947742539488757862.Spec : Prop :=
  ∀ n, P17947742539488757862.a n = A084636 n

end A084636

/-! ## A084636.P6305983521697029134

`Δ[Δ[A084638(n)]]`
-/

namespace A084636.P6305983521697029134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084636.P6305983521697029134

namespace A084636

/-- `Δ[Δ[A084638(n)]]` -/
def P6305983521697029134.Spec : Prop :=
  ∀ n, P6305983521697029134.a n = A084636 n

end A084636

/-!
# A084637: Binomial transform of (1,0,1,0,1,0,1,1,1,1,1,...).

The programs for A084637, the canonical program `A084637.P3601992227029986128` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084637 has offset 0).

The definition of A084637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084637.P3601992227029986128

`2^n-n*(n^4-10*n^3+55*n²-110*n+184)/120`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084637

/-- `2^n-n*(n^4-10*n^3+55*n²-110*n+184)/120` -/
def P3601992227029986128.Spec : Prop :=
  ∀ n, P3601992227029986128.a n = (A084637 n : ℚ)

end A084637

/-! ## A084637.P16596000831625205862

`Δ[A084638(n)%A000079(n)]`
-/

namespace A084637.P16596000831625205862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084638 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084637.P16596000831625205862

namespace A084637

/-- `Δ[A084638(n)%A000079(n)]` -/
def P16596000831625205862.Spec : Prop :=
  ∀ n, P16596000831625205862.a n = A084637 n

end A084637

/-! ## A084637.P14033956928923628061

`Δ[and(A000225(n), A084638(n))]`
-/

namespace A084637.P14033956928923628061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A084638 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084637.P14033956928923628061

namespace A084637

/-- `Δ[and(A000225(n), A084638(n))]` -/
def P14033956928923628061.Spec : Prop :=
  ∀ n, P14033956928923628061.a n = A084637 n

end A084637

/-! ## A084637.P14351529568766839597

`or(Δ[A084638(n)], A011782(n))`
-/

namespace A084637.P14351529568766839597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A011782 n)

end

end A084637.P14351529568766839597

namespace A084637

/-- `or(Δ[A084638(n)], A011782(n))` -/
def P14351529568766839597.Spec : Prop :=
  ∀ n, P14351529568766839597.a n = A084637 n

end A084637

/-! ## A084637.P14153541705245999650

`A308663(∑[comp[A308650(3*n+2)]])`
-/

namespace A084637.P14153541705245999650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308650 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084637.P14153541705245999650

namespace A084637

/-- `A308663(∑[comp[A308650(3*n+2)]])` -/
def P14153541705245999650.Spec : Prop :=
  ∀ n, P14153541705245999650.a n = A084637 n

end A084637

/-!
# A084638: Binomial transform of (1,0,1,0,1,0,1,0,2,0,2,0,2,....).

The programs for A084638, the canonical program `A084638.P12399577324000291172` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084638 has offset 0).

The definition of A084638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084638.P12399577324000291172

`A084637(n-1)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084638

/-- `A084637(n-1)+a(n-1)` -/
def P12399577324000291172.Spec : Prop :=
  ∀ n, P12399577324000291172.a n = A084638 n

theorem P12399577324000291172.correct : P12399577324000291172.Spec := by
  intro n
  simp only [A084638]

end A084638

/-! ## A084638.P2906862482920700243

`A084636(n)-A000579(n)`
-/

namespace A084638.P2906862482920700243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084636 n - A000579 n

end

end A084638.P2906862482920700243

namespace A084638

/-- `A084636(n)-A000579(n)` -/
def P2906862482920700243.Spec : Prop :=
  ∀ n, P2906862482920700243.a n = A084638 n

end A084638

/-! ## A084638.P10752139140485629541

`A084637(n)-∑[A000389(A289207(n))]`
-/

namespace A084638.P10752139140485629541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084638.P10752139140485629541

namespace A084638

/-- `A084637(n)-∑[A000389(A289207(n))]` -/
def P10752139140485629541.Spec : Prop :=
  ∀ n, P10752139140485629541.a n = A084638 n

end A084638

/-! ## A084638.P649618745279909186

`A035039(A171950(n+1))+A011782(n)`
-/

namespace A084638.P649618745279909186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (A171950 (n + 1)).toNat + A011782 n

end

end A084638.P649618745279909186

namespace A084638

/-- `A035039(A171950(n+1))+A011782(n)` -/
def P649618745279909186.Spec : Prop :=
  ∀ n, P649618745279909186.a n = A084638 n

end A084638

/-! ## A084638.P11421700595574776811

`A084637(n)-A000579(A171950(n+1))`
-/

namespace A084638.P11421700595574776811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n - A000579 (A171950 (n + 1)).toNat

end

end A084638.P11421700595574776811

namespace A084638

/-- `A084637(n)-A000579(A171950(n+1))` -/
def P11421700595574776811.Spec : Prop :=
  ∀ n, P11421700595574776811.a n = A084638 n

end A084638

/-! ## A084638.P14923440654640018853

`A059174(n)+A084637(n)-A008859(n)`
-/

namespace A084638.P14923440654640018853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n + (A084637 n - A008859 n)

end

end A084638.P14923440654640018853

namespace A084638

/-- `A059174(n)+A084637(n)-A008859(n)` -/
def P14923440654640018853.Spec : Prop :=
  ∀ n, P14923440654640018853.a n = A084638 n

end A084638

/-! ## A084638.P6971570307114956359

`A000007(n)+∑[A084637(n)]-A084637(n)`
-/

namespace A084638.P6971570307114956359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j - A084637 n)

end

end A084638.P6971570307114956359

namespace A084638

/-- `A000007(n)+∑[A084637(n)]-A084637(n)` -/
def P6971570307114956359.Spec : Prop :=
  ∀ n, P6971570307114956359.a n = A084638 n

end A084638

/-! ## A084638.P8355897395196012247

`∑[A084637(n)]-A084637(n)%A003945(n)`
-/

namespace A084638.P8355897395196012247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A084637 n) (A003945 n)

end

end A084638.P8355897395196012247

namespace A084638

/-- `∑[A084637(n)]-A084637(n)%A003945(n)` -/
def P8355897395196012247.Spec : Prop :=
  ∀ n, P8355897395196012247.a n = A084638 n

end A084638

/-!
# A084639: Expansion of x*(1+2*x)/((1+x)*(1-x)*(1-2*x)).

The programs for A084639, the canonical program `A084639.P1953741775173059332` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084639 has offset 0).

The definition of A084639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2)/(1-2x-x^2+2x^3))` (program `A084639.P1953741775173059332`, by `A084639.P1953741775173059332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084639.P1953741775173059332

`ogf((x+2x^2)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084639

/-- `ogf((x+2x^2)/(1-2x-x^2+2x^3))` -/
def P1953741775173059332.Spec : Prop :=
  ∀ n, P1953741775173059332.a n = A084639 n

theorem P1953741775173059332.correct : P1953741775173059332.Spec := by
  intro n
  simp only [A084639]

end A084639

/-! ## A084639.P13469316678206999313

`a(n-2)+2^n` with `a(0)=0, a(1)=1`
-/

namespace A084639.P13469316678206999313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 ^ n

end

end A084639.P13469316678206999313

namespace A084639

/-- `a(n-2)+2^n` -/
def P13469316678206999313.Spec : Prop :=
  ∀ n, (P13469316678206999313.a n : ℤ) = A084639 n

end A084639

/-! ## A084639.P17560292691814782953

`a(n-1)+2*a(n-2)+3` with `a(0)=0, a(1)=1`
-/

namespace A084639.P17560292691814782953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 3

end

end A084639.P17560292691814782953

namespace A084639

/-- `a(n-1)+2*a(n-2)+3` -/
def P17560292691814782953.Spec : Prop :=
  ∀ n, (P17560292691814782953.a n : ℤ) = A084639 n

end A084639

/-! ## A084639.P337102420314950458

`5*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9`
-/

namespace A084639.P337102420314950458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A084639.P337102420314950458

namespace A084639

/-- `5*a(n-2)-4*a(n-4)` -/
def P337102420314950458.Spec : Prop :=
  ∀ n, P337102420314950458.a n = A084639 n

end A084639

/-! ## A084639.P8732229179773958355

`A001045(n+2)-A000034(n)`
-/

namespace A084639.P8732229179773958355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) - A000034 n

end

end A084639.P8732229179773958355

namespace A084639

/-- `A001045(n+2)-A000034(n)` -/
def P8732229179773958355.Spec : Prop :=
  ∀ n, P8732229179773958355.a n = A084639 n

end A084639

/-! ## A084639.P17331013004431435406

`2^(n+2)/3+(-1)^n/6-3/2`
-/

namespace A084639.P17331013004431435406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℚ) / 3 + ((-1) ^ n : ℚ) / 6 - (3 : ℚ) / 2

end

end A084639.P17331013004431435406

namespace A084639

/-- `2^(n+2)/3+(-1)^n/6-3/2` -/
def P17331013004431435406.Spec : Prop :=
  ∀ n, P17331013004431435406.a n = (A084639 n : ℚ)

end A084639

/-! ## A084639.P13721588573158191234

`or(2^n, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A084639.P13721588573158191234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lor (2 ^ n) (a (n - 2))

end

end A084639.P13721588573158191234

namespace A084639

/-- `or(2^n, a(n-2))` -/
def P13721588573158191234.Spec : Prop :=
  ∀ n, (P13721588573158191234.a n : ℤ) = A084639 n

end A084639

/-! ## A084639.P16595771434691779744

`xor(2^n, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A084639.P16595771434691779744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (2 ^ n) (a (n - 2))

end

end A084639.P16595771434691779744

namespace A084639

/-- `xor(2^n, a(n-2))` -/
def P16595771434691779744.Spec : Prop :=
  ∀ n, (P16595771434691779744.a n : ℤ) = A084639 n

end A084639

/-! ## A084639.P11166021714555200134

`∑[2^n-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A084639.P11166021714555200134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084639.P11166021714555200134

namespace A084639

/-- `∑[2^n-a(n-1)]` -/
def P11166021714555200134.Spec : Prop :=
  ∀ n, P11166021714555200134.a n = A084639 n

end A084639

/-! ## A084639.P2246082642502171823

`floor(gcd(2, n)+2*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A084639.P2246082642502171823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd 2 n + 2 * a (n - 1)

end

end A084639.P2246082642502171823

namespace A084639

/-- `floor(gcd(2, n)+2*a(n-1))` -/
def P2246082642502171823.Spec : Prop :=
  ∀ n, (P2246082642502171823.a n : ℤ) = A084639 n

end A084639

/-! ## A084639.P1043747083377348508

`floor(2*(a(n-1)+1)-n%2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A084639.P1043747083377348508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + 1) - ((n % 2 : ℕ) : ℤ)

end

end A084639.P1043747083377348508

namespace A084639

/-- `floor(2*(a(n-1)+1)-n%2)` -/
def P1043747083377348508.Spec : Prop :=
  ∀ n, P1043747083377348508.a n = A084639 n

end A084639

/-! ## A084639.P12535015951711176643

`floor(∑[2*a(n-1)]-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A084639.P12535015951711176643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A084639.P12535015951711176643

namespace A084639

/-- `floor(∑[2*a(n-1)]-a(n-1))` -/
def P12535015951711176643.Spec : Prop :=
  ∀ n, P12535015951711176643.a n = A084639 n

end A084639

/-! ## A084639.P11529815974126940336

`floor(a(n-1)+a(n-2)+a(n-2)+3)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A084639.P11529815974126940336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 3))

end

end A084639.P11529815974126940336

namespace A084639

/-- `floor(a(n-1)+a(n-2)+a(n-2)+3)` -/
def P11529815974126940336.Spec : Prop :=
  ∀ n, (P11529815974126940336.a n : ℤ) = A084639 n

end A084639

/-! ## A084639.P3066791310260363515

`∑[record[A328284(n)]]`
-/

namespace A084639.P3066791310260363515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084639.P3066791310260363515

namespace A084639

/-- `∑[record[A328284(n)]]` -/
def P3066791310260363515.Spec : Prop :=
  ∀ n, P3066791310260363515.a n = A084639 n

end A084639

/-! ## A084639.P2977204549468622674

`∑[A135231(n)-1]`
-/

namespace A084639.P2977204549468622674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135231 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084639.P2977204549468622674

namespace A084639

/-- `∑[A135231(n)-1]` -/
def P2977204549468622674.Spec : Prop :=
  ∀ n, P2977204549468622674.a n = A084639 n

end A084639

/-! ## A084639.P7206862383566268834

`xor(3, A135351(n+3))`
-/

namespace A084639.P7206862383566268834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A135351 (n + 3))

end

end A084639.P7206862383566268834

namespace A084639

/-- `xor(3, A135351(n+3))` -/
def P7206862383566268834.Spec : Prop :=
  ∀ n, P7206862383566268834.a n = A084639 n

end A084639

/-! ## A084639.P13324363287624231849

`∑[record[A133730(n+1)]]`
-/

namespace A084639.P13324363287624231849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084639.P13324363287624231849

namespace A084639

/-- `∑[record[A133730(n+1)]]` -/
def P13324363287624231849.Spec : Prop :=
  ∀ n, P13324363287624231849.a n = A084639 n

end A084639

/-! ## A084639.P8368357361101008821

`and(A083944(n), A097074(n))`
-/

namespace A084639.P8368357361101008821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083944 n) (A097074 n)

end

end A084639.P8368357361101008821

namespace A084639

/-- `and(A083944(n), A097074(n))` -/
def P8368357361101008821.Spec : Prop :=
  ∀ n, P8368357361101008821.a n = A084639 n

end A084639

/-! ## A084639.P2609293130406388815

`and(A097074(n), A101622(n))`
-/

namespace A084639.P2609293130406388815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097074 n) (A101622 n)

end

end A084639.P2609293130406388815

namespace A084639

/-- `and(A097074(n), A101622(n))` -/
def P2609293130406388815.Spec : Prop :=
  ∀ n, P2609293130406388815.a n = A084639 n

end A084639

/-! ## A084639.P3879636933545600698

`and(A083944(n), A283642(n))`
-/

namespace A084639.P3879636933545600698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083944 n) (A283642 n)

end

end A084639.P3879636933545600698

namespace A084639

/-- `and(A083944(n), A283642(n))` -/
def P3879636933545600698.Spec : Prop :=
  ∀ n, P3879636933545600698.a n = A084639 n

end A084639

/-!
# A084640: Generalized Jacobsthal numbers.

The programs for A084640, the canonical program `A084640.P10377429662176258933` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084640 has offset 0).

The definition of A084640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084640.P10377429662176258933

`a(n-1)+2*a(n-2)+4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084640

/-- `a(n-1)+2*a(n-2)+4` -/
def P10377429662176258933.Spec : Prop :=
  ∀ n, (P10377429662176258933.a n : ℤ) = A084640 n

theorem P10377429662176258933.correct : P10377429662176258933.Spec := by
  intro n
  simp only [A084640]

end A084640

/-! ## A084640.P13595014526214766339

`(5*2^n+(-1)^n-6)/3`
-/

namespace A084640.P13595014526214766339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) + (-1) ^ n - 6 : ℚ) / 3

end

end A084640.P13595014526214766339

namespace A084640

/-- `(5*2^n+(-1)^n-6)/3` -/
def P13595014526214766339.Spec : Prop :=
  ∀ n, P13595014526214766339.a n = (A084640 n : ℚ)

theorem P13595014526214766339.correct : P13595014526214766339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084640, Nat.add_sub_cancel, A084640.P13595014526214766339.a, A084640.P10377429662176258933.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084640, Nat.add_sub_cancel, A084640.P13595014526214766339.a, A084640.P10377429662176258933.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084640

/-! ## A084640.P17273645742076692199

`ogf((x+3x^2)/(1-2x-x^2+2x^3))`
-/

namespace A084640.P17273645742076692199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -2, -1, 2] n

end

end A084640.P17273645742076692199

namespace A084640

/-- `ogf((x+3x^2)/(1-2x-x^2+2x^3))` -/
def P17273645742076692199.Spec : Prop :=
  ∀ n, P17273645742076692199.a n = A084640 n

end A084640

/-! ## A084640.P14578410425531010126

`2*(a(n-1)+gcd(2, n))-1` with `a(0)=0`
-/

namespace A084640.P14578410425531010126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + (Nat.gcd 2 n : ℤ)) - 1

end

end A084640.P14578410425531010126

namespace A084640

/-- `2*(a(n-1)+gcd(2, n))-1` -/
def P14578410425531010126.Spec : Prop :=
  ∀ n, P14578410425531010126.a n = A084640 n

end A084640

/-! ## A084640.P4015699072537884748

`2*(a(n-1)-n%2)+3` with `a(0)=0`
-/

namespace A084640.P4015699072537884748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) - ((n % 2 : ℕ) : ℤ)) + 3

end

end A084640.P4015699072537884748

namespace A084640

/-- `2*(a(n-1)-n%2)+3` -/
def P4015699072537884748.Spec : Prop :=
  ∀ n, P4015699072537884748.a n = A084640 n

end A084640

/-! ## A084640.P1648336833960091431

`(-1)^n+2*(a(n-1)+1)` with `a(0)=0`
-/

namespace A084640.P1648336833960091431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ n + 2 * (a (n - 1) + 1)

end

end A084640.P1648336833960091431

namespace A084640

/-- `(-1)^n+2*(a(n-1)+1)` -/
def P1648336833960091431.Spec : Prop :=
  ∀ n, P1648336833960091431.a n = A084640 n

end A084640

/-! ## A084640.P14769324257813556260

`1-2*((1-n)%2-a(n-1))` with `a(0)=0`
-/

namespace A084640.P14769324257813556260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - 2 * (Int.tmod (1 - (n : ℤ)) 2 - a (n - 1))

end

end A084640.P14769324257813556260

namespace A084640

/-- `1-2*((1-n)%2-a(n-1))` -/
def P14769324257813556260.Spec : Prop :=
  ∀ n, P14769324257813556260.a n = A084640 n

end A084640

/-! ## A084640.P2764218870771662243

`a(n-1)+2+a(n-1)+(-1)^n` with `a(0)=0`
-/

namespace A084640.P2764218870771662243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + (-1) ^ n)

end

end A084640.P2764218870771662243

namespace A084640

/-- `a(n-1)+2+a(n-1)+(-1)^n` -/
def P2764218870771662243.Spec : Prop :=
  ∀ n, P2764218870771662243.a n = A084640 n

end A084640

/-! ## A084640.P10928385630858008025

`a(n-1)+a(n-2)+a(n-2)+4` with `a(0)=0, a(1)=1`
-/

namespace A084640.P10928385630858008025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 4))

end

end A084640.P10928385630858008025

namespace A084640

/-- `a(n-1)+a(n-2)+a(n-2)+4` -/
def P10928385630858008025.Spec : Prop :=
  ∀ n, (P10928385630858008025.a n : ℤ) = A084640 n

theorem P10928385630858008025.correct : P10928385630858008025.Spec := by
  intro n
  simp only [A084640, Nat.add_sub_cancel, A084640.P10928385630858008025.a, A084640.P10377429662176258933.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084640

/-! ## A084640.P1742829157384131985

`3*a(n-2)-(a(n-2)-4-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A084640.P1742829157384131985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - 4 - a (n - 1))

end

end A084640.P1742829157384131985

namespace A084640

/-- `3*a(n-2)-(a(n-2)-4-a(n-1))` -/
def P1742829157384131985.Spec : Prop :=
  ∀ n, P1742829157384131985.a n = A084640 n

end A084640

/-! ## A084640.P11060619161389112960

`A084170(n)-1`
-/

namespace A084640.P11060619161389112960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 n - 1

end

end A084640.P11060619161389112960

namespace A084640

/-- `A084170(n)-1` -/
def P11060619161389112960.Spec : Prop :=
  ∀ n, P11060619161389112960.a n = A084640 n

end A084640

/-! ## A084640.P60209573052813457

`A048573(n)-2`
-/

namespace A084640.P60209573052813457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n - 2

end

end A084640.P60209573052813457

namespace A084640

/-- `A048573(n)-2` -/
def P60209573052813457.Spec : Prop :=
  ∀ n, P60209573052813457.a n = A084640 n

end A084640

/-! ## A084640.P9162112265093701382

`∑[A084214(n)]-1`
-/

namespace A084640.P9162112265093701382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084640.P9162112265093701382

namespace A084640

/-- `∑[A084214(n)]-1` -/
def P9162112265093701382.Spec : Prop :=
  ∀ n, P9162112265093701382.a n = A084640 n

end A084640

/-! ## A084640.P436213970377765105

`∑[abs(1-A140360(n))]`
-/

namespace A084640.P436213970377765105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A140360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084640.P436213970377765105

namespace A084640

/-- `∑[abs(1-A140360(n))]` -/
def P436213970377765105.Spec : Prop :=
  ∀ n, P436213970377765105.a n = A084640 n

end A084640

/-! ## A084640.P3326079689145415131

`2^(n+1)-A153643(n)`
-/

namespace A084640.P3326079689145415131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A153643 n

end

end A084640.P3326079689145415131

namespace A084640

/-- `2^(n+1)-A153643(n)` -/
def P3326079689145415131.Spec : Prop :=
  ∀ n, P3326079689145415131.a n = A084640 n

end A084640

/-! ## A084640.P9630886803957376937

`A052953(n)+A036563(n)`
-/

namespace A084640.P9630886803957376937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052953 n + A036563 n

end

end A084640.P9630886803957376937

namespace A084640

/-- `A052953(n)+A036563(n)` -/
def P9630886803957376937.Spec : Prop :=
  ∀ n, P9630886803957376937.a n = A084640 n

end A084640

/-! ## A084640.P16308772584325215530

`A141023(n)+A000975(n)`
-/

namespace A084640.P16308772584325215530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 n + A000975 n

end

end A084640.P16308772584325215530

namespace A084640

/-- `A141023(n)+A000975(n)` -/
def P16308772584325215530.Spec : Prop :=
  ∀ n, P16308772584325215530.a n = A084640 n

end A084640

/-! ## A084640.P1671137836876575570

`A166956(n)+A014113(n)`
-/

namespace A084640.P1671137836876575570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166956 n + A014113 n

end

end A084640.P1671137836876575570

namespace A084640

/-- `A166956(n)+A014113(n)` -/
def P1671137836876575570.Spec : Prop :=
  ∀ n, P1671137836876575570.a n = A084640 n

end A084640

/-! ## A084640.P8242483679163711064

`A171507(n)+A042948(n)`
-/

namespace A084640.P8242483679163711064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171507 n + A042948 n

end

end A084640.P8242483679163711064

namespace A084640

/-- `A171507(n)+A042948(n)` -/
def P8242483679163711064.Spec : Prop :=
  ∀ n, P8242483679163711064.a n = A084640 n

theorem P8242483679163711064.correct : P8242483679163711064.Spec := by
  intro n
  simp only [A084640, Nat.add_sub_cancel, A084640.P8242483679163711064.a, A084640.P10377429662176258933.a, A042948, A042948.P9013836715611112494.a, A171507, A171507.P13086555374085975948.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084640

/-! ## A084640.P9808609382461086417

`A140253(n)+A097072(n)`
-/

namespace A084640.P9808609382461086417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + A097072 n

end

end A084640.P9808609382461086417

namespace A084640

/-- `A140253(n)+A097072(n)` -/
def P9808609382461086417.Spec : Prop :=
  ∀ n, P9808609382461086417.a n = A084640 n

end A084640

/-!
# A084641: Binomial transform of n^7.

The programs for A084641, there is no canonical definition to state claims against.
-/

/-! ## A084641.P16192688566837756829

`A349706(A000217(n+7)+n)`
-/

namespace A084641.P16192688566837756829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 (A000217 (n + 7) + (n : ℤ)).toNat

end

end A084641.P16192688566837756829

/-!
# A084642: A Jacobsthal ratio.

The programs for A084642, the canonical program `A084642.P10394400209638282159` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084642 has offset 0).

The definition of A084642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084642.P10394400209638282159

`a(n-2)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084642

/-- `a(n-2)` -/
def P10394400209638282159.Spec : Prop :=
  ∀ n, (P10394400209638282159.a n : ℤ) = A084642 n

theorem P10394400209638282159.correct : P10394400209638282159.Spec := by
  intro n
  simp only [A084642]

end A084642

/-!
# A084643: a(n) = 3^(n-1)*(2*n-3) + 2^(n+1).

The programs for A084643, the canonical program `A084643.P15268343866240561983` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084643 has offset 0).

The definition of A084643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084643.P13824133267473925568

`2^(n+1)+3^(n-1)*(2*n-3)`
-/

namespace A084643.P13824133267473925568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 * n : ℤ) - 3 : ℚ)

end

end A084643.P13824133267473925568

namespace A084643

/-- `2^(n+1)+3^(n-1)*(2*n-3)` -/
def P13824133267473925568.Spec : Prop :=
  ∀ n, P13824133267473925568.a n = (A084643 n : ℚ)

end A084643

/-! ## A084643.P15268343866240561983

`3^(n-1)*(2*n-3)+2^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084643

/-- `3^(n-1)*(2*n-3)+2^(n+1)` -/
def P15268343866240561983.Spec : Prop :=
  ∀ n, P15268343866240561983.a n = (A084643 n : ℚ)

end A084643

/-! ## A084643.P16579758854580537783

`abs((2*n+3)*3^(n-1)-A056182(n))`
-/

namespace A084643.P16579758854580537783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A056182 n : ℚ)|

end

end A084643.P16579758854580537783

namespace A084643

/-- `abs((2*n+3)*3^(n-1)-A056182(n))` -/
def P16579758854580537783.Spec : Prop :=
  ∀ n, P16579758854580537783.a n = (A084643 n : ℚ)

end A084643

/-! ## A084643.P7175201717946807282

`abs(A001047(n)-A084859(n))`
-/

namespace A084643.P7175201717946807282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A084859 n|

end

end A084643.P7175201717946807282

namespace A084643

/-- `abs(A001047(n)-A084859(n))` -/
def P7175201717946807282.Spec : Prop :=
  ∀ n, P7175201717946807282.a n = A084643 n

end A084643

/-! ## A084643.P1345128820763614865

`abs(A056182(n)-A081038(n))`
-/

namespace A084643.P1345128820763614865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056182 n - A081038 n|

end

end A084643.P1345128820763614865

namespace A084643

/-- `abs(A056182(n)-A081038(n))` -/
def P1345128820763614865.Spec : Prop :=
  ∀ n, P1345128820763614865.a n = A084643 n

end A084643

/-! ## A084643.P9422209657424255230

`2*(A081038(n)/2-A001047(n))`
-/

namespace A084643.P9422209657424255230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A081038 n : ℚ) / 2 - (A001047 n : ℚ))

end

end A084643.P9422209657424255230

namespace A084643

/-- `2*(A081038(n)/2-A001047(n))` -/
def P9422209657424255230.Spec : Prop :=
  ∀ n, P9422209657424255230.a n = (A084643 n : ℚ)

end A084643

/-! ## A084643.P16803139439326836750

`Δ[A006234(n+3)-A002783(n)]`
-/

namespace A084643.P16803139439326836750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) - A002783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084643.P16803139439326836750

namespace A084643

/-- `Δ[A006234(n+3)-A002783(n)]` -/
def P16803139439326836750.Spec : Prop :=
  ∀ n, P16803139439326836750.a n = A084643 n

end A084643

/-! ## A084643.P17473615933685172019

`Δ[A006234(n+3)-A056182(n)]`
-/

namespace A084643.P17473615933685172019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) - A056182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084643.P17473615933685172019

namespace A084643

/-- `Δ[A006234(n+3)-A056182(n)]` -/
def P17473615933685172019.Spec : Prop :=
  ∀ n, P17473615933685172019.a n = A084643 n

end A084643

/-!
# A084645: Hypotenuses for which there exists a unique integer-sided right triangle.

The programs for A084645, the canonical program `A084645.P5298302243866845739` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084645 has offset 1).

The definition of A084645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084645.P13700061546776032029

`A350056(n+1)-(A350058(n+1)+A350057(n+1))`
-/

namespace A084645.P13700061546776032029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350056 (n + 1) - (A350058 (n + 1) + A350057 (n + 1))

end

end A084645.P13700061546776032029

namespace A084645

/-- `A350056(n+1)-(A350058(n+1)+A350057(n+1))` -/
def P13700061546776032029.Spec : Prop :=
  ∀ n, P13700061546776032029.a n = A084645 (n + 1)

end A084645

/-! ## A084645.P5298302243866845739

`eq[1, A046080(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A084645

/-- `eq[1, A046080(n+1)]+1` -/
def P5298302243866845739.Spec : Prop :=
  ∀ n, (P5298302243866845739.a n : ℤ) = A084645 (n + 1)

theorem P5298302243866845739.correct : P5298302243866845739.Spec := by
  intro n
  simp only [A084645, Nat.add_sub_cancel]

end A084645

/-! ## A084645.P6992231702840382601

`record[A009003(n+1)/A350040(n+1)]`
-/

namespace A084645.P6992231702840382601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009003 (n + 1) : ℚ) / (A350040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084645.P6992231702840382601

namespace A084645

/-- `record[A009003(n+1)/A350040(n+1)]` -/
def P6992231702840382601.Spec : Prop :=
  ∀ n, P6992231702840382601.a n = (A084645 (n + 1) : ℚ)

end A084645

/-! ## A084645.P13853788264633922415

`eq[2, A063014(n)]`
-/

namespace A084645.P13853788264633922415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P13853788264633922415

namespace A084645

/-- `eq[2, A063014(n)]` -/
def P13853788264633922415.Spec : Prop :=
  ∀ n, (P13853788264633922415.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P11137798716911990223

`eq[12, A046109(n)]`
-/

namespace A084645.P11137798716911990223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P11137798716911990223

namespace A084645

/-- `eq[12, A046109(n)]` -/
def P11137798716911990223.Spec : Prop :=
  ∀ n, (P11137798716911990223.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P5929133160668506847

`eq[1, A083025(n+1)]+1`
-/

namespace A084645.P5929133160668506847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084645.P5929133160668506847

namespace A084645

/-- `eq[1, A083025(n+1)]+1` -/
def P5929133160668506847.Spec : Prop :=
  ∀ n, (P5929133160668506847.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P11145416773307627111

`eq[2, A286361(n+1)]+1`
-/

namespace A084645.P11145416773307627111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084645.P11145416773307627111

namespace A084645

/-- `eq[2, A286361(n+1)]+1` -/
def P11145416773307627111.Spec : Prop :=
  ∀ n, (P11145416773307627111.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P282419568007167360

`eq[3, A256452(n+1)]+1`
-/

namespace A084645.P282419568007167360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084645.P282419568007167360

namespace A084645

/-- `eq[3, A256452(n+1)]+1` -/
def P282419568007167360.Spec : Prop :=
  ∀ n, (P282419568007167360.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P15994202110892948478

`eq[1, A046080(A004277(n))]`
-/

namespace A084645.P15994202110892948478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P15994202110892948478

namespace A084645

/-- `eq[1, A046080(A004277(n))]` -/
def P15994202110892948478.Spec : Prop :=
  ∀ n, (P15994202110892948478.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P10382588792501379459

`eq[1, A046080(A028310(n))]`
-/

namespace A084645.P10382588792501379459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P10382588792501379459

namespace A084645

/-- `eq[1, A046080(A028310(n))]` -/
def P10382588792501379459.Spec : Prop :=
  ∀ n, (P10382588792501379459.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P8371465425986987342

`A020725(eq[1, A046080(n+1)])`
-/

namespace A084645.P8371465425986987342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084645.P8371465425986987342

namespace A084645

/-- `A020725(eq[1, A046080(n+1)])` -/
def P8371465425986987342.Spec : Prop :=
  ∀ n, P8371465425986987342.a n = A084645 (n + 1)

end A084645

/-! ## A084645.P1675571821020529889

`A065475(eq[1, A046080(n+1)])`
-/

namespace A084645.P1675571821020529889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084645.P1675571821020529889

namespace A084645

/-- `A065475(eq[1, A046080(n+1)])` -/
def P1675571821020529889.Spec : Prop :=
  ∀ n, P1675571821020529889.a n = A084645 (n + 1)

end A084645

/-! ## A084645.P1964930378762082053

`A153152(eq[1, A046080(n+1)])`
-/

namespace A084645.P1964930378762082053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084645.P1964930378762082053

namespace A084645

/-- `A153152(eq[1, A046080(n+1)])` -/
def P1964930378762082053.Spec : Prop :=
  ∀ n, P1964930378762082053.a n = A084645 (n + 1)

end A084645

/-! ## A084645.P8290774490167617560

`eq[3, A092089(A170818(n+1))]+1`
-/

namespace A084645.P8290774490167617560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (A170818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084645.P8290774490167617560

namespace A084645

/-- `eq[3, A092089(A170818(n+1))]+1` -/
def P8290774490167617560.Spec : Prop :=
  ∀ n, (P8290774490167617560.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P6421895614265932098

`eq[1, A046080(A008486(n))]`
-/

namespace A084645.P6421895614265932098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P6421895614265932098

namespace A084645

/-- `eq[1, A046080(A008486(n))]` -/
def P6421895614265932098.Spec : Prop :=
  ∀ n, (P6421895614265932098.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P13804714908821398499

`eq[1, A328712(2*(n+1))]+1`
-/

namespace A084645.P13804714908821398499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084645.P13804714908821398499

namespace A084645

/-- `eq[1, A328712(2*(n+1))]+1` -/
def P13804714908821398499.Spec : Prop :=
  ∀ n, (P13804714908821398499.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P11198373078312098869

`eq[1, A046080(A008574(n))]`
-/

namespace A084645.P11198373078312098869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P11198373078312098869

namespace A084645

/-- `eq[1, A046080(A008574(n))]` -/
def P11198373078312098869.Spec : Prop :=
  ∀ n, (P11198373078312098869.a n : ℤ) = A084645 (n + 1)

end A084645

/-! ## A084645.P16837047110934986286

`eq[1, A046080(A008458(n))]`
-/

namespace A084645.P16837047110934986286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084645.P16837047110934986286

namespace A084645

/-- `eq[1, A046080(A008458(n))]` -/
def P16837047110934986286.Spec : Prop :=
  ∀ n, (P16837047110934986286.a n : ℤ) = A084645 (n + 1)

end A084645

/-!
# A084646: Hypotenuses for which there exist exactly 2 distinct integer triangles.

The programs for A084646, the canonical program `A084646.P13615093716191733077` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084646 has offset 1).

The definition of A084646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084646.P13615093716191733077

`eq[2, A046080(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A084646

/-- `eq[2, A046080(n+1)]+1` -/
def P13615093716191733077.Spec : Prop :=
  ∀ n, (P13615093716191733077.a n : ℤ) = A084646 (n + 1)

theorem P13615093716191733077.correct : P13615093716191733077.Spec := by
  intro n
  simp only [A084646, Nat.add_sub_cancel]

end A084646

/-! ## A084646.P2001474156498398946

`eq[3, A063014(n)]`
-/

namespace A084646.P2001474156498398946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P2001474156498398946

namespace A084646

/-- `eq[3, A063014(n)]` -/
def P2001474156498398946.Spec : Prop :=
  ∀ n, (P2001474156498398946.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P11463437264144696101

`eq[20, A046109(n)]`
-/

namespace A084646.P11463437264144696101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P11463437264144696101

namespace A084646

/-- `eq[20, A046109(n)]` -/
def P11463437264144696101.Spec : Prop :=
  ∀ n, (P11463437264144696101.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P13170375739927369966

`eq[2, A046080(A004277(n))]`
-/

namespace A084646.P13170375739927369966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P13170375739927369966

namespace A084646

/-- `eq[2, A046080(A004277(n))]` -/
def P13170375739927369966.Spec : Prop :=
  ∀ n, (P13170375739927369966.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P10184306260695158499

`eq[2, A046080(A028310(n))]`
-/

namespace A084646.P10184306260695158499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P10184306260695158499

namespace A084646

/-- `eq[2, A046080(A028310(n))]` -/
def P10184306260695158499.Spec : Prop :=
  ∀ n, (P10184306260695158499.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P6179126957010930394

`A020725(eq[2, A046080(n+1)])`
-/

namespace A084646.P6179126957010930394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084646.P6179126957010930394

namespace A084646

/-- `A020725(eq[2, A046080(n+1)])` -/
def P6179126957010930394.Spec : Prop :=
  ∀ n, P6179126957010930394.a n = A084646 (n + 1)

end A084646

/-! ## A084646.P11993429537376483784

`A065475(eq[2, A046080(n+1)])`
-/

namespace A084646.P11993429537376483784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084646.P11993429537376483784

namespace A084646

/-- `A065475(eq[2, A046080(n+1)])` -/
def P11993429537376483784.Spec : Prop :=
  ∀ n, P11993429537376483784.a n = A084646 (n + 1)

end A084646

/-! ## A084646.P11651547491276363853

`lt[1, A331177(A046109(n)+1)]`
-/

namespace A084646.P11651547491276363853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331177 (A046109 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084646.P11651547491276363853

namespace A084646

/-- `lt[1, A331177(A046109(n)+1)]` -/
def P11651547491276363853.Spec : Prop :=
  ∀ n, (P11651547491276363853.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P1827056069191968800

`eq[2, A046080(A008486(n))]`
-/

namespace A084646.P1827056069191968800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P1827056069191968800

namespace A084646

/-- `eq[2, A046080(A008486(n))]` -/
def P1827056069191968800.Spec : Prop :=
  ∀ n, (P1827056069191968800.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P10303823187728792072

`eq[2, A328712(2*(n+1))]+1`
-/

namespace A084646.P10303823187728792072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084646.P10303823187728792072

namespace A084646

/-- `eq[2, A328712(2*(n+1))]+1` -/
def P10303823187728792072.Spec : Prop :=
  ∀ n, (P10303823187728792072.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P5062105318476413400

`eq[2, A046080(A008574(n))]`
-/

namespace A084646.P5062105318476413400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P5062105318476413400

namespace A084646

/-- `eq[2, A046080(A008574(n))]` -/
def P5062105318476413400.Spec : Prop :=
  ∀ n, (P5062105318476413400.a n : ℤ) = A084646 (n + 1)

end A084646

/-! ## A084646.P16955696092979303455

`eq[2, A046080(A008458(n))]`
-/

namespace A084646.P16955696092979303455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084646.P16955696092979303455

namespace A084646

/-- `eq[2, A046080(A008458(n))]` -/
def P16955696092979303455.Spec : Prop :=
  ∀ n, (P16955696092979303455.a n : ℤ) = A084646 (n + 1)

end A084646

/-!
# A084647: Hypotenuses for which there exist exactly 3 distinct integer triangles.

The programs for A084647, there is no canonical definition to state claims against.
-/

/-! ## A084647.P16442288201807602489

`A194508(A084649(n+1)/5)`
-/

namespace A084647.P16442288201807602489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (SequenceMachineLib.roundAway ((A084649 (n + 1) : ℚ) / 5)).toNat

end

end A084647.P16442288201807602489

/-! ## A084647.P15608280066612954696

`A004144(n+1)*A216125(A048628(n+1))`
-/

namespace A084647.P15608280066612954696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1) * A216125 (A048628 (n + 1)).toNat

end

end A084647.P15608280066612954696

/-! ## A084647.P7597772790931164459

`sqrt(A081324(n+2)/2)*A216125(A048628(n+1))`
-/

namespace A084647.P7597772790931164459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A081324 (n + 2) : ℚ) / 2 : ℝ) * (A216125 (A048628 (n + 1)).toNat : ℝ)

end

end A084647.P7597772790931164459

/-! ## A084647.P4517900174867793015

`(lt[A309228(n+1), 2]+1)*A216125(A048628(n+1))`
-/

namespace A084647.P4517900174867793015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) * A216125 (A048628 (n + 1)).toNat

end

end A084647.P4517900174867793015

/-! ## A084647.P2610726705187878688

`A008587(A008587(A008587(A047201(A032563(n+1)))))`
-/

namespace A084647.P2610726705187878688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A008587 (A008587 (A047201 (A032563 (n + 1)).toNat).toNat).toNat).toNat

end

end A084647.P2610726705187878688

/-!
# A084648: Hypotenuses for which there exist exactly 4 distinct integer triangles.

The programs for A084648, the canonical program `A084648.P11290905101379260209` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084648 has offset 1).

The definition of A084648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084648.P11290905101379260209

`eq[4, A046080(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A084648

/-- `eq[4, A046080(n+1)]+1` -/
def P11290905101379260209.Spec : Prop :=
  ∀ n, (P11290905101379260209.a n : ℤ) = A084648 (n + 1)

theorem P11290905101379260209.correct : P11290905101379260209.Spec := by
  intro n
  simp only [A084648, Nat.add_sub_cancel]

end A084648

/-! ## A084648.P15338025681046631708

`A020725(eq[4, A046080(n+1)])`
-/

namespace A084648.P15338025681046631708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084648.P15338025681046631708

namespace A084648

/-- `A020725(eq[4, A046080(n+1)])` -/
def P15338025681046631708.Spec : Prop :=
  ∀ n, P15338025681046631708.a n = A084648 (n + 1)

end A084648

/-! ## A084648.P8085983927335651190

`A065475(eq[4, A046080(n+1)])`
-/

namespace A084648.P8085983927335651190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084648.P8085983927335651190

namespace A084648

/-- `A065475(eq[4, A046080(n+1)])` -/
def P8085983927335651190.Spec : Prop :=
  ∀ n, P8085983927335651190.a n = A084648 (n + 1)

end A084648

/-! ## A084648.P2563181779627537065

`eq[5, A063014(n)]`
-/

namespace A084648.P2563181779627537065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P2563181779627537065

namespace A084648

/-- `eq[5, A063014(n)]` -/
def P2563181779627537065.Spec : Prop :=
  ∀ n, (P2563181779627537065.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P10473903530073681216

`eq[4, A046080(A004277(n))]`
-/

namespace A084648.P10473903530073681216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P10473903530073681216

namespace A084648

/-- `eq[4, A046080(A004277(n))]` -/
def P10473903530073681216.Spec : Prop :=
  ∀ n, (P10473903530073681216.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P6538099727341549241

`eq[4, A046080(A028310(n))]`
-/

namespace A084648.P6538099727341549241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P6538099727341549241

namespace A084648

/-- `eq[4, A046080(A028310(n))]` -/
def P6538099727341549241.Spec : Prop :=
  ∀ n, (P6538099727341549241.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P1716097460828529770

`A153152(eq[4, A046080(n+1)])`
-/

namespace A084648.P1716097460828529770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084648.P1716097460828529770

namespace A084648

/-- `A153152(eq[4, A046080(n+1)])` -/
def P1716097460828529770.Spec : Prop :=
  ∀ n, P1716097460828529770.a n = A084648 (n + 1)

end A084648

/-! ## A084648.P4357851238519812907

`lt[1, cot(2-A046109(n))]`
-/

namespace A084648.P4357851238519812907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (2 - A046109 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A084648.P4357851238519812907

namespace A084648

/-- `lt[1, cot(2-A046109(n))]` -/
def P4357851238519812907.Spec : Prop :=
  ∀ n, (P4357851238519812907.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P14174979371618513869

`eq[A040306(n), A046109(n)]`
-/

namespace A084648.P14174979371618513869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084648.P14174979371618513869

namespace A084648

/-- `eq[A040306(n), A046109(n)]` -/
def P14174979371618513869.Spec : Prop :=
  ∀ n, (P14174979371618513869.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P2663801913786402719

`eq[2, A054249(A046109(n)+2)]`
-/

namespace A084648.P2663801913786402719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (A046109 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P2663801913786402719

namespace A084648

/-- `eq[2, A054249(A046109(n)+2)]` -/
def P2663801913786402719.Spec : Prop :=
  ∀ n, (P2663801913786402719.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P16913366268577118440

`eq[4, A046080(A008486(n))]`
-/

namespace A084648.P16913366268577118440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P16913366268577118440

namespace A084648

/-- `eq[4, A046080(A008486(n))]` -/
def P16913366268577118440.Spec : Prop :=
  ∀ n, (P16913366268577118440.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P11350638980808868811

`eq[4, A046080(A008574(n))]`
-/

namespace A084648.P11350638980808868811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P11350638980808868811

namespace A084648

/-- `eq[4, A046080(A008574(n))]` -/
def P11350638980808868811.Spec : Prop :=
  ∀ n, (P11350638980808868811.a n : ℤ) = A084648 (n + 1)

end A084648

/-! ## A084648.P3759846800652864736

`eq[4, A046080(A008458(n))]`
-/

namespace A084648.P3759846800652864736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084648.P3759846800652864736

namespace A084648

/-- `eq[4, A046080(A008458(n))]` -/
def P3759846800652864736.Spec : Prop :=
  ∀ n, (P3759846800652864736.a n : ℤ) = A084648 (n + 1)

end A084648

/-!
# A084649: Hypotenuses for which there exist exactly 5 distinct Pythagorean triangles.

The programs for A084649, there is no canonical definition to state claims against.
-/

/-! ## A084649.P1628329167247593346

`A097219(n+1)/A361338(A361344(n+1))`
-/

namespace A084649.P1628329167247593346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A361338 (A361344 (n + 1)).toNat : ℚ)

end

end A084649.P1628329167247593346

/-! ## A084649.P8378553542986177060

`A097219(n+1)/A010676(A246685(n))`
-/

namespace A084649.P8378553542986177060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A010676 (A246685 n).toNat : ℚ)

end

end A084649.P8378553542986177060

/-! ## A084649.P10924358050326696698

`A290502(n+1)/A290500(A151935(n)!)`
-/

namespace A084649.P10924358050326696698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290502 (n + 1) : ℚ) / (A290500 (Nat.factorial (A151935 n).toNat) : ℚ)

end

end A084649.P10924358050326696698

/-! ## A084649.P12672659466751736190

`A097219(n+1)/A010676(A165826(n+1))`
-/

namespace A084649.P12672659466751736190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A010676 (A165826 (n + 1)).toNat : ℚ)

end

end A084649.P12672659466751736190

/-! ## A084649.P12255218840247840218

`A097219(n+1)/A291358(A039936(n+1))`
-/

namespace A084649.P12255218840247840218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A291358 (A039936 (n + 1)).toNat : ℚ)

end

end A084649.P12255218840247840218

/-! ## A084649.P897647402650860557

`A097219(n+1)/A010710(A007635(n+1))`
-/

namespace A084649.P897647402650860557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A010710 (A007635 (n + 1)).toNat : ℚ)

end

end A084649.P897647402650860557

/-! ## A084649.P3362138022234676950

`A097219(n+1)/A010676(A224773(n+1))`
-/

namespace A084649.P3362138022234676950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A010676 (A224773 (n + 1)).toNat : ℚ)

end

end A084649.P3362138022234676950

/-! ## A084649.P2770847591583961651

`A290499(n+1)/A216125(A224773(n+1))`
-/

namespace A084649.P2770847591583961651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290499 (n + 1) : ℚ) / (A216125 (A224773 (n + 1)).toNat : ℚ)

end

end A084649.P2770847591583961651

/-! ## A084649.P2673340406352872543

`A097219(n+1)/A165826(A107812(n+1))`
-/

namespace A084649.P2673340406352872543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A165826 (A107812 (n + 1)).toNat : ℚ)

end

end A084649.P2673340406352872543

/-! ## A084649.P8559740730798646655

`A097219(n+1)/A010710(A000328(n))`
-/

namespace A084649.P8559740730798646655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097219 (n + 1) : ℚ) / (A010710 (A000328 n).toNat : ℚ)

end

end A084649.P8559740730798646655

/-!
# A084652: Engel expansion for tan(1).

The programs for A084652, there is no canonical definition to state claims against.
-/

/-! ## A084652.P5692319144478996925

`A058958(A323144(n+2))`
-/

namespace A084652.P5692319144478996925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058958 (A323144 (n + 2)).toNat

end

end A084652.P5692319144478996925

/-!
# A084653: Fermat base-2 pseudoprimes whose prime factors do not divide any smaller pseudoprime.

The programs for A084653, there is no canonical definition to state claims against.
-/

/-! ## A084653.P3201826975139819231

`A084654(n+1)*A084655(n+1)`
-/

namespace A084653.P3201826975139819231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084654 (n + 1) * A084655 (n + 1)

end

end A084653.P3201826975139819231

/-! ## A084653.P7436056526101414418

`A000027(lcm(A084654(n+1), A084655(n+1)))`
-/

namespace A084653.P7436056526101414418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A084654 (n + 1)) (A084655 (n + 1)))

end

end A084653.P7436056526101414418

/-! ## A084653.P10723616552176495513

`lcm(A084654(n+1), A084655(A077168(n)))`
-/

namespace A084653.P10723616552176495513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084654 (n + 1)) (A084655 (A077168 n).toNat)

end

end A084653.P10723616552176495513

/-!
# A084654: Smallest prime factor of pseudoprimes in A084653.

The programs for A084654, there is no canonical definition to state claims against.
-/

/-! ## A084654.P2070106146181438985

`A084653(n+1)/A084655(n+1)`
-/

namespace A084654.P2070106146181438985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084653 (n + 1) : ℚ) / (A084655 (n + 1) : ℚ)

end

end A084654.P2070106146181438985

/-! ## A084654.P10670646534489337107

`A084653(A077168(n))%A000010(A084655(n+1))`
-/

namespace A084654.P10670646534489337107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084653 (A077168 n).toNat) (A000010 (A084655 (n + 1)).toNat)

end

end A084654.P10670646534489337107

/-! ## A084654.P11198384701740305929

`A020639(A084653(n+1))`
-/

namespace A084654.P11198384701740305929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084653 (n + 1)).toNat

end

end A084654.P11198384701740305929

/-! ## A084654.P12479865306241426819

`A084653(A077168(n))/A006530(A084653(n+1))`
-/

namespace A084654.P12479865306241426819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084653 (A077168 n).toNat : ℚ) / (A006530 (A084653 (n + 1)).toNat : ℚ)

end

end A084654.P12479865306241426819

/-! ## A084654.P4556903981978901020

`A084653(A000027(n+1))/A006530(A084653(n+1))`
-/

namespace A084654.P4556903981978901020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084653 (A000027 (n + 1)).toNat : ℚ) / (A006530 (A084653 (n + 1)).toNat : ℚ)

end

end A084654.P4556903981978901020

/-!
# A084655: Largest prime factor of pseudoprimes in A084653.

The programs for A084655, there is no canonical definition to state claims against.
-/

/-! ## A084655.P14546054642088477798

`A084653(n+1)/A084654(n+1)`
-/

namespace A084655.P14546054642088477798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084653 (n + 1) : ℚ) / (A084654 (n + 1) : ℚ)

end

end A084655.P14546054642088477798

/-! ## A084655.P14551513627514639029

`A006530(A084653(n+1))`
-/

namespace A084655.P14551513627514639029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084653 (n + 1)).toNat

end

end A084655.P14551513627514639029

/-! ## A084655.P9282642872590651268

`A084653(A077168(n))/A020639(A084653(n+1))`
-/

namespace A084655.P9282642872590651268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084653 (A077168 n).toNat : ℚ) / (A020639 (A084653 (n + 1)).toNat : ℚ)

end

end A084655.P9282642872590651268

/-! ## A084655.P9201345201881046699

`A084653(A000027(n+1))/A020639(A084653(n+1))`
-/

namespace A084655.P9201345201881046699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084653 (A000027 (n + 1)).toNat : ℚ) / (A020639 (A084653 (n + 1)).toNat : ℚ)

end

end A084655.P9201345201881046699

/-! ## A084655.P6578835163691245491

`A034699(or(1, A084653(n+1)))`
-/

namespace A084655.P6578835163691245491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.lor 1 (A084653 (n + 1))).toNat

end

end A084655.P6578835163691245491

/-!
# A084656: Number of unlabeled connected claw-free cubic graphs on 2n vertices.

The programs for A084656, there is no canonical definition to state claims against.
-/

/-! ## A084656.P16415299039985341585

`A084657(n+1)+A058932(n+1)`
-/

namespace A084656.P16415299039985341585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084657 (n + 1) + A058932 (n + 1)

end

end A084656.P16415299039985341585

/-!
# A084657: Number of unlabeled 2-connected claw-free cubic graphs on 2n vertices.

The programs for A084657, there is no canonical definition to state claims against.
-/

/-! ## A084657.P14265476822462127940

`A084656(n+1)-A058932(n+1)`
-/

namespace A084657.P14265476822462127940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084656 (n + 1) - A058932 (n + 1)

end

end A084657.P14265476822462127940

/-! ## A084657.P10377476090847104974

`A137564(xor(A058932(n+1), A084656(n+1)))`
-/

namespace A084657.P10377476090847104974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Int.xor (A058932 (n + 1)) (A084656 (n + 1))).toNat

end

end A084657.P10377476090847104974

/-! ## A084657.P6919550431613912268

`xor(A058932(n+1), A084656(A179892(n+1)))`
-/

namespace A084657.P6919550431613912268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058932 (n + 1)) (A084656 (A179892 (n + 1)).toNat)

end

end A084657.P6919550431613912268

/-!
# A084658: Number of unlabeled 3-connected claw-free cubic graphs on 2n vertices.

The programs for A084658, there is no canonical definition to state claims against.
-/

/-! ## A084658.P15049337252748724102

`A002265(and(n, n+1)*a(n-3)+3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A084658.P15049337252748724102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0, 0, 1] fun n a =>
  A002265 ((Nat.land n (n + 1) : ℤ) * a (n - 3) + 3).toNat

end

end A084658.P15049337252748724102

/-! ## A084658.P6811962413153068933

`∑{e}[A005671(n), A103220(#)]`
-/

namespace A084658.P6811962413153068933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A103220 (Nat.factorization (f1 n).natAbs p)

end

end A084658.P6811962413153068933

/-! ## A084658.P1958474657618580178

`A087137(n)%A087713(n+1)`
-/

namespace A084658.P1958474657618580178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087137 n) (A087713 (n + 1))

end

end A084658.P1958474657618580178

/-! ## A084658.P10239677340779439068

`lcm(Δ[A328796(n)], A120170(n+1))`
-/

namespace A084658.P10239677340779439068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A120170 (n + 1))

end

end A084658.P10239677340779439068

/-! ## A084658.P15374651352742936414

`A289207(a(n-3)*A053735(n))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A084658.P15374651352742936414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A289207 (a (n - 3) * A053735 n).toNat

end

end A084658.P15374651352742936414

/-!
# A084659: Number of labeled claw-free cubic graphs on 2n nodes (not necessarily connected).

The programs for A084659, there is no canonical definition to state claims against.
-/

/-! ## A084659.P2204138081435385341

`A151842(A013280(2*n))`
-/

namespace A084659.P2204138081435385341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (A013280 (2 * n)).toNat

end

end A084659.P2204138081435385341

/-!
# A084661: Numbers k such that k + sum_of_digits(k) is a cube.

The programs for A084661, there is no canonical definition to state claims against.
-/

/-! ## A084661.P178180411812838175

`eq[1, A055401(A062028(n))]`
-/

namespace A084661.P178180411812838175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084661.P178180411812838175

/-! ## A084661.P16640639833181537762

`eq[A007953(n), A333884(n)]`
-/

namespace A084661.P16640639833181537762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084661.P16640639833181537762

/-! ## A084661.P8482790048364950814

`eq[A333884(n)², A118881(n)]`
-/

namespace A084661.P8482790048364950814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084661.P8482790048364950814

/-! ## A084661.P16603229293321151586

`eq[1, A055400(A160939(n+1))]`
-/

namespace A084661.P16603229293321151586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A160939 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084661.P16603229293321151586

/-! ## A084661.P4933396541477010433

`eq[A010057(A062028(n)), A035214(n)]`
-/

namespace A084661.P4933396541477010433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084661.P4933396541477010433

/-!
# A084662: a(1) = 4; a(n) = a(n-1) + gcd(a(n-1), n).

The programs for A084662, the canonical program `A084662.P16237623420396162153` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084662 has offset 1).

The definition of A084662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(a(n-1), n+1)` (program `A084662.P16237623420396162153`, by `A084662.P16237623420396162153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084662.P15897161146581285913

`a(n-1)+gcd(n+1, a(n-1))` with `a(0)=4`
-/

namespace A084662.P15897161146581285913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + Nat.gcd (n + 1) (a (n - 1))

end

end A084662.P15897161146581285913

namespace A084662

/-- `a(n-1)+gcd(n+1, a(n-1))` -/
def P15897161146581285913.Spec : Prop :=
  ∀ n, (P15897161146581285913.a n : ℤ) = A084662 (n + 1)

end A084662

/-! ## A084662.P16237623420396162153

`a(n-1)+gcd(a(n-1), n+1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084662

/-- `a(n-1)+gcd(a(n-1), n+1)` -/
def P16237623420396162153.Spec : Prop :=
  ∀ n, (P16237623420396162153.a n : ℤ) = A084662 (n + 1)

theorem P16237623420396162153.correct : P16237623420396162153.Spec := by
  intro n
  simp only [A084662, Nat.add_sub_cancel]

end A084662

/-! ## A084662.P17321958156073444392

`A134734(n)+a(n-1)` with `a(0)=4`
-/

namespace A084662.P17321958156073444392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A134734 n + a (n - 1)

end

end A084662.P17321958156073444392

namespace A084662

/-- `A134734(n)+a(n-1)` -/
def P17321958156073444392.Spec : Prop :=
  ∀ n, P17321958156073444392.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P931841837861234299

`∑[A134743(lcm(n, a(n-1)))]` with `a(0)=4, a(1)=2`
-/

namespace A084662.P931841837861234299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  A134743 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084662.P931841837861234299

namespace A084662

/-- `∑[A134743(lcm(n, a(n-1)))]` -/
def P931841837861234299.Spec : Prop :=
  ∀ n, P931841837861234299.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P1111785277005906492

`A134736(n+1)%(1-2*a(n-1))` with `a(0)=4`
-/

namespace A084662.P1111785277005906492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.tmod (A134736 (n + 1)) (1 - 2 * a (n - 1))

end

end A084662.P1111785277005906492

namespace A084662

/-- `A134736(n+1)%(1-2*a(n-1))` -/
def P1111785277005906492.Spec : Prop :=
  ∀ n, P1111785277005906492.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P8910060550283974539

`A134736(n+1)-A000007(n)`
-/

namespace A084662.P8910060550283974539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) - A000007 n

end

end A084662.P8910060550283974539

namespace A084662

/-- `A134736(n+1)-A000007(n)` -/
def P8910060550283974539.Spec : Prop :=
  ∀ n, P8910060550283974539.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P15021450923676405760

`A134736(n+1)-val(A134734(n+1), 2)`
-/

namespace A084662.P15021450923676405760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) - (SequenceMachineLib.valuation (A134734 (n + 1)).toNat 2 : ℤ)

end

end A084662.P15021450923676405760

namespace A084662

/-- `A134736(n+1)-val(A134734(n+1), 2)` -/
def P15021450923676405760.Spec : Prop :=
  ∀ n, P15021450923676405760.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P6267849633899733268

`A134736(n+1)-val(A134744(n+1), 2)`
-/

namespace A084662.P6267849633899733268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) - (SequenceMachineLib.valuation (A134744 (n + 1)).toNat 2 : ℤ)

end

end A084662.P6267849633899733268

namespace A084662

/-- `A134736(n+1)-val(A134744(n+1), 2)` -/
def P6267849633899733268.Spec : Prop :=
  ∀ n, P6267849633899733268.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P15229071878872024179

`A134736(A054024(C(n, a(n-1))+1)+n+1)` with `a(0)=4`
-/

namespace A084662.P15229071878872024179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A134736 (A054024 (Nat.choose n (a (n - 1)).toNat + 1) + (n : ℤ) + 1).toNat

end

end A084662.P15229071878872024179

namespace A084662

/-- `A134736(A054024(C(n, a(n-1))+1)+n+1)` -/
def P15229071878872024179.Spec : Prop :=
  ∀ n, P15229071878872024179.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P2699924412956164308

`A134736(n+1)-A010051(2*A071044(n))`
-/

namespace A084662.P2699924412956164308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) - A010051 (2 * A071044 n).toNat

end

end A084662.P2699924412956164308

namespace A084662

/-- `A134736(n+1)-A010051(2*A071044(n))` -/
def P2699924412956164308.Spec : Prop :=
  ∀ n, P2699924412956164308.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P10444661302092071837

`A106108(n+1)-xor(A132199(n+1), A134734(n+1))`
-/

namespace A084662.P10444661302092071837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106108 (n + 1) - Int.xor (A132199 (n + 1)) (A134734 (n + 1))

end

end A084662.P10444661302092071837

namespace A084662

/-- `A106108(n+1)-xor(A132199(n+1), A134734(n+1))` -/
def P10444661302092071837.Spec : Prop :=
  ∀ n, P10444661302092071837.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P2370727077223983549

`A134736(n+2)-A134734(n+1)`
-/

namespace A084662.P2370727077223983549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 2) - A134734 (n + 1)

end

end A084662.P2370727077223983549

namespace A084662

/-- `A134736(n+2)-A134734(n+1)` -/
def P2370727077223983549.Spec : Prop :=
  ∀ n, P2370727077223983549.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P16758407193114977865

`A167195(2*n+3)-(n+2)`
-/

namespace A084662.P16758407193114977865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167195 (2 * n + 3) - (n + 2 : ℤ)

end

end A084662.P16758407193114977865

namespace A084662

/-- `A167195(2*n+3)-(n+2)` -/
def P16758407193114977865.Spec : Prop :=
  ∀ n, P16758407193114977865.a n = A084662 (n + 1)

end A084662

/-! ## A084662.P15493385122663111850

`A134736(n+1)-A010051(A249547(2*(n+1)))`
-/

namespace A084662.P15493385122663111850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) - A010051 (A249547 (2 * (n + 1))).toNat

end

end A084662.P15493385122663111850

namespace A084662

/-- `A134736(n+1)-A010051(A249547(2*(n+1)))` -/
def P15493385122663111850.Spec : Prop :=
  ∀ n, P15493385122663111850.a n = A084662 (n + 1)

end A084662

/-!
# A084663: a(1) = 8; a(n) = a(n-1) + gcd(a(n-1), n).

The programs for A084663, the canonical program `A084663.P1082518376656870543` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084663 has offset 1).

The definition of A084663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(a(n-1), n+1)` (program `A084663.P1082518376656870543`, by `A084663.P1082518376656870543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084663.P1364902018650307855

`a(n-1)+gcd(n+1, a(n-1))` with `a(0)=8`
-/

namespace A084663.P1364902018650307855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + Nat.gcd (n + 1) (a (n - 1))

end

end A084663.P1364902018650307855

namespace A084663

/-- `a(n-1)+gcd(n+1, a(n-1))` -/
def P1364902018650307855.Spec : Prop :=
  ∀ n, (P1364902018650307855.a n : ℤ) = A084663 (n + 1)

end A084663

/-! ## A084663.P1082518376656870543

`a(n-1)+gcd(a(n-1), n+1)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084663

/-- `a(n-1)+gcd(a(n-1), n+1)` -/
def P1082518376656870543.Spec : Prop :=
  ∀ n, (P1082518376656870543.a n : ℤ) = A084663 (n + 1)

theorem P1082518376656870543.correct : P1082518376656870543.Spec := by
  intro n
  simp only [A084663, Nat.add_sub_cancel]

end A084663

/-! ## A084663.P10431137480552114783

`A134744(n)+a(n-1)` with `a(0)=8`
-/

namespace A084663.P10431137480552114783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A134744 n + a (n - 1)

end

end A084663.P10431137480552114783

namespace A084663

/-- `A134744(n)+a(n-1)` -/
def P10431137480552114783.Spec : Prop :=
  ∀ n, P10431137480552114783.a n = A084663 (n + 1)

end A084663

/-! ## A084663.P4705427496213326834

`∑[A134744(A028310(n))]+6`
-/

namespace A084663.P4705427496213326834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A084663.P4705427496213326834

namespace A084663

/-- `∑[A134744(A028310(n))]+6` -/
def P4705427496213326834.Spec : Prop :=
  ∀ n, P4705427496213326834.a n = A084663 (n + 1)

end A084663

/-! ## A084663.P10673824957236845162

`∑[A134744(A000038(n)+n)]+7`
-/

namespace A084663.P10673824957236845162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A084663.P10673824957236845162

namespace A084663

/-- `∑[A134744(A000038(n)+n)]+7` -/
def P10673824957236845162.Spec : Prop :=
  ∀ n, P10673824957236845162.a n = A084663 (n + 1)

end A084663

/-! ## A084663.P13252930423984706761

`∑[A134744(n+1)]+8-A134744(n+1)`
-/

namespace A084663.P13252930423984706761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (8 - A134744 (n + 1))

end

end A084663.P13252930423984706761

namespace A084663

/-- `∑[A134744(n+1)]+8-A134744(n+1)` -/
def P13252930423984706761.Spec : Prop :=
  ∀ n, P13252930423984706761.a n = A084663 (n + 1)

end A084663

/-!
# A084665: a(n) = A074104(n)/n.

The programs for A084665, there is no canonical definition to state claims against.
-/

/-! ## A084665.P10497377474271306228

`A074104(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084665.P10497377474271306228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074104 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084665.P10497377474271306228

/-! ## A084665.P10709124528080798307

`A074104(n+1)%A006370(A004277(n))`
-/

namespace A084665.P10709124528080798307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074104 (n + 1)) (A006370 (A004277 n).toNat)

end

end A084665.P10709124528080798307

/-!
# A084666: Lunar primes that are also rational primes.

The programs for A084666, there is no canonical definition to state claims against.
-/

/-! ## A084666.P7393493740394468886

`p?[A087097(n+1)]`
-/

namespace A084666.P7393493740394468886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084666.P7393493740394468886

/-! ## A084666.P7672393040605869875

`p?[A144171(n+1)]`
-/

namespace A084666.P7672393040605869875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084666.P7672393040605869875

/-! ## A084666.P10692434805823795424

`record[A006530(A144171(n+2))]`
-/

namespace A084666.P10692434805823795424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A144171 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084666.P10692434805823795424

/-! ## A084666.P12862843654969605240

`filter[A087097(n+1), A010051(#)]`
-/

namespace A084666.P12862843654969605240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A084666.P12862843654969605240

/-! ## A084666.P9394479235842336920

`filter[A144171(n+1), A010051(#)]`
-/

namespace A084666.P9394479235842336920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A084666.P9394479235842336920

/-! ## A084666.P4368916493160422990

`filter[A087097(n+1), A323152(#)]`
-/

namespace A084666.P4368916493160422990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A084666.P4368916493160422990

/-! ## A084666.P11712750104191227195

`filter[A087097(n+1), A323153(#)]`
-/

namespace A084666.P11712750104191227195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A084666.P11712750104191227195

/-! ## A084666.P10073406119776483519

`filter[A144171(n+1), A323152(#)]`
-/

namespace A084666.P10073406119776483519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A084666.P10073406119776483519

/-! ## A084666.P10373737853697709568

`filter[A144171(n+1), A323153(#)]`
-/

namespace A084666.P10373737853697709568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A084666.P10373737853697709568

/-! ## A084666.P13342407736193943928

`∩[A000040(n+1), A087097(n+1)]`
-/

namespace A084666.P13342407736193943928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P13342407736193943928

/-! ## A084666.P5213659512869946197

`∩[A004139(n+1), A087097(n+1)]`
-/

namespace A084666.P5213659512869946197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P5213659512869946197

/-! ## A084666.P6782126337967117043

`∩[A006005(n+1), A087097(n+1)]`
-/

namespace A084666.P6782126337967117043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P6782126337967117043

/-! ## A084666.P2295750849442303503

`∩[A008578(n+1), A087097(n+1)]`
-/

namespace A084666.P2295750849442303503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P2295750849442303503

/-! ## A084666.P5969916596095081704

`∩[A033946(n+1), A087097(n+1)]`
-/

namespace A084666.P5969916596095081704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P5969916596095081704

/-! ## A084666.P6104593905375673405

`∩[A045319(n+1), A087097(n+1)]`
-/

namespace A084666.P6104593905375673405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P6104593905375673405

/-! ## A084666.P4013687835124138527

`∩[A045344(n+1), A087097(n+1)]`
-/

namespace A084666.P4013687835124138527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P4013687835124138527

/-! ## A084666.P17494931441607236592

`∩[A046022(n+1), A087097(n+1)]`
-/

namespace A084666.P17494931441607236592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P17494931441607236592

/-! ## A084666.P9371409560788848464

`∩[A051948(n+1), A087097(n+1)]`
-/

namespace A084666.P9371409560788848464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P9371409560788848464

/-! ## A084666.P10073843373739110759

`∩[A053813(n+1), A087097(n+1)]`
-/

namespace A084666.P10073843373739110759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P10073843373739110759

/-! ## A084666.P13040910063071586330

`∩[A000040(n+1), A144171(n+1)]`
-/

namespace A084666.P13040910063071586330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084666.P13040910063071586330

/-!
# A084667: Primes which are a concatenation of n and prime(n).

The programs for A084667, there is no canonical definition to state claims against.
-/

/-! ## A084667.P8182152670462695129

`A045532(∑{d}[A166283(n+1), A000720(#)])`
-/

namespace A084667.P8182152670462695129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A084667.P8182152670462695129

/-! ## A084667.P8548773035639020461

`A045532(∑{d}[A166283(n+1), A061395(#)])`
-/

namespace A084667.P8548773035639020461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A084667.P8548773035639020461

/-! ## A084667.P17755422670493553215

`A045532(∑{p}[A166283(n+1), A000720(#)])`
-/

namespace A084667.P17755422670493553215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A084667.P17755422670493553215

/-! ## A084667.P12110756782287441122

`A045532(∑{p}[A166283(n+1), A061395(#)])`
-/

namespace A084667.P12110756782287441122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A084667.P12110756782287441122

/-! ## A084667.P3366879054642593433

`A045532(∏{p}[A166283(n+1), A000720(#)])`
-/

namespace A084667.P3366879054642593433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A084667.P3366879054642593433

/-!
# A084668: Brilliant Niven numbers, i.e., numbers with two prime factors of the same length (in decimal notation) which are also divisible by the sum of their digits.

The programs for A084668, there is no canonical definition to state claims against.
-/

/-! ## A084668.P6481396088806077325

`filter[A078972(n+1), A188641(#)]`
-/

namespace A084668.P6481396088806077325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A084668.P6481396088806077325

/-! ## A084668.P14225279573170348900

`∩[A005349(n+1), A078972(n+1)]`
-/

namespace A084668.P14225279573170348900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084668.P14225279573170348900

/-! ## A084668.P855403002555939296

`∩[A078972(n+1), A118693(n+1)]`
-/

namespace A084668.P855403002555939296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084668.P855403002555939296

/-! ## A084668.P12184581964792081048

`∩[A118693(n+1), A162421(n+1)]`
-/

namespace A084668.P12184581964792081048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084668.P12184581964792081048

/-! ## A084668.P11036707951610061177

`∩[A118693(n+1), A199009(n+1)]`
-/

namespace A084668.P11036707951610061177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084668.P11036707951610061177

/-!
# A084669: Primes which are a concatenation of prime(n) and n.

The programs for A084669, there is no canonical definition to state claims against.
-/

/-! ## A084669.P1555316767671448192

`A075110(A084670(n+1))`
-/

namespace A084669.P1555316767671448192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075110 (A084670 (n + 1)).toNat

end

end A084669.P1555316767671448192

/-! ## A084669.P15104231600407025333

`A075110(∑{d}[A084671(n+1), A000720(#)])`
-/

namespace A084669.P15104231600407025333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075110 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A084669.P15104231600407025333

/-! ## A084669.P14150410089618201705

`A075110(∑{d}[A084671(n+1), A061395(#)])`
-/

namespace A084669.P14150410089618201705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075110 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A084669.P14150410089618201705

/-! ## A084669.P12780995355102236583

`A322828(A084671(n+1))`
-/

namespace A084669.P12780995355102236583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322828 (A084671 (n + 1)).toNat

end

end A084669.P12780995355102236583

/-! ## A084669.P16330128352448677016

`∑{p}[A000040(A084670(n+1)), A322828(#)]`
-/

namespace A084669.P16330128352448677016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A322828 p

end

end A084669.P16330128352448677016

/-!
# A084670: Numbers k such that concatenation of prime(k) and k is prime.

The programs for A084670, there is no canonical definition to state claims against.
-/

/-! ## A084670.P2839588940725208200

`A084669(n+1)%A084671(n+1)`
-/

namespace A084670.P2839588940725208200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084669 (n + 1)) (A084671 (n + 1))

end

end A084670.P2839588940725208200

/-! ## A084670.P3749281472760097879

`A000720(A084671(n+1))`
-/

namespace A084670.P3749281472760097879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084671 (n + 1)).toNat

end

end A084670.P3749281472760097879

/-! ## A084670.P8480299268778547663

`∑{d}[A084671(n+1), A061395(#)]`
-/

namespace A084670.P8480299268778547663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A084670.P8480299268778547663

/-! ## A084670.P3772835131961300260

`A061395(2*A084671(n+1))`
-/

namespace A084670.P3772835131961300260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A084671 (n + 1)).toNat

end

end A084670.P3772835131961300260

/-! ## A084670.P7033590844565662579

`A316524(A084671(n+1)%A017607(n))`
-/

namespace A084670.P7033590844565662579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.tmod (A084671 (n + 1)) (A017607 n)).toNat

end

end A084670.P7033590844565662579

/-!
# A084671: Primes such that the decimal concatenation of prime(n) and n is prime.

The programs for A084671, there is no canonical definition to state claims against.
-/

/-! ## A084671.P7718123750186871132

`A000040(A084670(n+1))`
-/

namespace A084671.P7718123750186871132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084670 (n + 1)).toNat

end

end A084671.P7718123750186871132

/-! ## A084671.P18353890160965474453

`A008578(A084670(n+1)+1)`
-/

namespace A084671.P18353890160965474453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A084670 (n + 1) + 1).toNat

end

end A084671.P18353890160965474453

/-! ## A084671.P11932375334073668136

`A045344(A084670(n+1)-1)`
-/

namespace A084671.P11932375334073668136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A084670 (n + 1) - 1).toNat

end

end A084671.P11932375334073668136

/-! ## A084671.P13094533150735420069

`A065091(A084670(n+1)-1)`
-/

namespace A084671.P13094533150735420069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A084670 (n + 1) - 1).toNat

end

end A084671.P13094533150735420069

/-! ## A084671.P16507978757900240111

`A158611(A084670(n+1)+2)`
-/

namespace A084671.P16507978757900240111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A084670 (n + 1) + 2).toNat

end

end A084671.P16507978757900240111

/-!
# A084672: Expansion of g.f.: (1+x^2+2*x^4)/((1-x^3)*(1-x)^2).

The programs for A084672, the canonical program `A084672.P7845593886751557338` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084672 has offset 0).

The definition of A084672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` (program `A084672.P7845593886751557338`, by `A084672.P7845593886751557338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084672.P7845593886751557338

`ogf((1+x^2+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084672

/-- `ogf((1+x^2+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P7845593886751557338.Spec : Prop :=
  ∀ n, P7845593886751557338.a n = A084672 n

theorem P7845593886751557338.correct : P7845593886751557338.Spec := by
  intro n
  simp only [A084672]

end A084672

/-! ## A084672.P1870263317177613938

`(2*n²-n+3+2*floor((n+2)/3)+floor((n+1)/3))/3`
-/

namespace A084672.P1870263317177613938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) - (n : ℤ) + 3 + 2 * ⌊(n + 2 : ℚ) / 3⌋ + ⌊(n + 1 : ℚ) / 3⌋ : ℚ) / 3

end

end A084672.P1870263317177613938

namespace A084672

/-- `(2*n²-n+3+2*floor((n+2)/3)+floor((n+1)/3))/3` -/
def P1870263317177613938.Spec : Prop :=
  ∀ n, P1870263317177613938.a n = (A084672 n : ℚ)

end A084672

/-! ## A084672.P11543570566032467776

`ceil(2/(3*acot(n)²))`
-/

namespace A084672.P11543570566032467776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (3 * SequenceMachineLib.acot (n : ℝ) ^ 2)⌉

end

end A084672.P11543570566032467776

namespace A084672

/-- `ceil(2/(3*acot(n)²))` -/
def P11543570566032467776.Spec : Prop :=
  ∀ n, P11543570566032467776.a n = A084672 n

end A084672

/-! ## A084672.P12291619637335164275

`floor(2*or(2, n²)/3)`
-/

namespace A084672.P12291619637335164275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((Nat.lor 2 (n ^ 2) : ℚ) / 3)⌋

end

end A084672.P12291619637335164275

namespace A084672

/-- `floor(2*or(2, n²)/3)` -/
def P12291619637335164275.Spec : Prop :=
  ∀ n, P12291619637335164275.a n = A084672 n

end A084672

/-! ## A084672.P10879488755516991197

`floor(2*xor(2, n²)/3)`
-/

namespace A084672.P10879488755516991197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((Nat.xor 2 (n ^ 2) : ℚ) / 3)⌋

end

end A084672.P10879488755516991197

namespace A084672

/-- `floor(2*xor(2, n²)/3)` -/
def P10879488755516991197.Spec : Prop :=
  ∀ n, P10879488755516991197.a n = A084672 n

end A084672

/-! ## A084672.P9767811302547417389

`round(2*xor(2, n²)/3)`
-/

namespace A084672.P9767811302547417389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((Nat.xor 2 (n ^ 2) : ℚ) / 3))

end

end A084672.P9767811302547417389

namespace A084672

/-- `round(2*xor(2, n²)/3)` -/
def P9767811302547417389.Spec : Prop :=
  ∀ n, P9767811302547417389.a n = A084672 n

end A084672

/-! ## A084672.P1738355689524064965

`ceil(or(3, (2*n)²)/6)`
-/

namespace A084672.P1738355689524064965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 ((2 * n) ^ 2) : ℚ) / 6⌉

end

end A084672.P1738355689524064965

namespace A084672

/-- `ceil(or(3, (2*n)²)/6)` -/
def P1738355689524064965.Spec : Prop :=
  ∀ n, P1738355689524064965.a n = A084672 n

end A084672

/-! ## A084672.P12813616576722480508

`ceil(xor(3, (2*n)²)/6)`
-/

namespace A084672.P12813616576722480508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 ((2 * n) ^ 2) : ℚ) / 6⌉

end

end A084672.P12813616576722480508

namespace A084672

/-- `ceil(xor(3, (2*n)²)/6)` -/
def P12813616576722480508.Spec : Prop :=
  ∀ n, P12813616576722480508.a n = A084672 n

end A084672

/-! ## A084672.P983480276258950999

`round(or(8, (2*n)²)/6)`
-/

namespace A084672.P983480276258950999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 8 ((2 * n) ^ 2) : ℚ) / 6)

end

end A084672.P983480276258950999

namespace A084672

/-- `round(or(8, (2*n)²)/6)` -/
def P983480276258950999.Spec : Prop :=
  ∀ n, P983480276258950999.a n = A084672 n

end A084672

/-! ## A084672.P13877977713190208844

`floor(or(4, n*2*n)/3)`
-/

namespace A084672.P13877977713190208844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 4 (n * (2 * n)) : ℚ) / 3⌋

end

end A084672.P13877977713190208844

namespace A084672

/-- `floor(or(4, n*2*n)/3)` -/
def P13877977713190208844.Spec : Prop :=
  ∀ n, P13877977713190208844.a n = A084672 n

end A084672

/-! ## A084672.P7190057653083003095

`floor(xor(4, n*2*n)/3)`
-/

namespace A084672.P7190057653083003095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 4 (n * (2 * n)) : ℚ) / 3⌋

end

end A084672.P7190057653083003095

namespace A084672

/-- `floor(xor(4, n*2*n)/3)` -/
def P7190057653083003095.Spec : Prop :=
  ∀ n, P7190057653083003095.a n = A084672 n

end A084672

/-! ## A084672.P6309205046488783324

`round(xor(4, n*2*n)/3)`
-/

namespace A084672.P6309205046488783324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 4 (n * (2 * n)) : ℚ) / 3)

end

end A084672.P6309205046488783324

namespace A084672

/-- `round(xor(4, n*2*n)/3)` -/
def P6309205046488783324.Spec : Prop :=
  ∀ n, P6309205046488783324.a n = A084672 n

end A084672

/-! ## A084672.P3026125943127698693

`∑[a(n-3)+4]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A084672.P3026125943127698693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084672.P3026125943127698693

namespace A084672

/-- `∑[a(n-3)+4]` -/
def P3026125943127698693.Spec : Prop :=
  ∀ n, (P3026125943127698693.a n : ℤ) = A084672 n

end A084672

/-! ## A084672.P15436259076517721211

`∑[∑[gcd(2, a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A084672.P15436259076517721211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  Nat.gcd 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084672.P15436259076517721211

namespace A084672

/-- `∑[∑[gcd(2, a(n-3))]]` -/
def P15436259076517721211.Spec : Prop :=
  ∀ n, (P15436259076517721211.a n : ℤ) = A084672 n

end A084672

/-! ## A084672.P4364379194928944907

`∑[∑[(∑[abs(3-n)]+1)%3]]`
-/

namespace A084672.P4364379194928944907
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j + 1) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084672.P4364379194928944907

namespace A084672

/-- `∑[∑[(∑[abs(3-n)]+1)%3]]` -/
def P4364379194928944907.Spec : Prop :=
  ∀ n, P4364379194928944907.a n = A084672 n

end A084672

/-! ## A084672.P18017613148872135312

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084672.P18017613148872135312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084672.P18017613148872135312

namespace A084672

/-- `∑[∑[floor(a(n-3))]]` -/
def P18017613148872135312.Spec : Prop :=
  ∀ n, (P18017613148872135312.a n : ℤ) = A084672 n

end A084672

/-! ## A084672.P13861363386905629317

`∑[∑[2^a(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A084672.P13861363386905629317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  2 ^ f2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084672.P13861363386905629317

namespace A084672

/-- `∑[∑[2^a(a(n-3))]]` -/
def P13861363386905629317.Spec : Prop :=
  ∀ n, (P13861363386905629317.a n : ℤ) = A084672 n

end A084672

/-! ## A084672.P671529708122178697

`ceil((C(2*n, 2)+n+2)/3)`
-/

namespace A084672.P671529708122178697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 + (n + 2) : ℚ) / 3⌉

end

end A084672.P671529708122178697

namespace A084672

/-- `ceil((C(2*n, 2)+n+2)/3)` -/
def P671529708122178697.Spec : Prop :=
  ∀ n, P671529708122178697.a n = A084672 n

end A084672

/-! ## A084672.P7940779705403015241

`round((C(2*n, 2)+n+3)/3)`
-/

namespace A084672.P7940779705403015241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 2 + (n + 3) : ℚ) / 3)

end

end A084672.P7940779705403015241

namespace A084672

/-- `round((C(2*n, 2)+n+3)/3)` -/
def P7940779705403015241.Spec : Prop :=
  ∀ n, P7940779705403015241.a n = A084672 n

end A084672

/-! ## A084672.P1462128115414354359

`∑[∑[2-a(a(a(n-3)))]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A084672.P1462128115414354359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  2 - f2 (f2 (f2 (n - 3)).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084672.P1462128115414354359

namespace A084672

/-- `∑[∑[2-a(a(a(n-3)))]]` -/
def P1462128115414354359.Spec : Prop :=
  ∀ n, P1462128115414354359.a n = A084672 n

end A084672

/-!
# A084673: Smallest prime in which a digit appears n times.

The programs for A084673, there is no canonical definition to state claims against.
-/

/-! ## A084673.P15949904255069931622

`A037055((n+1)%(2*n+1))`
-/

namespace A084673.P15949904255069931622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 ((n + 1) % (2 * n + 1))

end

end A084673.P15949904255069931622

/-! ## A084673.P4640592101637739787

`A037055(A057427(n)+n)`
-/

namespace A084673.P4640592101637739787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (A057427 n + (n : ℤ)).toNat

end

end A084673.P4640592101637739787

/-! ## A084673.P18084547013526401132

`A037055(A178334(n)+n)`
-/

namespace A084673.P18084547013526401132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (A178334 n + (n : ℤ)).toNat

end

end A084673.P18084547013526401132

/-! ## A084673.P5415612607622561439

`A037055(1-A000007(n)+n)`
-/

namespace A084673.P5415612607622561439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (1 - A000007 n + (n : ℤ)).toNat

end

end A084673.P5415612607622561439

/-! ## A084673.P17351440718746113526

`A037055(1-(A000007(n)-n))`
-/

namespace A084673.P17351440718746113526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (1 - (A000007 n - (n : ℤ))).toNat

end

end A084673.P17351440718746113526

/-! ## A084673.P16571457614469164525

`A037055(and(1, A037055(n))+n)`
-/

namespace A084673.P16571457614469164525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (Int.land 1 (A037055 n) + (n : ℤ)).toNat

end

end A084673.P16571457614469164525

/-! ## A084673.P2720214097162520709

`A037055(xor(1, A000007(n))+n)`
-/

namespace A084673.P2720214097162520709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (Int.xor 1 (A000007 n) + (n : ℤ)).toNat

end

end A084673.P2720214097162520709

/-! ## A084673.P3625522755895131020

`A037055(n+1)%∑[A037055(n+2)]`
-/

namespace A084673.P3625522755895131020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037055 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084673.P3625522755895131020

/-!
# A084674: Products of the digits of e excluding 0.

The programs for A084674, there is no canonical definition to state claims against.
-/

/-! ## A084674.P15298417131909295918

`∏[A001113(lt[0, A001113(n)])]`
-/

namespace A084674.P15298417131909295918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084674.P15298417131909295918

/-! ## A084674.P3718791015134856984

`∏[A001113(n)*A057427(A244330(n+1))]`
-/

namespace A084674.P3718791015134856984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A057427 (A244330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084674.P3718791015134856984

/-! ## A084674.P15444008244272360709

`∏[(A073212(n)-A000796(n))%A261235(3*n+2)]`
-/

namespace A084674.P15444008244272360709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073212 n - A000796 (n + 1)) (A261235 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084674.P15444008244272360709

/-! ## A084674.P9429913500274032695

`∏[A001113(n)*A057427(A055225(2*(n+1)))]`
-/

namespace A084674.P9429913500274032695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A057427 (A055225 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084674.P9429913500274032695

/-!
# A084675: Product of the first n digits of the Golden Ratio phi = 1.6180339... (treating 0's as if they were 1's).

The programs for A084675, the canonical program `A084675.P7647099767913281496` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084675 has offset 1).

The definition of A084675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084675.P8927532249459251971

`∏[gcd(A001622(n)!, A104457(n))]`
-/

namespace A084675.P8927532249459251971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A001622 (n + 1)).toNat : ℤ) (A104457 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084675.P8927532249459251971

namespace A084675

/-- `∏[gcd(A001622(n)!, A104457(n))]` -/
def P8927532249459251971.Spec : Prop :=
  ∀ n, (P8927532249459251971.a n : ℤ) = A084675 (n + 1)

end A084675

/-! ## A084675.P110355924965301695

`∏[gcd(A296184(n)!, A001622(n))]`
-/

namespace A084675.P110355924965301695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A296184 (n + 1)).toNat : ℤ) (A001622 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084675.P110355924965301695

namespace A084675

/-- `∏[gcd(A296184(n)!, A001622(n))]` -/
def P110355924965301695.Spec : Prop :=
  ∀ n, (P110355924965301695.a n : ℤ) = A084675 (n + 1)

end A084675

/-! ## A084675.P15038476069685955187

`∏[gcd(A104457(n)!, A296184(n))]`
-/

namespace A084675.P15038476069685955187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A104457 (n + 1)).toNat : ℤ) (A296184 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084675.P15038476069685955187

namespace A084675

/-- `∏[gcd(A104457(n)!, A296184(n))]` -/
def P15038476069685955187.Spec : Prop :=
  ∀ n, (P15038476069685955187.a n : ℤ) = A084675 (n + 1)

end A084675

/-! ## A084675.P2354619194858348454

`∏[A001622(n%(A001622(n)+n))]`
-/

namespace A084675.P2354619194858348454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.tmod (n : ℤ) (A001622 (n + 1) + (n : ℤ))).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084675.P2354619194858348454

namespace A084675

/-- `∏[A001622(n%(A001622(n)+n))]` -/
def P2354619194858348454.Spec : Prop :=
  ∀ n, P2354619194858348454.a n = A084675 (n + 1)

end A084675

/-! ## A084675.P7647099767913281496

`a(n-1)*A028310(A098369(∑[n]))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084675

/-- `a(n-1)*A028310(A098369(∑[n]))` -/
def P7647099767913281496.Spec : Prop :=
  ∀ n, P7647099767913281496.a n = A084675 (n + 1)

theorem P7647099767913281496.correct : P7647099767913281496.Spec := by
  intro n
  simp only [A084675, Nat.add_sub_cancel]

end A084675

/-!
# A084676: Position of the first zero in the decimal expansion of the square root of the n-th prime.

The programs for A084676, there is no canonical definition to state claims against.
-/

/-! ## A084676.P12172259981646434117

`A084677(A000040(n+1))`
-/

namespace A084676.P12172259981646434117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (A000040 (n + 1)).toNat

end

end A084676.P12172259981646434117

/-! ## A084676.P56045343127263181

`A384924(A112045(n+1))`
-/

namespace A084676.P56045343127263181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384924 (A112045 (n + 1)).toNat

end

end A084676.P56045343127263181

/-! ## A084676.P6258100798709267581

`A084677(Δ[A007504(n)])`
-/

namespace A084676.P6258100798709267581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (f1 (n + 1) - f1 n).toNat

end

end A084676.P6258100798709267581

/-! ## A084676.P3919546621848017822

`A084677(A008578(n+2))`
-/

namespace A084676.P3919546621848017822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (A008578 (n + 2)).toNat

end

end A084676.P3919546621848017822

/-! ## A084676.P13772879425226506102

`A084677(A182986(n+2))`
-/

namespace A084676.P13772879425226506102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (A182986 (n + 2)).toNat

end

end A084676.P13772879425226506102

/-! ## A084676.P14975124325722952332

`A084677(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A084676.P14975124325722952332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084677 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A084676.P14975124325722952332

/-!
# A084678: a(n) = b(n,n) with b(n,1) = n and b(n,k) = binomial(b(n,k-1),d(n,n-k+1)) for 1<k<=n, where d(n,i) are the divisors of n, d(i)<d(j), 1<=i<j<=A000005(n).

The programs for A084678, there is no canonical definition to state claims against.
-/

/-! ## A084678.P3222998950628726546

`A286012(2^n)+n`
-/

namespace A084678.P3222998950628726546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286012 (2 ^ n) + (n : ℤ)

end

end A084678.P3222998950628726546

/-! ## A084678.P6639716226205851622

`A006987((n*a(n-1)-2)^∑{e}[n, #]+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=5`
-/

namespace A084678.P6639716226205851622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6, 5] fun n a =>
  A006987 (((n : ℤ) * a (n - 1) - 2) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1).toNat

end

end A084678.P6639716226205851622

/-!
# A084679: 

The programs for A084679, there is no canonical definition to state claims against.
-/

/-! ## A084679.P8576193257250149366

`eq[A014963(n+1), A066922(n+1)]+1`
-/

namespace A084679.P8576193257250149366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084679.P8576193257250149366

/-! ## A084679.P17549532452031857438

`A113484(eq[A014963(n+1), A066922(n+1)])`
-/

namespace A084679.P17549532452031857438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084679.P17549532452031857438

/-!
# A084680: Order of 10 modulo n [i.e., least m such that 10^m = 1 (mod n)] or 0 when no such number exists.

The programs for A084680, there is no canonical definition to state claims against.
-/

/-! ## A084680.P15356779126223581772

`A084681(A106610(n+1))`
-/

namespace A084680.P15356779126223581772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A106610 (n + 1)).toNat

end

end A084680.P15356779126223581772

/-! ## A084680.P2599889908093771296

`round(acot(A132741(n+1)))*A007732(n+1)`
-/

namespace A084680.P2599889908093771296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A132741 (n + 1) : ℝ)) * A007732 (n + 1)

end

end A084680.P2599889908093771296

/-! ## A084680.P11977029148135793829

`A007732(n+1)%A000124(A084681(n+1))`
-/

namespace A084680.P11977029148135793829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007732 (n + 1)) (A000124 (A084681 (n + 1)).toNat)

end

end A084680.P11977029148135793829

/-! ## A084680.P2310609775079891160

`A084681(lcm(n+1, A017413(n))/A017413(n))`
-/

namespace A084680.P2310609775079891160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (A017413 n) : ℚ) / (A017413 n : ℚ))).toNat

end

end A084680.P2310609775079891160

/-! ## A084680.P4070109170488135742

`lcm(A007732(n+1), A185276(n+1))`
-/

namespace A084680.P4070109170488135742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007732 (n + 1)) (A185276 (n + 1))

end

end A084680.P4070109170488135742

/-! ## A084680.P15861876676880600742

`char[A132740(n+1)-1]*A007732(n+1)`
-/

namespace A084680.P15861876676880600742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007732 (n + 1)

end

end A084680.P15861876676880600742

/-! ## A084680.P6059926127747275854

`(n+1)%2*A216415(A026741(n)+1)`
-/

namespace A084680.P6059926127747275854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A216415 (A026741 n + 1).toNat

end

end A084680.P6059926127747275854

/-!
# A084681: Order of 10 modulo 9n [i.e., least m such that 10^m = 1 (mod 9n)] or 0 when no such number exists.

The programs for A084681, there is no canonical definition to state claims against.
-/

/-! ## A084681.P10554828657265236125

`A084680(9*(n+1))`
-/

namespace A084681.P10554828657265236125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (9 * (n + 1))

end

end A084681.P10554828657265236125

/-! ## A084681.P1276066177316506897

`lcm(Δ[A128173(n)], A084680(n+1))`
-/

namespace A084681.P1276066177316506897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A084680 (n + 1))

end

end A084681.P1276066177316506897

/-! ## A084681.P6644670796711276376

`lcm(A065331(n+1), A084680(A000027(n+1)))`
-/

namespace A084681.P6644670796711276376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065331 (n + 1)) (A084680 (A000027 (n + 1)).toNat)

end

end A084681.P6644670796711276376

/-! ## A084681.P3315546205420578140

`lcm(A038500(n+1), A084680(A038502(n+1)))`
-/

namespace A084681.P3315546205420578140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038500 (n + 1)) (A084680 (A038502 (n + 1)).toNat)

end

end A084681.P3315546205420578140

/-! ## A084681.P13873383856444021665

`lcm(A084680(A259445(n+1)), A355582(n+1))`
-/

namespace A084681.P13873383856444021665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084680 (A259445 (n + 1)).toNat) (A355582 (n + 1))

end

end A084681.P13873383856444021665

/-! ## A084681.P3172197576268781423

`A216473(ceil(C(or(1, n), n)/2))-n%2`
-/

namespace A084681.P3172197576268781423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216473 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat - ((n % 2 : ℕ) : ℤ)

end

end A084681.P3172197576268781423

/-! ## A084681.P3805894856147015534

`char[2*n]*A216473(A008619(n))`
-/

namespace A084681.P3805894856147015534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A216473 (A008619 n).toNat

end

end A084681.P3805894856147015534

/-! ## A084681.P18041696736125965509

`char[2*n]*A216473(∑[A059841(n)])`
-/

namespace A084681.P18041696736125965509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A216473 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A084681.P18041696736125965509

/-! ## A084681.P4887867923509068165

`char[2*n]*A216473(A003602(n+1))`
-/

namespace A084681.P4887867923509068165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A216473 (A003602 (n + 1)).toNat

end

end A084681.P4887867923509068165

/-! ## A084681.P16203166046439186523

`A216473(A052938(abs(A009531(n))))`
-/

namespace A084681.P16203166046439186523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216473 (A052938 |A009531 n|.toNat).toNat

end

end A084681.P16203166046439186523

/-! ## A084681.P17642079176294035026

`lcm(A056594(n), A216473(A008619(n)))`
-/

namespace A084681.P17642079176294035026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A216473 (A008619 n).toNat)

end

end A084681.P17642079176294035026

/-! ## A084681.P16095534344484047450

`and(n-(A052928(n)+1), A216473(A003602(n+1)))`
-/

namespace A084681.P16095534344484047450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - (A052928 n + 1)) (A216473 (A003602 (n + 1)).toNat)

end

end A084681.P16095534344484047450

/-!
# A084682: Even evil numbers with an even digital sum.

The programs for A084682, the canonical program `A084682.P5210259654388311984` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084682 has offset 1).

The definition of A084682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084682.P5210259654388311984

`filter[A179082(n+1), A254651(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A084682

/-- `filter[A179082(n+1), A254651(#)]` -/
def P5210259654388311984.Spec : Prop :=
  ∀ n, P5210259654388311984.a n = A084682 (n + 1)

theorem P5210259654388311984.correct : P5210259654388311984.Spec := by
  intro n
  simp only [A084682, Nat.add_sub_cancel]

end A084682

/-! ## A084682.P6754991470416042380

`∩[A125592(n+1), A179082(n+1)]`
-/

namespace A084682.P6754991470416042380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084682.P6754991470416042380

namespace A084682

/-- `∩[A125592(n+1), A179082(n+1)]` -/
def P6754991470416042380.Spec : Prop :=
  ∀ n, (P6754991470416042380.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P17213140885314502323

`2*eq[1, A228495(A054684(n+1))]`
-/

namespace A084682.P17213140885314502323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A054684 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084682.P17213140885314502323

namespace A084682

/-- `2*eq[1, A228495(A054684(n+1))]` -/
def P17213140885314502323.Spec : Prop :=
  ∀ n, (P17213140885314502323.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P13105145707386047061

`∩[A054683(n+1), A125592(n+1)]`
-/

namespace A084682.P13105145707386047061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084682.P13105145707386047061

namespace A084682

/-- `∩[A054683(n+1), A125592(n+1)]` -/
def P13105145707386047061.Spec : Prop :=
  ∀ n, (P13105145707386047061.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P13149040528051751550

`∩[A001969(n+1), A179082(n+1)]`
-/

namespace A084682.P13149040528051751550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084682.P13149040528051751550

namespace A084682

/-- `∩[A001969(n+1), A179082(n+1)]` -/
def P13149040528051751550.Spec : Prop :=
  ∀ n, (P13149040528051751550.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P9887913710700939697

`∩[A006364(n+1), A179082(n+1)]`
-/

namespace A084682.P9887913710700939697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084682.P9887913710700939697

namespace A084682

/-- `∩[A006364(n+1), A179082(n+1)]` -/
def P9887913710700939697.Spec : Prop :=
  ∀ n, (P9887913710700939697.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P15479604416406240717

`record[A054683(n+1)%A000069(n+1)]`
-/

namespace A084682.P15479604416406240717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054683 (n + 1)) (A000069 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084682.P15479604416406240717

namespace A084682

/-- `record[A054683(n+1)%A000069(n+1)]` -/
def P15479604416406240717.Spec : Prop :=
  ∀ n, P15479604416406240717.a n = A084682 (n + 1)

end A084682

/-! ## A084682.P15875307465317151054

`record[A001969(n+1)%A054684(n+1)]`
-/

namespace A084682.P15875307465317151054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001969 (n + 1)) (A054684 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084682.P15875307465317151054

namespace A084682

/-- `record[A001969(n+1)%A054684(n+1)]` -/
def P15875307465317151054.Spec : Prop :=
  ∀ n, P15875307465317151054.a n = A084682 (n + 1)

end A084682

/-! ## A084682.P10194633381700830212

`∩[A179082(n+1), A254614(n+1)]`
-/

namespace A084682.P10194633381700830212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084682.P10194633381700830212

namespace A084682

/-- `∩[A179082(n+1), A254614(n+1)]` -/
def P10194633381700830212.Spec : Prop :=
  ∀ n, (P10194633381700830212.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P18012346201619016975

`eq[sin(A179081(n)), A316828(n)]`
-/

namespace A084682.P18012346201619016975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A179081 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A084682.P18012346201619016975

namespace A084682

/-- `eq[sin(A179081(n)), A316828(n)]` -/
def P18012346201619016975.Spec : Prop :=
  ∀ n, (P18012346201619016975.a n : ℤ) = A084682 (n + 1)

end A084682

/-! ## A084682.P17619518075920646295

`filter[A179082(n+1), A010059(#)]`
-/

namespace A084682.P17619518075920646295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A084682.P17619518075920646295

namespace A084682

/-- `filter[A179082(n+1), A010059(#)]` -/
def P17619518075920646295.Spec : Prop :=
  ∀ n, P17619518075920646295.a n = A084682 (n + 1)

end A084682

/-! ## A084682.P6283672472502134170

`filter[A179082(n+1), A179020(#)]`
-/

namespace A084682.P6283672472502134170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179020 (f1 j).toNat = 1) n)

end

end A084682.P6283672472502134170

namespace A084682

/-- `filter[A179082(n+1), A179020(#)]` -/
def P6283672472502134170.Spec : Prop :=
  ∀ n, P6283672472502134170.a n = A084682 (n + 1)

end A084682

/-! ## A084682.P8629274692104941323

`eq[gcd(2, A122618(n+1)), A029883(n+1)]`
-/

namespace A084682.P8629274692104941323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A122618 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084682.P8629274692104941323

namespace A084682

/-- `eq[gcd(2, A122618(n+1)), A029883(n+1)]` -/
def P8629274692104941323.Spec : Prop :=
  ∀ n, (P8629274692104941323.a n : ℤ) = A084682 (n + 1)

end A084682

/-!
# A084683: Expansion of g.f.: (1+2*x^3+2*x^6)/((1-x)*(1-x-x^2+x^3-x^4-x^5+x^6)).

The programs for A084683, the canonical program `A084683.P1723650493447767187` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084683 has offset 0).

The definition of A084683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^3+2x^6)/(1-2x+2x^3-2x^4+2x^6-x^7))` (program `A084683.P1723650493447767187`, by `A084683.P1723650493447767187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084683.P1723650493447767187

`ogf((1+2x^3+2x^6)/(1-2x+2x^3-2x^4+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084683

/-- `ogf((1+2x^3+2x^6)/(1-2x+2x^3-2x^4+2x^6-x^7))` -/
def P1723650493447767187.Spec : Prop :=
  ∀ n, P1723650493447767187.a n = A084683 n

theorem P1723650493447767187.correct : P1723650493447767187.Spec := by
  intro n
  simp only [A084683]

end A084683

/-! ## A084683.P7181610293548294154

`2*a(n-1)-2*a(n-3)+2*a(n-4)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=24, a(6)=40`
-/

namespace A084683.P7181610293548294154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 14, 24, 40] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + 2 * a (n - 4) - 2 * a (n - 6) + a (n - 7)

end

end A084683.P7181610293548294154

namespace A084683

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-2*a(n-6)+a(n-7)` -/
def P7181610293548294154.Spec : Prop :=
  ∀ n, P7181610293548294154.a n = A084683 n

end A084683

/-! ## A084683.P7893635302002985070

`A265073(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A084683.P7893635302002985070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A265073 (n - 1) + a (n - 2)

end

end A084683.P7893635302002985070

namespace A084683

/-- `A265073(n-1)+a(n-2)` -/
def P7893635302002985070.Spec : Prop :=
  ∀ n, P7893635302002985070.a n = A084683 n

end A084683

/-! ## A084683.P3020035511992390187

`∑[A003056(2*A067687(n))]`
-/

namespace A084683.P3020035511992390187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A067687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084683.P3020035511992390187

namespace A084683

/-- `∑[A003056(2*A067687(n))]` -/
def P3020035511992390187.Spec : Prop :=
  ∀ n, P3020035511992390187.a n = A084683 n

end A084683

/-! ## A084683.P11912666748827949486

`∑[∑[A112318(A000045(n))]]+1`
-/

namespace A084683.P11912666748827949486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A000045 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084683.P11912666748827949486

namespace A084683

/-- `∑[∑[A112318(A000045(n))]]+1` -/
def P11912666748827949486.Spec : Prop :=
  ∀ n, P11912666748827949486.a n = A084683 n

end A084683

/-!
# A084684: Degrees of certain maps (see Comments and Formulas for more precise definitions).

The programs for A084684, the canonical program `A084684.P11494184842680622458` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084684 has offset 0).

The definition of A084684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084684.P12918734906645689493

`(6*n²+9-(-1)^n)/8`
-/

namespace A084684.P12918734906645689493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 + 9 : ℤ) - (-1) ^ n : ℚ) / 8

end

end A084684.P12918734906645689493

namespace A084684

/-- `(6*n²+9-(-1)^n)/8` -/
def P12918734906645689493.Spec : Prop :=
  ∀ n, P12918734906645689493.a n = (A084684 n : ℚ)

theorem P12918734906645689493.correct : P12918734906645689493.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084684, Nat.add_sub_cancel, A084684.P12918734906645689493.a, A084684.P11494184842680622458.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A084684, Nat.add_sub_cancel, A084684.P12918734906645689493.a, A084684.P11494184842680622458.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084684

/-! ## A084684.P11494184842680622458

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084684

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11494184842680622458.Spec : Prop :=
  ∀ n, P11494184842680622458.a n = A084684 n

theorem P11494184842680622458.correct : P11494184842680622458.Spec := by
  intro n
  simp only [A084684]

end A084684

/-! ## A084684.P4483075076864682506

`2*a(n-1)-3*A002620(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A084684.P4483075076864682506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - 3 * A002620 (n - 2)

end

end A084684.P4483075076864682506

namespace A084684

/-- `2*a(n-1)-3*A002620(n-2)` -/
def P4483075076864682506.Spec : Prop :=
  ∀ n, P4483075076864682506.a n = A084684 n

end A084684

/-! ## A084684.P2594010069957371981

`ceil(3/(2*acot(n))²)`
-/

namespace A084684.P2594010069957371981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (2 * SequenceMachineLib.acot (n : ℝ)) ^ 2⌉

end

end A084684.P2594010069957371981

namespace A084684

/-- `ceil(3/(2*acot(n))²)` -/
def P2594010069957371981.Spec : Prop :=
  ∀ n, P2594010069957371981.a n = A084684 n

end A084684

/-! ## A084684.P7862318508790397510

`floor(3/acot(n/2)²)`
-/

namespace A084684.P7862318508790397510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ) ^ 2⌋

end

end A084684.P7862318508790397510

namespace A084684

/-- `floor(3/acot(n/2)²)` -/
def P7862318508790397510.Spec : Prop :=
  ∀ n, P7862318508790397510.a n = A084684 n

end A084684

/-! ## A084684.P13713308231430147397

`∑[∑[(n-2)%2+1]]`
-/

namespace A084684.P13713308231430147397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P13713308231430147397

namespace A084684

/-- `∑[∑[(n-2)%2+1]]` -/
def P13713308231430147397.Spec : Prop :=
  ∀ n, P13713308231430147397.a n = A084684 n

end A084684

/-! ## A084684.P14671615910292698111

`∑[∑[1-(2-n)%2]]`
-/

namespace A084684.P14671615910292698111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (2 - (n : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P14671615910292698111

namespace A084684

/-- `∑[∑[1-(2-n)%2]]` -/
def P14671615910292698111.Spec : Prop :=
  ∀ n, P14671615910292698111.a n = A084684 n

end A084684

/-! ## A084684.P10329171883501538563

`∑[a(n-2)+3]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A084684.P10329171883501538563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P10329171883501538563

namespace A084684

/-- `∑[a(n-2)+3]` -/
def P10329171883501538563.Spec : Prop :=
  ∀ n, (P10329171883501538563.a n : ℤ) = A084684 n

end A084684

/-! ## A084684.P6580417531690580522

`∑[∑[gcd(2, a(n-2))]]` with `a(0)=1, a(1)=0`
-/

namespace A084684.P6580417531690580522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  Nat.gcd 2 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P6580417531690580522

namespace A084684

/-- `∑[∑[gcd(2, a(n-2))]]` -/
def P6580417531690580522.Spec : Prop :=
  ∀ n, (P6580417531690580522.a n : ℤ) = A084684 n

end A084684

/-! ## A084684.P4561134425413165527

`∑[∑[C(2, a(n-1))]]` with `a(0)=1, a(1)=0`
-/

namespace A084684.P4561134425413165527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  Nat.choose 2 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P4561134425413165527

namespace A084684

/-- `∑[∑[C(2, a(n-1))]]` -/
def P4561134425413165527.Spec : Prop :=
  ∀ n, (P4561134425413165527.a n : ℤ) = A084684 n

end A084684

/-! ## A084684.P12532065293028986895

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A084684.P12532065293028986895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P12532065293028986895

namespace A084684

/-- `∑[∑[3-a(n-1)]]` -/
def P12532065293028986895.Spec : Prop :=
  ∀ n, P12532065293028986895.a n = A084684 n

end A084684

/-! ## A084684.P15143836046687966051

`ogf((1+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A084684.P15143836046687966051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2] [1, -2, 0, 2, -1] n

end

end A084684.P15143836046687966051

namespace A084684

/-- `ogf((1+2x^3)/(1-2x+2x^3-x^4))` -/
def P15143836046687966051.Spec : Prop :=
  ∀ n, P15143836046687966051.a n = A084684 n

end A084684

/-! ## A084684.P18402353064135129303

`a(n-2)+3*(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A084684.P18402353064135129303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 3 * ((n : ℤ) - 1)

end

end A084684.P18402353064135129303

namespace A084684

/-- `a(n-2)+3*(n-1)` -/
def P18402353064135129303.Spec : Prop :=
  ∀ n, P18402353064135129303.a n = A084684 n

end A084684

/-! ## A084684.P4719494104627049231

`3*n-(3-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A084684.P4719494104627049231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 * n : ℤ) - (3 - a (n - 2))

end

end A084684.P4719494104627049231

namespace A084684

/-- `3*n-(3-a(n-2))` -/
def P4719494104627049231.Spec : Prop :=
  ∀ n, P4719494104627049231.a n = A084684 n

end A084684

/-! ## A084684.P17531964522498120883

`∑[∑[a((n+1)%2)+1]]` with `a(0)=1, a(1)=0`
-/

namespace A084684.P17531964522498120883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 ((n + 1) % 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P17531964522498120883

namespace A084684

/-- `∑[∑[a((n+1)%2)+1]]` -/
def P17531964522498120883.Spec : Prop :=
  ∀ n, (P17531964522498120883.a n : ℤ) = A084684 n

end A084684

/-! ## A084684.P4390020394892775624

`a(n-2)-3+n+n+n` with `a(0)=1, a(1)=2`
-/

namespace A084684.P4390020394892775624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - 3 + (n : ℤ) + (n : ℤ) + (n : ℤ)

end

end A084684.P4390020394892775624

namespace A084684

/-- `a(n-2)-3+n+n+n` -/
def P4390020394892775624.Spec : Prop :=
  ∀ n, P4390020394892775624.a n = A084684 n

end A084684

/-! ## A084684.P8834461350369736328

`n-(3-a(n-2)-n-n)` with `a(0)=1, a(1)=2`
-/

namespace A084684.P8834461350369736328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (3 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A084684.P8834461350369736328

namespace A084684

/-- `n-(3-a(n-2)-n-n)` -/
def P8834461350369736328.Spec : Prop :=
  ∀ n, P8834461350369736328.a n = A084684 n

end A084684

/-! ## A084684.P17524879155002155383

`∑[∑[gcd((n+1)²%2, 2%(n+1))]]`
-/

namespace A084684.P17524879155002155383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 2 % 2) (2 % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084684.P17524879155002155383

namespace A084684

/-- `∑[∑[gcd((n+1)²%2, 2%(n+1))]]` -/
def P17524879155002155383.Spec : Prop :=
  ∀ n, (P17524879155002155383.a n : ℤ) = A084684 n

end A084684

/-! ## A084684.P10937809038896915731

`A077043(n)+1`
-/

namespace A084684.P10937809038896915731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + 1

end

end A084684.P10937809038896915731

namespace A084684

/-- `A077043(n)+1` -/
def P10937809038896915731.Spec : Prop :=
  ∀ n, P10937809038896915731.a n = A084684 n

end A084684

/-! ## A084684.P9333163623274384795

`A331952(n)+2`
-/

namespace A084684.P9333163623274384795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n + 2

end

end A084684.P9333163623274384795

namespace A084684

/-- `A331952(n)+2` -/
def P9333163623274384795.Spec : Prop :=
  ∀ n, P9333163623274384795.a n = A084684 n

end A084684

/-!
# A084685: a(n) is the least k such that iterating A085307 starting from k requires exactly n steps to reach a fixed point.

The programs for A084685, there is no canonical definition to state claims against.
-/

/-! ## A084685.P15184053910731343684

`A096624(a(n-1))` with `a(0)=2, a(1)=4, a(2)=6, a(3)=14`
-/

namespace A084685.P15184053910731343684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6, 14] fun n a =>
  A096624 (a (n - 1)).toNat

end

end A084685.P15184053910731343684

/-! ## A084685.P13731035919386647429

`A341260(A282953(n))`
-/

namespace A084685.P13731035919386647429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341260 (A282953 n).toNat

end

end A084685.P13731035919386647429

/-!
# A084686: Take n-th prime p(n), rewrite it with digits in decreasing order to get b(n), then a(n)=(b(n)-p(n))/9.

The programs for A084686, there is no canonical definition to state claims against.
-/

/-! ## A084686.P5307220919696169456

`A283001(A000040(n+1))`
-/

namespace A084686.P5307220919696169456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A000040 (n + 1)).toNat

end

end A084686.P5307220919696169456

/-! ## A084686.P3054846918763349927

`A283001(A006005(n+1))`
-/

namespace A084686.P3054846918763349927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A006005 (n + 1)).toNat

end

end A084686.P3054846918763349927

/-! ## A084686.P9881557754810293449

`A283001(A161847(n+1))`
-/

namespace A084686.P9881557754810293449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A161847 (n + 1)).toNat

end

end A084686.P9881557754810293449

/-! ## A084686.P2313517754648850845

`A283001(A171577(n+1))`
-/

namespace A084686.P2313517754648850845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A171577 (n + 1)).toNat

end

end A084686.P2313517754648850845

/-! ## A084686.P13361832202997736441

`A283001(A008578(n+2))`
-/

namespace A084686.P13361832202997736441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A008578 (n + 2)).toNat

end

end A084686.P13361832202997736441

/-! ## A084686.P3085602114671570412

`A283001(A075643(n+2))`
-/

namespace A084686.P3085602114671570412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A075643 (n + 2)).toNat

end

end A084686.P3085602114671570412

/-! ## A084686.P609177851688518933

`A283001(A116974(n+2))`
-/

namespace A084686.P609177851688518933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A116974 (n + 2)).toNat

end

end A084686.P609177851688518933

/-! ## A084686.P18030953813760519774

`A283001(A175787(n+2))`
-/

namespace A084686.P18030953813760519774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A175787 (n + 2)).toNat

end

end A084686.P18030953813760519774

/-! ## A084686.P16565973622435808977

`A283001(eq[1, A105700(n)])`
-/

namespace A084686.P16565973622435808977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084686.P16565973622435808977

/-! ## A084686.P17266803687196426597

`A283001(record[A006530(n+2)])`
-/

namespace A084686.P17266803687196426597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084686.P17266803687196426597

/-! ## A084686.P11440392190911166631

`A283001(record[A014963(n+2)])`
-/

namespace A084686.P11440392190911166631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084686.P11440392190911166631

/-! ## A084686.P1808453632777865914

`A283001(record[A020639(n+2)])`
-/

namespace A084686.P1808453632777865914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084686.P1808453632777865914

/-! ## A084686.P5978018342905257973

`A283001(eq[2, A000005(n+1)]+1)`
-/

namespace A084686.P5978018342905257973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084686.P5978018342905257973

/-! ## A084686.P11303989128594037192

`A283001(eq[n, A000010(n+1)]+1)`
-/

namespace A084686.P11303989128594037192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084686.P11303989128594037192

/-! ## A084686.P12941456490272778020

`A283001(eq[2, A284289(2*n)])`
-/

namespace A084686.P12941456490272778020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084686.P12941456490272778020

/-!
# A084694: Squarefree numbers which are products of three consecutive numbers. I.e., squarefree numbers of the form k^3 - k.

The programs for A084694, the canonical program `A084694.P9348049789336525681` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084694 has offset 1).

The definition of A084694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084694.P9348049789336525681

`A007531(A007675(n+1)+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084694

/-- `A007531(A007675(n+1)+2)` -/
def P9348049789336525681.Spec : Prop :=
  ∀ n, P9348049789336525681.a n = A084694 (n + 1)

theorem P9348049789336525681.correct : P9348049789336525681.Spec := by
  intro n
  simp only [A084694, Nat.add_sub_cancel]

end A084694

/-! ## A084694.P3549469238753144338

`A228649(n+1)^3-A228649(n+1)`
-/

namespace A084694.P3549469238753144338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1) ^ 3 - A228649 (n + 1)

end

end A084694.P3549469238753144338

namespace A084694

/-- `A228649(n+1)^3-A228649(n+1)` -/
def P3549469238753144338.Spec : Prop :=
  ∀ n, P3549469238753144338.a n = A084694 (n + 1)

end A084694

/-! ## A084694.P11344231162664119700

`A001505(A370600(n+1))`
-/

namespace A084694.P11344231162664119700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001505 (A370600 (n + 1)).toNat

end

end A084694.P11344231162664119700

namespace A084694

/-- `A001505(A370600(n+1))` -/
def P11344231162664119700.Spec : Prop :=
  ∀ n, P11344231162664119700.a n = A084694 (n + 1)

end A084694

/-! ## A084694.P10281105898618266834

`record[A136742(n+1)]`
-/

namespace A084694.P10281105898618266834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084694.P10281105898618266834

namespace A084694

/-- `record[A136742(n+1)]` -/
def P10281105898618266834.Spec : Prop :=
  ∀ n, P10281105898618266834.a n = A084694 (n + 1)

end A084694

/-! ## A084694.P11367048562897721614

`A136742(eq[3, A120992(n+1)]+1)`
-/

namespace A084694.P11367048562897721614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084694.P11367048562897721614

namespace A084694

/-- `A136742(eq[3, A120992(n+1)]+1)` -/
def P11367048562897721614.Spec : Prop :=
  ∀ n, P11367048562897721614.a n = A084694 (n + 1)

end A084694

/-! ## A084694.P1960773923860510752

`A033931(A007675(n+1))`
-/

namespace A084694.P1960773923860510752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A007675 (n + 1)).toNat

end

end A084694.P1960773923860510752

namespace A084694

/-- `A033931(A007675(n+1))` -/
def P1960773923860510752.Spec : Prop :=
  ∀ n, P1960773923860510752.a n = A084694 (n + 1)

end A084694

/-! ## A084694.P16581857151998475307

`A007531(A228649(n+1)+1)`
-/

namespace A084694.P16581857151998475307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A228649 (n + 1) + 1).toNat

end

end A084694.P16581857151998475307

namespace A084694

/-- `A007531(A228649(n+1)+1)` -/
def P16581857151998475307.Spec : Prop :=
  ∀ n, P16581857151998475307.a n = A084694 (n + 1)

theorem P16581857151998475307.correct : P16581857151998475307.Spec := by
  intro n
  simp only [A084694, Nat.add_sub_cancel, A084694.P16581857151998475307.a, A084694.P9348049789336525681.a, A007531, A007531.P15538264737483534371.a, A007675, A007675.P4991608707947414915.f1, A007675.P4991608707947414915.f2, A007675.P4991608707947414915.a, A228649, A228649.P13260817488648530651.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084694

/-! ## A084694.P11123132368489042917

`∩[A147779(n+1), A001505(n)]`
-/

namespace A084694.P11123132368489042917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001505 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084694.P11123132368489042917

namespace A084694

/-- `∩[A147779(n+1), A001505(n)]` -/
def P11123132368489042917.Spec : Prop :=
  ∀ n, (P11123132368489042917.a n : ℤ) = A084694 (n + 1)

end A084694

/-! ## A084694.P17791764313001938071

`∩[A147779(n+1), A069072(n)]`
-/

namespace A084694.P17791764313001938071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069072 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084694.P17791764313001938071

namespace A084694

/-- `∩[A147779(n+1), A069072(n)]` -/
def P17791764313001938071.Spec : Prop :=
  ∀ n, (P17791764313001938071.a n : ℤ) = A084694 (n + 1)

end A084694

/-! ## A084694.P1140294089875836408

`∩[A066377(n+1), A147779(n+1)]`
-/

namespace A084694.P1140294089875836408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084694.P1140294089875836408

namespace A084694

/-- `∩[A066377(n+1), A147779(n+1)]` -/
def P1140294089875836408.Spec : Prop :=
  ∀ n, (P1140294089875836408.a n : ℤ) = A084694 (n + 1)

end A084694

/-!
# A084695: Triangle read by rows in which row n lists the n smallest positive numbers k such that k + n is a prime.

The programs for A084695, the canonical program `A084695.P6485592933090383520` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084695 has offset 1).

The definition of A084695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084695.P6485592933090383520

`A000040(A000720(row(n)+1)+col(n)+1)-(row(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084695

/-- `A000040(A000720(row(n)+1)+col(n)+1)-(row(n)+1)` -/
def P6485592933090383520.Spec : Prop :=
  ∀ n, P6485592933090383520.a n = A084695 (n + 1)

theorem P6485592933090383520.correct : P6485592933090383520.Spec := by
  intro n
  simp only [A084695, Nat.add_sub_cancel]

end A084695

/-! ## A084695.P8531821809054875509

`A084754(n+1)-∑[char[∑[n]]]`
-/

namespace A084695.P8531821809054875509
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084754 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A084695.P8531821809054875509

namespace A084695

/-- `A084754(n+1)-∑[char[∑[n]]]` -/
def P8531821809054875509.Spec : Prop :=
  ∀ n, P8531821809054875509.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P14298255769561550913

`A084754(n+1)-A003056(n)-1`
-/

namespace A084695.P14298255769561550913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084754 (n + 1) - A003056 n - 1

end

end A084695.P14298255769561550913

namespace A084695

/-- `A084754(n+1)-A003056(n)-1` -/
def P14298255769561550913.Spec : Prop :=
  ∀ n, P14298255769561550913.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P7914602191032894871

`abs(A002024(n+1)-A084754(n+1))`
-/

namespace A084695.P7914602191032894871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) - A084754 (n + 1)|

end

end A084695.P7914602191032894871

namespace A084695

/-- `abs(A002024(n+1)-A084754(n+1))` -/
def P7914602191032894871.Spec : Prop :=
  ∀ n, P7914602191032894871.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P771400595633945457

`A000010(A084754(n+1))-A003056(n)`
-/

namespace A084695.P771400595633945457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A084754 (n + 1)).toNat - A003056 n

end

end A084695.P771400595633945457

namespace A084695

/-- `A000010(A084754(n+1))-A003056(n)` -/
def P771400595633945457.Spec : Prop :=
  ∀ n, P771400595633945457.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P4918448814426074775

`A023443(A084754(n+1)-A003056(n))`
-/

namespace A084695.P4918448814426074775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A084754 (n + 1) - A003056 n).toNat

end

end A084695.P4918448814426074775

namespace A084695

/-- `A023443(A084754(n+1)-A003056(n))` -/
def P4918448814426074775.Spec : Prop :=
  ∀ n, P4918448814426074775.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P2038737447715576170

`A000010(A084754(n+1))-∑[A073424(n)]`
-/

namespace A084695.P2038737447715576170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A084754 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084695.P2038737447715576170

namespace A084695

/-- `A000010(A084754(n+1))-∑[A073424(n)]` -/
def P2038737447715576170.Spec : Prop :=
  ∀ n, P2038737447715576170.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P5363585331707763372

`A000010(A084754(n+1))+A083920(n)-n`
-/

namespace A084695.P5363585331707763372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A084754 (n + 1)).toNat + (A083920 n - (n : ℤ))

end

end A084695.P5363585331707763372

namespace A084695

/-- `A000010(A084754(n+1))+A083920(n)-n` -/
def P5363585331707763372.Spec : Prop :=
  ∀ n, P5363585331707763372.a n = A084695 (n + 1)

end A084695

/-! ## A084695.P518691325297786759

`abs(A000194(2*(n+1))-A084754(n+1))`
-/

namespace A084695.P518691325297786759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000194 (2 * (n + 1)) - A084754 (n + 1)|

end

end A084695.P518691325297786759

namespace A084695

/-- `abs(A000194(2*(n+1))-A084754(n+1))` -/
def P518691325297786759.Spec : Prop :=
  ∀ n, P518691325297786759.a n = A084695 (n + 1)

end A084695

/-!
# A084696: Beginning with 3, primes such that a(2n) = {a(2n-1) +a(2n+1)}/2.

The programs for A084696, there is no canonical definition to state claims against.
-/

/-! ## A084696.P15505210434851148533

`∪[A126938(n+1), A165888(n+1)]`
-/

namespace A084696.P15505210434851148533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A084696.P15505210434851148533

/-! ## A084696.P8711549216681220470

`A110560(∑[record[A093412(n+1)]])`
-/

namespace A084696.P8711549216681220470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084696.P8711549216681220470

/-! ## A084696.P2055484799827881030

`∑[A006530(A218540(n))+1]+1`
-/

namespace A084696.P2055484799827881030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A218540 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084696.P2055484799827881030

/-! ## A084696.P7020633356905744274

`A209085(A080217(n+1)+A000124(n))`
-/

namespace A084696.P7020633356905744274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209085 (A080217 (n + 1) + A000124 n).toNat

end

end A084696.P7020633356905744274

/-! ## A084696.P9627284159971310848

`or(1, ∑[p?[A352745(n)]])`
-/

namespace A084696.P9627284159971310848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084696.P9627284159971310848

/-!
# A084697: a(1) = 2; for n >= 1, k>=1, a(n+1) = a(n) + k*n is the smallest such prime.

The programs for A084697, there is no canonical definition to state claims against.
-/

/-! ## A084697.P13825817343666340638

`a(n-1)+n*A263455(n)` with `a(0)=2`
-/

namespace A084697.P13825817343666340638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n : ℤ) * A263455 n

end

end A084697.P13825817343666340638

/-! ## A084697.P6457782229773824066

`A064505(A073669(n))+a(n-1)` with `a(0)=2`
-/

namespace A084697.P6457782229773824066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A064505 (A073669 n).toNat + a (n - 1)

end

end A084697.P6457782229773824066

/-! ## A084697.P7576904333471349813

`p?[A131073(n+1)]*A107286(A066889(n+1))`
-/

namespace A084697.P7576904333471349813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A107286 (A066889 (n + 1)).toNat

end

end A084697.P7576904333471349813

/-! ## A084697.P2718386324035092587

`p?[A131073(n+1)]-A000007(A034856(n+6))`
-/

namespace A084697.P2718386324035092587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 (A034856 (n + 6)).toNat

end

end A084697.P2718386324035092587

/-! ## A084697.P16741587710891647670

`p?[A131073(n+1)]^A054977(A055998(n+5))²`
-/

namespace A084697.P16741587710891647670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A054977 (A055998 (n + 5)).toNat ^ 2 : ℤ)

end

end A084697.P16741587710891647670

/-! ## A084697.P2442584371765143309

`p?[A131073(n+1)]*A048152(A034856(n+6)+1)`
-/

namespace A084697.P2442584371765143309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A048152 (A034856 (n + 6) + 1).toNat

end

end A084697.P2442584371765143309

/-! ## A084697.P4187527168019576923

`p?[A131073(n+1)]*A010051(A005385(5*n+1))`
-/

namespace A084697.P4187527168019576923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A010051 (A005385 (5 * n + 1)).toNat

end

end A084697.P4187527168019576923

/-! ## A084697.P13300527888357418735

`p?[A131073(n+1)]%A211238(n+1)`
-/

namespace A084697.P13300527888357418735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A211238 (n + 1))

end

end A084697.P13300527888357418735

/-! ## A084697.P2164639143510687494

`A055672(A000217(n+10))+p?[A131073(n+1)]`
-/

namespace A084697.P2164639143510687494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A000217 (n + 10)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084697.P2164639143510687494

/-! ## A084697.P13265081617497518920

`A055672(n²)+p?[A131073(n+1)]`
-/

namespace A084697.P13265081617497518920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n ^ 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084697.P13265081617497518920

/-! ## A084697.P16345565633873752996

`p?[A131073(n+1)]*A010052(n²)`
-/

namespace A084697.P16345565633873752996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A010052 (n ^ 2)

end

end A084697.P16345565633873752996

/-!
# A084698: Beginning with 1 the smallest multiple of n such that the n-th partial sum is a square.

The programs for A084698, there is no canonical definition to state claims against.
-/

/-! ## A084698.P5331919957142704858

`Δ[record[A118881(A092886(n))]]`
-/

namespace A084698.P5331919957142704858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A092886 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084698.P5331919957142704858

/-! ## A084698.P6315696029175139018

`Δ[record[A293228(A318126(n))²]]`
-/

namespace A084698.P6315696029175139018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293228 (A318126 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084698.P6315696029175139018

