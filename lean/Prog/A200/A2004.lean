import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C026

/-!
# A200403: Number of permutations of [n] avoiding the pattern 124-3.

The programs for A200403, there is no canonical definition to state claims against.
-/

/-! ## A200403.P13180841219383531984

`A214701(A071075(n))+Δ[A071075(n)]`
-/

namespace A200403.P13180841219383531984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A071075 n).toNat + (f1 (n + 1) - f1 n)

end

end A200403.P13180841219383531984

/-! ## A200403.P9290167499876705799

`A200404(n+1)+A018843(A315303(n))`
-/

namespace A200403.P9290167499876705799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200404 (n + 1) + A018843 (A315303 n).toNat

end

end A200403.P9290167499876705799

/-! ## A200403.P14288295130276960734

`xor(A113226(n+1), A350899(A157003(n)+6))`
-/

namespace A200403.P14288295130276960734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A113226 (n + 1)) (A350899 (A157003 n + 6).toNat)

end

end A200403.P14288295130276960734

/-!
# A200404: Number of permutations of [n] avoiding the pattern 143-2.

The programs for A200404, there is no canonical definition to state claims against.
-/

/-! ## A200404.P631316560402723472

`A004957(A004211(n))-A000139(n)`
-/

namespace A200404.P631316560402723472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A004211 n).toNat - A000139 n

end

end A200404.P631316560402723472

/-! ## A200404.P7397842554834105724

`A200403(n+1)-A018843(A315303(n))`
-/

namespace A200404.P7397842554834105724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200403 (n + 1) - A018843 (A315303 n).toNat

end

end A200404.P7397842554834105724

/-!
# A200405: Number of permutations of [n] avoiding the pattern 214-3.

The programs for A200405, there is no canonical definition to state claims against.
-/

/-! ## A200405.P5831056490440940230

`A286989(A182250(n))-A081207(n)`
-/

namespace A200405.P5831056490440940230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (A182250 n).toNat - A081207 n

end

end A200405.P5831056490440940230

/-! ## A200405.P3385413202798902308

`A336071(n+1)-A350899(A157003(n))`
-/

namespace A200405.P3385413202798902308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336071 (n + 1) - A350899 (A157003 n).toNat

end

end A200405.P3385413202798902308

/-! ## A200405.P3332852099181390884

`or(A000772(n+1), A001221(A025749(n)))`
-/

namespace A200405.P3332852099181390884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000772 (n + 1)) (A001221 (A025749 n).toNat)

end

end A200405.P3332852099181390884

/-!
# A200406: Number of permutations of [n] avoiding the pattern 12-3-4.

The programs for A200406, there is no canonical definition to state claims against.
-/

/-! ## A200406.P703748156696712561

`A165489(A153678(n+1)+1)`
-/

namespace A200406.P703748156696712561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165489 (A153678 (n + 1) + 1).toNat

end

end A200406.P703748156696712561

/-! ## A200406.P8764632001006925168

`filter[A165489(n+2), A071023(#)]`
-/

namespace A200406.P8764632001006925168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165489 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A200406.P8764632001006925168

/-!
# A200407: The x-values in the solution to 19*x^2 - 18 = y^2.

The programs for A200407, there is no canonical definition to state claims against.
-/

/-! ## A200407.P13179799948187794779

`record[A093178(Δ[A167709(n)])]`
-/

namespace A200407.P13179799948187794779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167709 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200407.P13179799948187794779

/-!
# A200408: a(n) = -4 + 5*Fibonacci(n+1)^2.

The programs for A200408, the canonical program `A200408.P2397807409275132717` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200408 has offset 0).

The definition of A200408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200408.P2397807409275132717

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=16, a(3)=41`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200408

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P2397807409275132717.Spec : Prop :=
  ∀ n, P2397807409275132717.a n = A200408 n

theorem P2397807409275132717.correct : P2397807409275132717.Spec := by
  intro n
  simp only [A200408]

end A200408

/-! ## A200408.P9186723172509556613

`A005248(n+1)-A010696(n)`
-/

namespace A200408.P9186723172509556613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A010696 n

end

end A200408.P9186723172509556613

namespace A200408

/-- `A005248(n+1)-A010696(n)` -/
def P9186723172509556613.Spec : Prop :=
  ∀ n, P9186723172509556613.a n = A200408 n

end A200408

/-! ## A200408.P12991293471447976015

`A099921(n+1)-4`
-/

namespace A200408.P12991293471447976015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099921 (n + 1) - 4

end

end A200408.P12991293471447976015

namespace A200408

/-- `A099921(n+1)-4` -/
def P12991293471447976015.Spec : Prop :=
  ∀ n, P12991293471447976015.a n = A200408 n

end A200408

/-! ## A200408.P2315676720071209083

`A215580(n)-A010685(n)`
-/

namespace A200408.P2315676720071209083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 n - A010685 n

end

end A200408.P2315676720071209083

namespace A200408

/-- `A215580(n)-A010685(n)` -/
def P2315676720071209083.Spec : Prop :=
  ∀ n, P2315676720071209083.a n = A200408 n

end A200408

/-! ## A200408.P15077342665693336902

`A215580(n)-A000034(n)²`
-/

namespace A200408.P15077342665693336902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 n - A000034 n ^ 2

end

end A200408.P15077342665693336902

namespace A200408

/-- `A215580(n)-A000034(n)²` -/
def P15077342665693336902.Spec : Prop :=
  ∀ n, P15077342665693336902.a n = A200408 n

end A200408

/-! ## A200408.P10385851550770709142

`A173661(n+1)-A010677(n)`
-/

namespace A200408.P10385851550770709142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173661 (n + 1) - A010677 n

end

end A200408.P10385851550770709142

namespace A200408

/-- `A173661(n+1)-A010677(n)` -/
def P10385851550770709142.Spec : Prop :=
  ∀ n, P10385851550770709142.a n = A200408 n

end A200408

/-! ## A200408.P5743332292270813894

`A366508(n+1)-A010690(n)`
-/

namespace A200408.P5743332292270813894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366508 (n + 1) - A010690 n

end

end A200408.P5743332292270813894

namespace A200408

/-- `A366508(n+1)-A010690(n)` -/
def P5743332292270813894.Spec : Prop :=
  ∀ n, P5743332292270813894.a n = A200408 n

end A200408

/-! ## A200408.P15358861859191446412

`A366508(n+1)-A010684(n)²`
-/

namespace A200408.P15358861859191446412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366508 (n + 1) - A010684 n ^ 2

end

end A200408.P15358861859191446412

namespace A200408

/-- `A366508(n+1)-A010684(n)²` -/
def P15358861859191446412.Spec : Prop :=
  ∀ n, P15358861859191446412.a n = A200408 n

end A200408

/-! ## A200408.P2241353842639556571

`A215580(n)-A327767(n+1)²`
-/

namespace A200408.P2241353842639556571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 n - A327767 (n + 1) ^ 2

end

end A200408.P2241353842639556571

namespace A200408

/-- `A215580(n)-A327767(n+1)²` -/
def P2241353842639556571.Spec : Prop :=
  ∀ n, P2241353842639556571.a n = A200408 n

end A200408

/-! ## A200408.P12398530134495596855

`A002878(n)-(A010696(n)-A005248(n))`
-/

namespace A200408.P12398530134495596855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n - (A010696 n - A005248 n)

end

end A200408.P12398530134495596855

namespace A200408

/-- `A002878(n)-(A010696(n)-A005248(n))` -/
def P12398530134495596855.Spec : Prop :=
  ∀ n, P12398530134495596855.a n = A200408 n

end A200408

/-! ## A200408.P14199394198231536135

`A002878(n+1)-(A010696(n)+A002878(n))`
-/

namespace A200408.P14199394198231536135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - (A010696 n + A002878 n)

end

end A200408.P14199394198231536135

namespace A200408

/-- `A002878(n+1)-(A010696(n)+A002878(n))` -/
def P14199394198231536135.Spec : Prop :=
  ∀ n, P14199394198231536135.a n = A200408 n

end A200408

/-!
# A200409: The y-values in the solution to 19*x^2 - 18 = y^2.

The programs for A200409, there is no canonical definition to state claims against.
-/

/-! ## A200409.P16906910471013987875

`record[A093178(Δ[A167708(n+1)])]`
-/

namespace A200409.P16906910471013987875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200409.P16906910471013987875

/-!
# A200424: Number of -2..2 arrays x(0..n+2) of n+3 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200424, there is no canonical definition to state claims against.
-/

/-! ## A200424.P5908466567125788660

`A200430(∑[n+2])`
-/

namespace A200424.P5908466567125788660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200424.P5908466567125788660

/-! ## A200424.P1110749245331697573

`record[A200430(A000096(A158416(n)))]`
-/

namespace A200424.P1110749245331697573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000096 (A158416 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200424.P1110749245331697573

/-! ## A200424.P17831575536241701311

`record[A200430(A000096(A000188(n+1)))]`
-/

namespace A200424.P17831575536241701311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200424.P17831575536241701311

/-! ## A200424.P12611426417458355049

`record[A200430(A000096(A002260(n+1)))]`
-/

namespace A200424.P12611426417458355049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200424.P12611426417458355049

/-! ## A200424.P15978429999454298224

`record[A200430(A000096(A003603(n+1)))]`
-/

namespace A200424.P15978429999454298224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000096 (A003603 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200424.P15978429999454298224

/-!
# A200425: Number of -3..3 arrays x(0..n+2) of n+3 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200425, there is no canonical definition to state claims against.
-/

/-! ## A200425.P12861745528546726388

`A200430(∑[n+3]+1)`
-/

namespace A200425.P12861745528546726388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200425.P12861745528546726388

/-! ## A200425.P7580963446627704533

`char[A051162(n)]*A200430(A034856(n+2))`
-/

namespace A200425.P7580963446627704533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A200430 (A034856 (n + 2)).toNat

end

end A200425.P7580963446627704533

/-! ## A200425.P16045349508917959916

`A200430(A034856(n+2))%A222699(n+5)`
-/

namespace A200425.P16045349508917959916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200430 (A034856 (n + 2)).toNat) (A222699 (n + 5))

end

end A200425.P16045349508917959916

/-!
# A200426: Number of -4..4 arrays x(0..n+2) of n+3 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200426, there is no canonical definition to state claims against.
-/

/-! ## A200426.P16812282942722145610

`A200430(A141214(n+1))`
-/

namespace A200426.P16812282942722145610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A141214 (n + 1)).toNat

end

end A200426.P16812282942722145610

/-! ## A200426.P11053399082240041192

`A200430(A027379(n+2))`
-/

namespace A200426.P11053399082240041192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A027379 (n + 2)).toNat

end

end A200426.P11053399082240041192

/-! ## A200426.P10046552107594821126

`A200430(A055998(n+2))`
-/

namespace A200426.P10046552107594821126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A055998 (n + 2)).toNat

end

end A200426.P10046552107594821126

/-! ## A200426.P13503293467824785820

`A200430(A052905(n+1)+2)`
-/

namespace A200426.P13503293467824785820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A052905 (n + 1) + 2).toNat

end

end A200426.P13503293467824785820

/-! ## A200426.P1827701162521691363

`A200430(A152948(n+6)-5)`
-/

namespace A200426.P1827701162521691363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A152948 (n + 6) - 5).toNat

end

end A200426.P1827701162521691363

/-!
# A200427: Number of -5..5 arrays x(0..n+2) of n+3 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200427, there is no canonical definition to state claims against.
-/

/-! ## A200427.P1352735377051718058

`A200430(Δ[A264443(n)])`
-/

namespace A200427.P1352735377051718058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (f1 (n + 1) - f1 n).toNat

end

end A200427.P1352735377051718058

/-! ## A200427.P17040483350949437617

`A200430(A046691(n+3))`
-/

namespace A200427.P17040483350949437617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A046691 (n + 3)).toNat

end

end A200427.P17040483350949437617

/-! ## A200427.P5881815468995106115

`A200430(eq[4, A193592(n)])`
-/

namespace A200427.P5881815468995106115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200427.P5881815468995106115

/-! ## A200427.P17874928631419143073

`A200430(Δ[A023545(n+1)])`
-/

namespace A200427.P17874928631419143073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (f1 (n + 1) - f1 n).toNat

end

end A200427.P17874928631419143073

/-! ## A200427.P17111028095962413392

`A200430(A055999(n+2)+2)`
-/

namespace A200427.P17111028095962413392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A055999 (n + 2) + 2).toNat

end

end A200427.P17111028095962413392

/-!
# A200428: Number of -6..6 arrays x(0..n+2) of n+3 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200428, there is no canonical definition to state claims against.
-/

/-! ## A200428.P3211610648864878292

`A200430(A052905(n+3))`
-/

namespace A200428.P3211610648864878292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A052905 (n + 3)).toNat

end

end A200428.P3211610648864878292

/-! ## A200428.P11385468308018159048

`A200430(A056119(n)+16)`
-/

namespace A200428.P11385468308018159048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A056119 n + 16).toNat

end

end A200428.P11385468308018159048

/-! ## A200428.P16130230277601713843

`A200430(eq[3, A219347(n)])`
-/

namespace A200428.P16130230277601713843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200428.P16130230277601713843

/-! ## A200428.P3814235271476875409

`A200430(eq[5, A193592(n)])`
-/

namespace A200428.P3814235271476875409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200428.P3814235271476875409

/-! ## A200428.P13924193135398669552

`A200430(Δ[Δ[A006504(n+1)]])`
-/

namespace A200428.P13924193135398669552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (f1 (n + 1) - f1 n).toNat

end

end A200428.P13924193135398669552

/-!
# A200429: Number of -7..7 arrays x(0..n+2) of n+3 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200429, there is no canonical definition to state claims against.
-/

/-! ## A200429.P3372985382143336601

`A200430(A055999(n+4))`
-/

namespace A200429.P3372985382143336601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A055999 (n + 4)).toNat

end

end A200429.P3372985382143336601

/-! ## A200429.P7480035287929879335

`A200430(eq[4, A219347(n)])`
-/

namespace A200429.P7480035287929879335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200429.P7480035287929879335

/-! ## A200429.P8677716726734996762

`A200430(eq[6, A193592(n)])`
-/

namespace A200429.P8677716726734996762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200429.P8677716726734996762

/-! ## A200429.P16213992093133224084

`A200430(eq[10, A185782(n+1)])`
-/

namespace A200429.P16213992093133224084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200429.P16213992093133224084

/-! ## A200429.P11722547529638567205

`A200430(eq[7, A200370(n+1)])`
-/

namespace A200429.P11722547529638567205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200429.P11722547529638567205

/-!
# A200431: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200431, the canonical program `A200431.P11163275261862065580` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200431 has offset 1).

The definition of A200431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200431.P11163275261862065580

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=20, a(2)=92, a(3)=248`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200431

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11163275261862065580.Spec : Prop :=
  ∀ n, P11163275261862065580.a n = A200431 (n + 1)

theorem P11163275261862065580.correct : P11163275261862065580.Spec := by
  intro n
  simp only [A200431, Nat.add_sub_cancel]

end A200431

/-! ## A200431.P15176560609657755551

`∑[n*(16*n+4)]`
-/

namespace A200431.P15176560609657755551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (16 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200431.P15176560609657755551

namespace A200431

/-- `∑[n*(16*n+4)]` -/
def P15176560609657755551.Spec : Prop :=
  ∀ n, (P15176560609657755551.a n : ℤ) = A200431 (n + 1)

end A200431

/-! ## A200431.P6756112230959360291

`4*∑[n*or(1, 4*n)]`
-/

namespace A200431.P6756112230959360291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200431.P6756112230959360291

namespace A200431

/-- `4*∑[n*or(1, 4*n)]` -/
def P6756112230959360291.Spec : Prop :=
  ∀ n, (P6756112230959360291.a n : ℤ) = A200431 (n + 1)

end A200431

/-! ## A200431.P5804359573964390878

`4*∑[n*xor(1, 4*n)]`
-/

namespace A200431.P5804359573964390878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200431.P5804359573964390878

namespace A200431

/-- `4*∑[n*xor(1, 4*n)]` -/
def P5804359573964390878.Spec : Prop :=
  ∀ n, (P5804359573964390878.a n : ℤ) = A200431 (n + 1)

end A200431

/-! ## A200431.P3586607481031030551

`n/6*C(8*(n+1), 2)`
-/

namespace A200431.P3586607481031030551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 6 * (Nat.choose (8 * (n + 1)) 2 : ℚ)

end

end A200431.P3586607481031030551

namespace A200431

/-- `n/6*C(8*(n+1), 2)` -/
def P3586607481031030551.Spec : Prop :=
  ∀ n, P3586607481031030551.a n = (A200431 (n + 1) : ℚ)

end A200431

/-! ## A200431.P9768270720240934011

`Δ[(n-1)*C(2*(n+1), 3)]`
-/

namespace A200431.P9768270720240934011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (2 * (n + 1)) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200431.P9768270720240934011

namespace A200431

/-- `Δ[(n-1)*C(2*(n+1), 3)]` -/
def P9768270720240934011.Spec : Prop :=
  ∀ n, P9768270720240934011.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P2464574334349548998

`2*∑[2*n*Δ[C(2*n, 2)]]`
-/

namespace A200431.P2464574334349548998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200431.P2464574334349548998

namespace A200431

/-- `2*∑[2*n*Δ[C(2*n, 2)]]` -/
def P2464574334349548998.Spec : Prop :=
  ∀ n, P2464574334349548998.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P6033137604544821099

`Δ[(2*n+1)*4*C(n+1, 3)]`
-/

namespace A200431.P6033137604544821099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (4 * Nat.choose (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A200431.P6033137604544821099

namespace A200431

/-- `Δ[(2*n+1)*4*C(n+1, 3)]` -/
def P6033137604544821099.Spec : Prop :=
  ∀ n, P6033137604544821099.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P2491409728823863700

`a(n-1)+(8*n+2)*2*n` with `a(0)=0`
-/

namespace A200431.P2491409728823863700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (8 * n + 2) * (2 * n)

end

end A200431.P2491409728823863700

namespace A200431

/-- `a(n-1)+(8*n+2)*2*n` -/
def P2491409728823863700.Spec : Prop :=
  ∀ n, (P2491409728823863700.a n : ℤ) = A200431 (n + 1)

end A200431

/-! ## A200431.P33074908221483203

`2*(n+1)*n*or(7, 8*n)/3`
-/

namespace A200431.P33074908221483203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) * ((n : ℚ) * ((Nat.lor 7 (8 * n) : ℚ) / 3))

end

end A200431.P33074908221483203

namespace A200431

/-- `2*(n+1)*n*or(7, 8*n)/3` -/
def P33074908221483203.Spec : Prop :=
  ∀ n, P33074908221483203.a n = (A200431 (n + 1) : ℚ)

end A200431

/-! ## A200431.P13850121327830501741

`4*A331987(n)`
-/

namespace A200431.P13850121327830501741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A331987 n

end

end A200431.P13850121327830501741

namespace A200431

/-- `4*A331987(n)` -/
def P13850121327830501741.Spec : Prop :=
  ∀ n, P13850121327830501741.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P13752318687083957365

`4*(A332698(n)-n)`
-/

namespace A200431.P13752318687083957365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A332698 n - (n : ℤ))

end

end A200431.P13752318687083957365

namespace A200431

/-- `4*(A332698(n)-n)` -/
def P13752318687083957365.Spec : Prop :=
  ∀ n, P13752318687083957365.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P12115246897402615684

`n/3*A158058(n+1)`
-/

namespace A200431.P12115246897402615684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A158058 (n + 1) : ℚ)

end

end A200431.P12115246897402615684

namespace A200431

/-- `n/3*A158058(n+1)` -/
def P12115246897402615684.Spec : Prop :=
  ∀ n, P12115246897402615684.a n = (A200431 (n + 1) : ℚ)

end A200431

/-! ## A200431.P3040249875773386808

`A213839(n+1)+n²-1`
-/

namespace A200431.P3040249875773386808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A200431.P3040249875773386808

namespace A200431

/-- `A213839(n+1)+n²-1` -/
def P3040249875773386808.Spec : Prop :=
  ∀ n, P3040249875773386808.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P17979120833865844756

`A213842(n+1)-(n+1)²`
-/

namespace A200431.P17979120833865844756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213842 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A200431.P17979120833865844756

namespace A200431

/-- `A213842(n+1)-(n+1)²` -/
def P17979120833865844756.Spec : Prop :=
  ∀ n, P17979120833865844756.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P564351959449570977

`4*∑[Δ[n²]²-A016777(n)]`
-/

namespace A200431.P564351959449570977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200431.P564351959449570977

namespace A200431

/-- `4*∑[Δ[n²]²-A016777(n)]` -/
def P564351959449570977.Spec : Prop :=
  ∀ n, P564351959449570977.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P1651423451875749894

`A137931(n)+A033585(n)`
-/

namespace A200431.P1651423451875749894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137931 n + A033585 n

end

end A200431.P1651423451875749894

namespace A200431

/-- `A137931(n)+A033585(n)` -/
def P1651423451875749894.Spec : Prop :=
  ∀ n, P1651423451875749894.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P10051776668481751344

`A140811(n)+A085474(n)`
-/

namespace A200431.P10051776668481751344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n + A085474 n

end

end A200431.P10051776668481751344

namespace A200431

/-- `A140811(n)+A085474(n)` -/
def P10051776668481751344.Spec : Prop :=
  ∀ n, P10051776668481751344.a n = A200431 (n + 1)

end A200431

/-! ## A200431.P6203830854368682967

`A114254(n)-A016813(n)`
-/

namespace A200431.P6203830854368682967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n - A016813 n

end

end A200431.P6203830854368682967

namespace A200431

/-- `A114254(n)-A016813(n)` -/
def P6203830854368682967.Spec : Prop :=
  ∀ n, P6203830854368682967.a n = A200431 (n + 1)

end A200431

/-!
# A200432: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200432, there is no canonical definition to state claims against.
-/

/-! ## A200432.P3091819370796070922

`A200430(∑[n+1]+2)`
-/

namespace A200432.P3091819370796070922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200432.P3091819370796070922

/-! ## A200432.P1630834714856276842

`record[A200430(A130270(n+1)+2)]`
-/

namespace A200432.P1630834714856276842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200432.P1630834714856276842

/-!
# A200433: Number of -n..n arrays x(0..5) of 6 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200433, there is no canonical definition to state claims against.
-/

/-! ## A200433.P4373831622605641166

`A200430(∑[n+2]+4)`
-/

namespace A200433.P4373831622605641166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200433.P4373831622605641166

/-! ## A200433.P9818580997034124624

`lcm(2, A200430(A167614(n+1)))`
-/

namespace A200433.P9818580997034124624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200430 (A167614 (n + 1)).toNat)

end

end A200433.P9818580997034124624

/-! ## A200433.P13566037083385105339

`A200430(A167614(n+1))+A178798(n)`
-/

namespace A200433.P13566037083385105339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A167614 (n + 1)).toNat + A178798 n

end

end A200433.P13566037083385105339

/-! ## A200433.P7305968886253470084

`A200430(A167614(n+1))+A185284(n)`
-/

namespace A200433.P7305968886253470084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A167614 (n + 1)).toNat + A185284 n

end

end A200433.P7305968886253470084

/-! ## A200433.P6157697414999793717

`A200430(A167614(n+1))%A016928(n)`
-/

namespace A200433.P6157697414999793717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200430 (A167614 (n + 1)).toNat) (A016928 n)

end

end A200433.P6157697414999793717

/-!
# A200434: Number of -n..n arrays x(0..6) of 7 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200434, there is no canonical definition to state claims against.
-/

/-! ## A200434.P10703178726986019910

`A200430(A052905(n)+9)`
-/

namespace A200434.P10703178726986019910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A052905 n + 9).toNat

end

end A200434.P10703178726986019910

/-! ## A200434.P12535319910512050342

`A200430(A055999(n)+10)`
-/

namespace A200434.P12535319910512050342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A055999 n + 10).toNat

end

end A200434.P12535319910512050342

/-! ## A200434.P3138028865056658387

`A200430(A167614(n+2)+1)`
-/

namespace A200434.P3138028865056658387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A167614 (n + 2) + 1).toNat

end

end A200434.P3138028865056658387

/-! ## A200434.P4719010295406098030

`A200430(A152950(n+4)+1)`
-/

namespace A200434.P4719010295406098030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A152950 (n + 4) + 1).toNat

end

end A200434.P4719010295406098030

/-! ## A200434.P13940226562218144356

`A200430(Δ[A264443(n)-n²])`
-/

namespace A200434.P13940226562218144356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (f1 (n + 1) - f1 n).toNat

end

end A200434.P13940226562218144356

/-!
# A200435: Number of -n..n arrays x(0..7) of 8 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200435, there is no canonical definition to state claims against.
-/

/-! ## A200435.P12134317763407045245

`A200430(A167499(n+3))`
-/

namespace A200435.P12134317763407045245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A167499 (n + 3)).toNat

end

end A200435.P12134317763407045245

/-! ## A200435.P15272503345555427241

`A200430(A000217(n+4)+5)`
-/

namespace A200435.P15272503345555427241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000217 (n + 4) + 5).toNat

end

end A200435.P15272503345555427241

/-! ## A200435.P14186313362172445460

`A200430(A046691(n+2)+9)`
-/

namespace A200435.P14186313362172445460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A046691 (n + 2) + 9).toNat

end

end A200435.P14186313362172445460

/-! ## A200435.P3636105103817393156

`A200430(A052905(n+1)+10)`
-/

namespace A200435.P3636105103817393156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A052905 (n + 1) + 10).toNat

end

end A200435.P3636105103817393156

/-! ## A200435.P18091995775485497083

`A200430(A000124(n+5)-(n+1))`
-/

namespace A200435.P18091995775485497083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A200435.P18091995775485497083

/-!
# A200436: Number of -n..n arrays x(0..8) of 9 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200436, there is no canonical definition to state claims against.
-/

/-! ## A200436.P13006428440132081259

`A200430(A167499(n+4)+1)`
-/

namespace A200436.P13006428440132081259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A167499 (n + 4) + 1).toNat

end

end A200436.P13006428440132081259

/-! ## A200436.P3395255978941747038

`A200430(A000217(n+5)+6)`
-/

namespace A200436.P3395255978941747038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A000217 (n + 5) + 6).toNat

end

end A200436.P3395255978941747038

/-! ## A200436.P10142136519282183302

`A200430(eq[6, A130270(n+1)])`
-/

namespace A200436.P10142136519282183302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200436.P10142136519282183302

/-! ## A200436.P11009100829531447073

`A200430(eq[7, A131818(n+1)])`
-/

namespace A200436.P11009100829531447073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200436.P11009100829531447073

/-! ## A200436.P15445998850500943114

`A200430(eq[4, A193592(n)]+10)`
-/

namespace A200436.P15445998850500943114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A200436.P15445998850500943114

/-!
# A200437: Number of -n..n arrays x(0..9) of 10 elements with zero sum and no two or three adjacent elements summing to zero.

The programs for A200437, there is no canonical definition to state claims against.
-/

/-! ## A200437.P4442434022354072016

`A200430(eq[11, A066657(n)])`
-/

namespace A200437.P4442434022354072016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200437.P4442434022354072016

/-! ## A200437.P1570054340762062602

`A200430(A167499(n+5)+2)`
-/

namespace A200437.P1570054340762062602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A167499 (n + 5) + 2).toNat

end

end A200437.P1570054340762062602

/-! ## A200437.P12832294515826348521

`A200430(A055998(n+4)+10)`
-/

namespace A200437.P12832294515826348521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A055998 (n + 4) + 10).toNat

end

end A200437.P12832294515826348521

/-! ## A200437.P2695375797069452255

`A200430(eq[6, A002262(n)]+1)`
-/

namespace A200437.P2695375797069452255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A200437.P2695375797069452255

/-! ## A200437.P12033235887608991928

`A200430(eq[8, A131818(n+1)])`
-/

namespace A200437.P12033235887608991928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200437.P12033235887608991928

/-!
# A200439: Decimal expansion of constant arising in clubbed binomial approximation for the lightbulb process.

The programs for A200439, the canonical program `A200439.P9888979233728769882` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200439 has offset 1).

The definition of A200439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200439.P9888979233728769882

`a(n-2)` with `a(0)=2, a(1)=7, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200439

/-- `a(n-2)` -/
def P9888979233728769882.Spec : Prop :=
  ∀ n, (P9888979233728769882.a n : ℤ) = A200439 (n + 1)

theorem P9888979233728769882.correct : P9888979233728769882.Spec := by
  intro n
  simp only [A200439, Nat.add_sub_cancel]

end A200439

/-!
# A200440: Record values in A200506.

The programs for A200440, there is no canonical definition to state claims against.
-/

/-! ## A200440.P1599650434305604369

`record[A200506(n)]`
-/

namespace A200440.P1599650434305604369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200440.P1599650434305604369

/-!
# A200441: Expansion of g.f. 1/(1 - 33*x + x^2).

The programs for A200441, the canonical program `A200441.P18246901899425611445` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200441 has offset 0).

The definition of A200441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200441.P18246901899425611445

`33*a(n-1)-a(n-2)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200441

/-- `33*a(n-1)-a(n-2)` -/
def P18246901899425611445.Spec : Prop :=
  ∀ n, P18246901899425611445.a n = A200441 n

theorem P18246901899425611445.correct : P18246901899425611445.Spec := by
  intro n
  simp only [A200441]

end A200441

/-! ## A200441.P2141652410305451563

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=33`
-/

namespace A200441.P2141652410305451563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 33] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A200441.P2141652410305451563

namespace A200441

/-- `(a(n-1)²-1)/a(n-2)` -/
def P2141652410305451563.Spec : Prop :=
  ∀ n, P2141652410305451563.a n = (A200441 n : ℚ)

end A200441

/-!
# A200442: Expansion of 1/(1-31*x+x^2).

The programs for A200442, the canonical program `A200442.P1769605085717007562` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200442 has offset 0).

The definition of A200442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200442.P1769605085717007562

`31*a(n-1)-a(n-2)` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200442

/-- `31*a(n-1)-a(n-2)` -/
def P1769605085717007562.Spec : Prop :=
  ∀ n, P1769605085717007562.a n = A200442 n

theorem P1769605085717007562.correct : P1769605085717007562.Spec := by
  intro n
  simp only [A200442]

end A200442

/-! ## A200442.P13859260089426672841

`∑[lcm(31, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=30`
-/

namespace A200442.P13859260089426672841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  (Int.lcm 31 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200442.P13859260089426672841

namespace A200442

/-- `∑[lcm(31, a(n-1))-a(n-2)]` -/
def P13859260089426672841.Spec : Prop :=
  ∀ n, P13859260089426672841.a n = A200442 n

end A200442

/-! ## A200442.P15115709563967585988

`∑[A111216(n)]`
-/

namespace A200442.P15115709563967585988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200442.P15115709563967585988

namespace A200442

/-- `∑[A111216(n)]` -/
def P15115709563967585988.Spec : Prop :=
  ∀ n, P15115709563967585988.a n = A200442 n

end A200442

/-! ## A200442.P195534348683125840

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=31`
-/

namespace A200442.P195534348683125840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 31] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A200442.P195534348683125840

namespace A200442

/-- `(a(n-1)²-1)/a(n-2)` -/
def P195534348683125840.Spec : Prop :=
  ∀ n, P195534348683125840.a n = (A200442 n : ℚ)

end A200442

/-!
# A200443: T(n,k)=Number of 0..k arrays x(0..n+3) of n+4 elements with zero n-1st differences.

The programs for A200443, there is no canonical definition to state claims against.
-/

/-! ## A200443.P1442896983517093307

`A200370(n+1)+A000122(A036685(n+5))`
-/

namespace A200443.P1442896983517093307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) + A000122 (A036685 (n + 5)).toNat

end

end A200443.P1442896983517093307

/-! ## A200443.P15638211864679406261

`A244226(A034498(n+1))+A200370(n+1)-1`
-/

namespace A200443.P15638211864679406261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A034498 (n + 1)).toNat + (A200370 (n + 1) - 1)

end

end A200443.P15638211864679406261

/-! ## A200443.P15258176283796415625

`A244226(A034498(n+1))+A002262(A038722(n+1))`
-/

namespace A200443.P15258176283796415625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A034498 (n + 1)).toNat + A002262 (A038722 (n + 1)).toNat

end

end A200443.P15258176283796415625

/-! ## A200443.P17206481204662366537

`A200370(n+1)+A184159(A141020(n))`
-/

namespace A200443.P17206481204662366537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) + A184159 (A141020 n).toNat

end

end A200443.P17206481204662366537

/-!
# A200444: Number of 0..n arrays x(0..7) of 8 elements with zero 3rd differences.

The programs for A200444, there is no canonical definition to state claims against.
-/

/-! ## A200444.P3545017847566606802

`A200443(∑[n+3]+7)`
-/

namespace A200444.P3545017847566606802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200444.P3545017847566606802

/-! ## A200444.P11930123159566615928

`record[A200443(A133263(n)+2)]`
-/

namespace A200444.P11930123159566615928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A133263 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200444.P11930123159566615928

/-! ## A200444.P17696448951493659023

`record[A200443(A022856(n+1)+2)]`
-/

namespace A200444.P17696448951493659023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A022856 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200444.P17696448951493659023

/-! ## A200444.P15601453824843469811

`A249422(A038568(n))+A200443(A055999(n)+10)`
-/

namespace A200444.P15601453824843469811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249422 (A038568 n).toNat + A200443 (A055999 n + 10).toNat

end

end A200444.P15601453824843469811

/-! ## A200444.P11498076565890663580

`∑[∑[A359240(A004114(n))]+1]+1`
-/

namespace A200444.P11498076565890663580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (A004114 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A200444.P11498076565890663580

/-!
# A200445: Number of 0..n arrays x(0..8) of 9 elements with zero 4th differences.

The programs for A200445, there is no canonical definition to state claims against.
-/

/-! ## A200445.P2346079250723357651

`A200443(A167499(n+3))`
-/

namespace A200445.P2346079250723357651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A167499 (n + 3)).toNat

end

end A200445.P2346079250723357651

/-! ## A200445.P1415152422958581097

`A200443(A077169(n+5))`
-/

namespace A200445.P1415152422958581097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A077169 (n + 5)).toNat

end

end A200445.P1415152422958581097

/-! ## A200445.P8767346986842562829

`A200443(A155212(n)+13)`
-/

namespace A200445.P8767346986842562829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A155212 n + 13).toNat

end

end A200445.P8767346986842562829

/-! ## A200445.P8562821183974334969

`A200443(A056000(n)+15)`
-/

namespace A200445.P8562821183974334969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A056000 n + 15).toNat

end

end A200445.P8562821183974334969

/-! ## A200445.P4682315062010419218

`A200443(eq[7, A066657(n)])`
-/

namespace A200445.P4682315062010419218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200445.P4682315062010419218

/-!
# A200446: Number of 0..n arrays x(0..9) of 10 elements with zero 5th differences.

The programs for A200446, there is no canonical definition to state claims against.
-/

/-! ## A200446.P1217187723780905391

`A200443(A166136(n+4))`
-/

namespace A200446.P1217187723780905391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A166136 (n + 4)).toNat

end

end A200446.P1217187723780905391

/-! ## A200446.P4104931390471844067

`A200443(A056115(n)+21)`
-/

namespace A200446.P4104931390471844067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A056115 n + 21).toNat

end

end A200446.P4104931390471844067

/-! ## A200446.P13489318709546393611

`A200443(A167499(n+4)+1)`
-/

namespace A200446.P13489318709546393611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A167499 (n + 4) + 1).toNat

end

end A200446.P13489318709546393611

/-! ## A200446.P1127647342720310320

`A200443(A340266(n+4)+4)`
-/

namespace A200446.P1127647342720310320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A340266 (n + 4) + 4).toNat

end

end A200446.P1127647342720310320

/-! ## A200446.P13887171015416469791

`A200443(A000124(n+5)+5)`
-/

namespace A200446.P13887171015416469791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A000124 (n + 5) + 5).toNat

end

end A200446.P13887171015416469791

/-!
# A200447: Number of 0..n arrays x(0..10) of 11 elements with zero 6th differences.

The programs for A200447, there is no canonical definition to state claims against.
-/

/-! ## A200447.P7121193553169902452

`A200443(∑[n+6]+22)`
-/

namespace A200447.P7121193553169902452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A200447.P7121193553169902452

/-! ## A200447.P6888420614858849414

`A200443(A000217(n+6)+7)+char[19]`
-/

namespace A200447.P6888420614858849414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A000217 (n + 6) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200447.P6888420614858849414

/-! ## A200447.P15389915816186957037

`A200443(A000124(n+6)+6)+char[25]`
-/

namespace A200447.P15389915816186957037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A000124 (n + 6) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200447.P15389915816186957037

/-! ## A200447.P2225580700232614496

`∑{d}[A200443(A000124(n+6)+6), A000010(#)]`
-/

namespace A200447.P2225580700232614496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200443 (A000124 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200447.P2225580700232614496

/-! ## A200447.P14371259924803204898

`A007318(C(n, 2))*A200443(A000124(n+6)+6)`
-/

namespace A200447.P14371259924803204898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A200443 (A000124 (n + 6) + 6).toNat

end

end A200447.P14371259924803204898

/-!
# A200448: Number of -2..2 arrays x(0..n+1) of n+2 elements with zero sum and nonzero first and second differences.

The programs for A200448, there is no canonical definition to state claims against.
-/

/-! ## A200448.P7392561386755690427

`A200454(∑[n+2])`
-/

namespace A200448.P7392561386755690427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200448.P7392561386755690427

/-! ## A200448.P15137011808085665687

`record[A200454(A101881(n)+1)]`
-/

namespace A200448.P15137011808085665687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200448.P15137011808085665687

/-! ## A200448.P15012971818020266379

`record[A200454(A101881(A099375(n)))]`
-/

namespace A200448.P15012971818020266379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A101881 (A099375 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200448.P15012971818020266379

/-! ## A200448.P3503562422771747407

`record[A200454(A101881(A131843(n)))]`
-/

namespace A200448.P3503562422771747407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A101881 (A131843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200448.P3503562422771747407

/-! ## A200448.P3102676794820761738

`record[A200454(A000096(A344180(n)))]`
-/

namespace A200448.P3102676794820761738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200448.P3102676794820761738

/-!
# A200449: Number of -3..3 arrays x(0..n+1) of n+2 elements with zero sum and nonzero first and second differences.

The programs for A200449, there is no canonical definition to state claims against.
-/

/-! ## A200449.P18220976919522838258

`A200454(∑[n+3]+1)`
-/

namespace A200449.P18220976919522838258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200449.P18220976919522838258

/-! ## A200449.P7438847952864288670

`A200454(A034856(n+2))%A209943(n+1)`
-/

namespace A200449.P7438847952864288670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200454 (A034856 (n + 2)).toNat) (A209943 (n + 1))

end

end A200449.P7438847952864288670

/-!
# A200450: Number of -4..4 arrays x(0..n+1) of n+2 elements with zero sum and nonzero first and second differences.

The programs for A200450, there is no canonical definition to state claims against.
-/

/-! ## A200450.P16803752866194184060

`A200454(A027379(n+2))`
-/

namespace A200450.P16803752866194184060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A027379 (n + 2)).toNat

end

end A200450.P16803752866194184060

/-! ## A200450.P7298937800216927635

`A200454(A055998(n+2))`
-/

namespace A200450.P7298937800216927635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A055998 (n + 2)).toNat

end

end A200450.P7298937800216927635

/-! ## A200450.P9057584714086950521

`A200454(A155212(n)+5)`
-/

namespace A200450.P9057584714086950521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A155212 n + 5).toNat

end

end A200450.P9057584714086950521

/-! ## A200450.P14670239175301358935

`A200454(A052905(n+1)+2)`
-/

namespace A200450.P14670239175301358935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A052905 (n + 1) + 2).toNat

end

end A200450.P14670239175301358935

/-! ## A200450.P4634642479939835349

`A200454(A000124(n+4)-4)`
-/

namespace A200450.P4634642479939835349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A000124 (n + 4) - 4).toNat

end

end A200450.P4634642479939835349

/-!
# A200451: Number of -5..5 arrays x(0..n+1) of n+2 elements with zero sum and nonzero first and second differences.

The programs for A200451, there is no canonical definition to state claims against.
-/

/-! ## A200451.P11853350602619740402

`A200454(Δ[A264443(n)])`
-/

namespace A200451.P11853350602619740402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (f1 (n + 1) - f1 n).toNat

end

end A200451.P11853350602619740402

/-! ## A200451.P7635158509712284781

`A200454(A046691(n+3))`
-/

namespace A200451.P7635158509712284781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A046691 (n + 3)).toNat

end

end A200451.P7635158509712284781

/-! ## A200451.P7155984362978238847

`A200454(A056115(n)+11)`
-/

namespace A200451.P7155984362978238847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A056115 n + 11).toNat

end

end A200451.P7155984362978238847

/-! ## A200451.P9603333165347940257

`A200454(Δ[A023545(n+1)])`
-/

namespace A200451.P9603333165347940257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (f1 (n + 1) - f1 n).toNat

end

end A200451.P9603333165347940257

/-! ## A200451.P5472394437003841855

`A200454(A000124(n+5)-5)`
-/

namespace A200451.P5472394437003841855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A000124 (n + 5) - 5).toNat

end

end A200451.P5472394437003841855

/-!
# A200452: Number of -6..6 arrays x(0..n+1) of n+2 elements with zero sum and nonzero first and second differences.

The programs for A200452, there is no canonical definition to state claims against.
-/

/-! ## A200452.P12751288091591223388

`A200454(A052905(n+3))`
-/

namespace A200452.P12751288091591223388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A052905 (n + 3)).toNat

end

end A200452.P12751288091591223388

/-! ## A200452.P6292354507303524875

`A200454(eq[3, A219347(n)])`
-/

namespace A200452.P6292354507303524875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200452.P6292354507303524875

/-! ## A200452.P1038160578394964195

`A200454(eq[5, A193592(n)])`
-/

namespace A200452.P1038160578394964195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200452.P1038160578394964195

/-! ## A200452.P8188818597167227050

`A200454(eq[7, A049286(n+1)])`
-/

namespace A200452.P8188818597167227050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200452.P8188818597167227050

/-! ## A200452.P4663065054832863523

`A200454(eq[8, A185782(n+1)])`
-/

namespace A200452.P4663065054832863523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200452.P4663065054832863523

/-!
# A200453: Number of -7..7 arrays x(0..n+1) of n+2 elements with zero sum and nonzero first and second differences.

The programs for A200453, there is no canonical definition to state claims against.
-/

/-! ## A200453.P13268802584338167428

`A200454(A055999(n+4))`
-/

namespace A200453.P13268802584338167428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A055999 (n + 4)).toNat

end

end A200453.P13268802584338167428

/-! ## A200453.P3158582771543795512

`A200454(eq[4, A219347(n)])`
-/

namespace A200453.P3158582771543795512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200453.P3158582771543795512

/-! ## A200453.P2048430898955894965

`A200454(eq[6, A193592(n)])`
-/

namespace A200453.P2048430898955894965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200453.P2048430898955894965

/-! ## A200453.P8066776504855597441

`A200454(eq[10, A185782(n+1)])`
-/

namespace A200453.P8066776504855597441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200453.P8066776504855597441

/-! ## A200453.P15901357026935106649

`A200454(A189836(n+12)-A027379(n+14))`
-/

namespace A200453.P15901357026935106649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A189836 (n + 12) - A027379 (n + 14)).toNat

end

end A200453.P15901357026935106649

/-!
# A200455: Number of -n..n arrays x(0..2) of 3 elements with zero sum and nonzero first and second differences.

The programs for A200455, the canonical program `A200455.P17436498721501168497` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200455 has offset 1).

The definition of A200455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200455.P17436498721501168497

`∑[xor(2, 6*n)+2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A200455

/-- `∑[xor(2, 6*n)+2]` -/
def P17436498721501168497.Spec : Prop :=
  ∀ n, (P17436498721501168497.a n : ℤ) = A200455 (n + 1)

theorem P17436498721501168497.correct : P17436498721501168497.Spec := by
  intro n
  simp only [A200455, Nat.add_sub_cancel]

end A200455

/-! ## A200455.P12986826582223229632

`∑[abs(xor(6*n, -4))]`
-/

namespace A200455.P12986826582223229632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (6 * n : ℤ) (-4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P12986826582223229632

namespace A200455

/-- `∑[abs(xor(6*n, -4))]` -/
def P12986826582223229632.Spec : Prop :=
  ∀ n, P12986826582223229632.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P9212584413262503367

`∑[-xor(6*n, -4)]`
-/

namespace A200455.P9212584413262503367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (6 * n : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P9212584413262503367

namespace A200455

/-- `∑[-xor(6*n, -4)]` -/
def P9212584413262503367.Spec : Prop :=
  ∀ n, P9212584413262503367.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P6005039477712971053

`∑[a(n-2)+12]` with `a(0)=4, a(1)=6`
-/

namespace A200455.P6005039477712971053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P6005039477712971053

namespace A200455

/-- `∑[a(n-2)+12]` -/
def P6005039477712971053.Spec : Prop :=
  ∀ n, (P6005039477712971053.a n : ℤ) = A200455 (n + 1)

end A200455

/-! ## A200455.P13860966855704329162

`∑[∑[12-a(n-1)]]` with `a(0)=4, a(1)=2`
-/

namespace A200455.P13860966855704329162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  12 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P13860966855704329162

namespace A200455

/-- `∑[∑[12-a(n-1)]]` -/
def P13860966855704329162.Spec : Prop :=
  ∀ n, P13860966855704329162.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P361582681891950031

`∑[2*(2*or(1, n)+n)]`
-/

namespace A200455.P361582681891950031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * Nat.lor 1 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P361582681891950031

namespace A200455

/-- `∑[2*(2*or(1, n)+n)]` -/
def P361582681891950031.Spec : Prop :=
  ∀ n, (P361582681891950031.a n : ℤ) = A200455 (n + 1)

end A200455

/-! ## A200455.P3680592716915606193

`Δ[n^3]+or(3, 2*n)`
-/

namespace A200455.P3680592716915606193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 3 (2 * n) : ℤ)

end

end A200455.P3680592716915606193

namespace A200455

/-- `Δ[n^3]+or(3, 2*n)` -/
def P3680592716915606193.Spec : Prop :=
  ∀ n, P3680592716915606193.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P13493938861079381417

`3*(n+1)²+(-1)^n-n`
-/

namespace A200455.P13493938861079381417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) + ((-1) ^ n - (n : ℤ))

end

end A200455.P13493938861079381417

namespace A200455

/-- `3*(n+1)²+(-1)^n-n` -/
def P13493938861079381417.Spec : Prop :=
  ∀ n, P13493938861079381417.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P7247518549004743702

`∑[A092242(n+1)-1]`
-/

namespace A200455.P7247518549004743702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P7247518549004743702

namespace A200455

/-- `∑[A092242(n+1)-1]` -/
def P7247518549004743702.Spec : Prop :=
  ∀ n, P7247518549004743702.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P18149932238820023279

`∑[A146512(n+1)+3]`
-/

namespace A200455.P18149932238820023279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P18149932238820023279

namespace A200455

/-- `∑[A146512(n+1)+3]` -/
def P18149932238820023279.Spec : Prop :=
  ∀ n, P18149932238820023279.a n = A200455 (n + 1)

end A200455

/-! ## A200455.P13670542079142079966

`∑[2*A047243(n+1)]`
-/

namespace A200455.P13670542079142079966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200455.P13670542079142079966

namespace A200455

/-- `∑[2*A047243(n+1)]` -/
def P13670542079142079966.Spec : Prop :=
  ∀ n, P13670542079142079966.a n = A200455 (n + 1)

end A200455

/-!
# A200456: Number of -n..n arrays x(0..3) of 4 elements with zero sum and nonzero first and second differences.

The programs for A200456, there is no canonical definition to state claims against.
-/

/-! ## A200456.P17001410899635277538

`A200454(∑[n+1]+2)`
-/

namespace A200456.P17001410899635277538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200456.P17001410899635277538

/-! ## A200456.P2179917088752155595

`lcm(2, A200454(A089071(n+3)))`
-/

namespace A200456.P2179917088752155595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200454 (A089071 (n + 3)).toNat)

end

end A200456.P2179917088752155595

/-! ## A200456.P3716982752237952424

`record[root(A200454(n+1), A130270(n+1))]`
-/

namespace A200456.P3716982752237952424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200454 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200456.P3716982752237952424

/-! ## A200456.P6947221024649731410

`record[gcd(A002262(n+1), A200454(n+3))]`
-/

namespace A200456.P6947221024649731410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A200454 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200456.P6947221024649731410

/-! ## A200456.P2625098875574631408

`A200454(A089071(n+3))%A162834(n+1)`
-/

namespace A200456.P2625098875574631408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200454 (A089071 (n + 3)).toNat) (A162834 (n + 1))

end

end A200456.P2625098875574631408

/-!
# A200457: Number of -n..n arrays x(0..4) of 5 elements with zero sum and nonzero first and second differences.

The programs for A200457, there is no canonical definition to state claims against.
-/

/-! ## A200457.P5642241300254789788

`A200454(∑[n+2]+4)`
-/

namespace A200457.P5642241300254789788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200457.P5642241300254789788

/-! ## A200457.P12700795250121250038

`lcm(2, A200454(A167614(n+1)))`
-/

namespace A200457.P12700795250121250038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200454 (A167614 (n + 1)).toNat)

end

end A200457.P12700795250121250038

/-! ## A200457.P11537833218526271644

`A200454(A167614(n+1))+A025444(n)`
-/

namespace A200457.P11537833218526271644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A167614 (n + 1)).toNat + A025444 n

end

end A200457.P11537833218526271644

/-! ## A200457.P8484458234388040514

`A200454(A167614(n+1))%A017056(n)`
-/

namespace A200457.P8484458234388040514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200454 (A167614 (n + 1)).toNat) (A017056 n)

end

end A200457.P8484458234388040514

/-! ## A200457.P14192753727830661340

`or(A000038(n), A200454(A167614(n+1)))`
-/

namespace A200457.P14192753727830661340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A200454 (A167614 (n + 1)).toNat)

end

end A200457.P14192753727830661340

/-!
# A200458: Number of -n..n arrays x(0..5) of 6 elements with zero sum and nonzero first and second differences.

The programs for A200458, there is no canonical definition to state claims against.
-/

/-! ## A200458.P16473830353345774339

`A200454(A052905(n)+9)`
-/

namespace A200458.P16473830353345774339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A052905 n + 9).toNat

end

end A200458.P16473830353345774339

/-! ## A200458.P9347238775164256191

`A200454(A055999(n)+10)`
-/

namespace A200458.P9347238775164256191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A055999 n + 10).toNat

end

end A200458.P9347238775164256191

/-! ## A200458.P15634397855183012777

`A200454(A167614(n+2)+1)`
-/

namespace A200458.P15634397855183012777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A167614 (n + 2) + 1).toNat

end

end A200458.P15634397855183012777

/-! ## A200458.P14836279614707767299

`A200454(A167499(n+2)-1)`
-/

namespace A200458.P14836279614707767299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A167499 (n + 2) - 1).toNat

end

end A200458.P14836279614707767299

/-! ## A200458.P8011258220206713307

`A200454(A000124(n+3)+3)`
-/

namespace A200458.P8011258220206713307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A000124 (n + 3) + 3).toNat

end

end A200458.P8011258220206713307

/-!
# A200459: Number of -n..n arrays x(0..6) of 7 elements with zero sum and nonzero first and second differences.

The programs for A200459, there is no canonical definition to state claims against.
-/

/-! ## A200459.P12136341118827173324

`A200454(A167499(n+3))`
-/

namespace A200459.P12136341118827173324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A167499 (n + 3)).toNat

end

end A200459.P12136341118827173324

/-! ## A200459.P4006629911741813596

`A200454(A000217(n+4)+5)`
-/

namespace A200459.P4006629911741813596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A000217 (n + 4) + 5).toNat

end

end A200459.P4006629911741813596

/-! ## A200459.P3626470579757485052

`A200454(eq[8, A130321(n)]+9)`
-/

namespace A200459.P3626470579757485052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A200459.P3626470579757485052

/-! ## A200459.P7452660753709032295

`A200454(A000124(n+3)+n+8)`
-/

namespace A200459.P7452660753709032295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A000124 (n + 3) + (n : ℤ) + 8).toNat

end

end A200459.P7452660753709032295

/-! ## A200459.P3155675795826266624

`A200454(A016789(n+4)+∑[n+1])`
-/

namespace A200459.P3155675795826266624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A016789 (n + 4) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A200459.P3155675795826266624

/-!
# A200460: Number of -n..n arrays x(0..7) of 8 elements with zero sum and nonzero first and second differences.

The programs for A200460, there is no canonical definition to state claims against.
-/

/-! ## A200460.P9227437828293601112

`A200454(A167499(n+4)+1)`
-/

namespace A200460.P9227437828293601112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A167499 (n + 4) + 1).toNat

end

end A200460.P9227437828293601112

/-! ## A200460.P12709812918136003309

`A200454(A055998(n+3)+9)`
-/

namespace A200460.P12709812918136003309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A055998 (n + 3) + 9).toNat

end

end A200460.P12709812918136003309

/-! ## A200460.P10822599634830995726

`A200454(A055999(n+4)-A004273(n+1))`
-/

namespace A200460.P10822599634830995726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A055999 (n + 4) - A004273 (n + 1)).toNat

end

end A200460.P10822599634830995726

/-! ## A200460.P15193770670165029229

`A200454(A027379(n+5)-A005843(n+2))`
-/

namespace A200460.P15193770670165029229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A027379 (n + 5) - A005843 (n + 2)).toNat

end

end A200460.P15193770670165029229

/-!
# A200461: Number of -n..n arrays x(0..8) of 9 elements with zero sum and nonzero first and second differences.

The programs for A200461, there is no canonical definition to state claims against.
-/

/-! ## A200461.P5761097606237614816

`A200454(A302537(n)+27)`
-/

namespace A200461.P5761097606237614816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A302537 n + 27).toNat

end

end A200461.P5761097606237614816

/-! ## A200461.P15532183473724121444

`A200454(A056119(n)+28)`
-/

namespace A200461.P15532183473724121444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A056119 n + 28).toNat

end

end A200461.P15532183473724121444

/-! ## A200461.P17131561489764827293

`A200454(eq[11, A066657(n)])`
-/

namespace A200461.P17131561489764827293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200461.P17131561489764827293

/-! ## A200461.P3696847918598755116

`A200454(A027379(n+4)+10)`
-/

namespace A200461.P3696847918598755116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (A027379 (n + 4) + 10).toNat

end

end A200461.P3696847918598755116

/-! ## A200461.P12482687148265423969

`A200454(eq[8, A131818(n+1)])`
-/

namespace A200461.P12482687148265423969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200461.P12482687148265423969

/-!
# A200462: Number of 0..1 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 2.

The programs for A200462, there is no canonical definition to state claims against.
-/

/-! ## A200462.P16570609266149642303

`A200469(∑[n+1])`
-/

namespace A200462.P16570609266149642303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200462.P16570609266149642303

/-! ## A200462.P15656318832555325597

`record[gcd(A025581(n), A200469(n+1))]`
-/

namespace A200462.P15656318832555325597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A200469 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200462.P15656318832555325597

/-! ## A200462.P11014390742318993811

`record[A200469(n+1)/A090582(n+1)]`
-/

namespace A200462.P11014390742318993811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200469 (n + 1) : ℚ) / (A090582 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200462.P11014390742318993811

/-! ## A200462.P4237969813385768368

`record[A200469(n+1)/A192721(n+1)]`
-/

namespace A200462.P4237969813385768368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200469 (n + 1) : ℚ) / (A192721 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200462.P4237969813385768368

/-! ## A200462.P3958381881587776580

`record[root(A200469(n+1), A004736(n+1))]`
-/

namespace A200462.P3958381881587776580
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200469 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200462.P3958381881587776580

/-!
# A200463: Number of 0..2 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 3.

The programs for A200463, there is no canonical definition to state claims against.
-/

/-! ## A200463.P5746575027513070341

`A200469(∑[n+2])`
-/

namespace A200463.P5746575027513070341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200463.P5746575027513070341

/-! ## A200463.P10540567247321611238

`record[A200469(A000096(A126759(n)))]`
-/

namespace A200463.P10540567247321611238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200463.P10540567247321611238

/-! ## A200463.P5025412041568316442

`record[A200469(A000096(A152271(n)))]`
-/

namespace A200463.P5025412041568316442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200463.P5025412041568316442

/-! ## A200463.P14275996141320639407

`record[A200469(A000096(A344180(n)))]`
-/

namespace A200463.P14275996141320639407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200463.P14275996141320639407

/-! ## A200463.P8273551737957107463

`record[A200469(A000096(A117358(n+1)))]`
-/

namespace A200463.P8273551737957107463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (A117358 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200463.P8273551737957107463

/-!
# A200464: Number of 0..3 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 4.

The programs for A200464, there is no canonical definition to state claims against.
-/

/-! ## A200464.P9349539709239374838

`A200469(∑[n+3]+1)`
-/

namespace A200464.P9349539709239374838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200464.P9349539709239374838

/-! ## A200464.P7634901994890762830

`A200469(A034856(n+2))%A016950(n)`
-/

namespace A200464.P7634901994890762830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200469 (A034856 (n + 2)).toNat) (A016950 n)

end

end A200464.P7634901994890762830

/-! ## A200464.P9982141946092007704

`A033999(n+2)²*A200469(A034856(n+2))`
-/

namespace A200464.P9982141946092007704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 2) ^ 2 * A200469 (A034856 (n + 2)).toNat

end

end A200464.P9982141946092007704

/-!
# A200465: Number of 0..4 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 5.

The programs for A200465, there is no canonical definition to state claims against.
-/

/-! ## A200465.P11709886875037529719

`A200469(A055998(n+2))`
-/

namespace A200465.P11709886875037529719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A055998 (n + 2)).toNat

end

end A200465.P11709886875037529719

/-! ## A200465.P10506635367571752560

`A200469(A056000(n)+7)`
-/

namespace A200465.P10506635367571752560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A056000 n + 7).toNat

end

end A200465.P10506635367571752560

/-! ## A200465.P6724593407816068858

`A200469(Δ[A006503(n+1)])`
-/

namespace A200465.P6724593407816068858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (f1 (n + 1) - f1 n).toNat

end

end A200465.P6724593407816068858

/-! ## A200465.P8663034253769677891

`A200469(A052905(n+1)+2)`
-/

namespace A200465.P8663034253769677891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A052905 (n + 1) + 2).toNat

end

end A200465.P8663034253769677891

/-!
# A200466: Number of 0..5 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 6.

The programs for A200466, there is no canonical definition to state claims against.
-/

/-! ## A200466.P15052346095263222332

`A200469(∑[n+5]+6)`
-/

namespace A200466.P15052346095263222332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200466.P15052346095263222332

/-! ## A200466.P18204792682271268251

`A200469(Δ[A264443(n)])+A000007(n+1)`
-/

namespace A200466.P18204792682271268251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A200466.P18204792682271268251

/-! ## A200466.P11955887126736602262

`A200469(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A200466.P11955887126736602262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A200466.P11955887126736602262

/-! ## A200466.P7058108032594737698

`A034947(2*n+1)²*A200469(Δ[A264443(n)])`
-/

namespace A200466.P7058108032594737698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) ^ 2 * A200469 (f1 (n + 1) - f1 n).toNat

end

end A200466.P7058108032594737698

/-! ## A200466.P13274695535903804344

`A014963(4*n+6)*A200469(Δ[A023545(n+1)])`
-/

namespace A200466.P13274695535903804344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A200469 (f1 (n + 1) - f1 n).toNat

end

end A200466.P13274695535903804344

/-!
# A200467: Number of 0..6 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 7.

The programs for A200467, there is no canonical definition to state claims against.
-/

/-! ## A200467.P11706046649349434003

`A200469(A052905(n+3))`
-/

namespace A200467.P11706046649349434003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A052905 (n + 3)).toNat

end

end A200467.P11706046649349434003

/-! ## A200467.P1513473527433211541

`A200469(A000217(n+6)-5)`
-/

namespace A200467.P1513473527433211541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000217 (n + 6) - 5).toNat

end

end A200467.P1513473527433211541

/-! ## A200467.P7707945367873053141

`A200469(A000124(n+6)-6)`
-/

namespace A200467.P7707945367873053141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000124 (n + 6) - 6).toNat

end

end A200467.P7707945367873053141

/-! ## A200467.P12969979906708058848

`A200469(Δ[Δ[A006504(n+1)]])`
-/

namespace A200467.P12969979906708058848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (f1 (n + 1) - f1 n).toNat

end

end A200467.P12969979906708058848

/-! ## A200467.P4674165461513459965

`A200469(Δ[A264443(n+1)]-1)`
-/

namespace A200467.P4674165461513459965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (f1 (n + 1) - f1 n - 1).toNat

end

end A200467.P4674165461513459965

/-!
# A200468: Number of 0..7 arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo 8.

The programs for A200468, there is no canonical definition to state claims against.
-/

/-! ## A200468.P6370731407662945034

`A200469(A055999(n+4))`
-/

namespace A200468.P6370731407662945034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A055999 (n + 4)).toNat

end

end A200468.P6370731407662945034

/-! ## A200468.P1472857330722897593

`A200469(A000096(n+6)-5)`
-/

namespace A200468.P1472857330722897593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (n + 6) - 5).toNat

end

end A200468.P1472857330722897593

/-! ## A200468.P8015456542851245831

`A200469(A000217(n+7)-6)`
-/

namespace A200468.P8015456542851245831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000217 (n + 7) - 6).toNat

end

end A200468.P8015456542851245831

/-! ## A200468.P16986229146411443984

`A200469(A000124(n+7)-7)`
-/

namespace A200468.P16986229146411443984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000124 (n + 7) - 7).toNat

end

end A200468.P16986229146411443984

/-! ## A200468.P14120189341951217868

`A200469(A167499(n+4)+2*(n+1))`
-/

namespace A200468.P14120189341951217868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A200468.P14120189341951217868

/-!
# A200469: T(n,k)=Number of 0..k arrays x(0..n-1) of n elements with each no smaller than the sum of its four previous neighbors modulo (k+1).

The programs for A200469, there is no canonical definition to state claims against.
-/

/-! ## A200469.P18210920758591222429

`A200251(n+1)-A185284(A000593(n+1))`
-/

namespace A200469.P18210920758591222429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A185284 (A000593 (n + 1)).toNat

end

end A200469.P18210920758591222429

/-! ## A200469.P9206905603550283457

`A200251(n+1)-A133010(A321738(n+1))`
-/

namespace A200469.P9206905603550283457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A133010 (A321738 (n + 1)).toNat

end

end A200469.P9206905603550283457

/-! ## A200469.P17489698399627602480

`A200251(n+1)-A324870(A185267(n+1))`
-/

namespace A200469.P17489698399627602480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A324870 (A185267 (n + 1)).toNat

end

end A200469.P17489698399627602480

/-! ## A200469.P931124217952390373

`A200251(n+1)-A011734(A156953(n*A011734(n)))`
-/

namespace A200469.P931124217952390373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200251 (n + 1) - A011734 (A156953 ((n : ℤ) * A011734 n).toNat).toNat

end

end A200469.P931124217952390373

/-! ## A200469.P9913583820192552762

`A200251(n+1)%A048725(A000204(n+1))`
-/

namespace A200469.P9913583820192552762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200251 (n + 1)) (A048725 (A000204 (n + 1)).toNat)

end

end A200469.P9913583820192552762

/-!
# A200470: Number of 0..n arrays x(0..5) of 6 elements with each no smaller than the sum of its four previous neighbors modulo (n+1).

The programs for A200470, there is no canonical definition to state claims against.
-/

/-! ## A200470.P10839508860751685460

`A200469(A000124(n+5)+5)`
-/

namespace A200470.P10839508860751685460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000124 (n + 5) + 5).toNat

end

end A200470.P10839508860751685460

/-! ## A200470.P7420091413684415321

`A200469(A000096(n+4)+7)`
-/

namespace A200470.P7420091413684415321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (n + 4) + 7).toNat

end

end A200470.P7420091413684415321

/-! ## A200470.P9563075259699627455

`A200469(A000217(n+5)+6)`
-/

namespace A200470.P9563075259699627455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000217 (n + 5) + 6).toNat

end

end A200470.P9563075259699627455

/-! ## A200470.P12423915736859094140

`A200469(A161680(n+6)+6)`
-/

namespace A200470.P12423915736859094140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A161680 (n + 6) + 6).toNat

end

end A200470.P12423915736859094140

/-! ## A200470.P3277819788253491525

`A200469(A133263(n+6)-(n+2))`
-/

namespace A200470.P3277819788253491525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A200470.P3277819788253491525

/-!
# A200471: Number of 0..n arrays x(0..6) of 7 elements with each no smaller than the sum of its four previous neighbors modulo (n+1).

The programs for A200471, there is no canonical definition to state claims against.
-/

/-! ## A200471.P11442501486171395302

`A200469(A000124(n+6)+6)`
-/

namespace A200471.P11442501486171395302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000124 (n + 6) + 6).toNat

end

end A200471.P11442501486171395302

/-! ## A200471.P12294120240337348643

`A200469(A000096(n+5)+8)`
-/

namespace A200471.P12294120240337348643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000096 (n + 5) + 8).toNat

end

end A200471.P12294120240337348643

/-! ## A200471.P7192809530972920722

`A200469(A000217(n+6)+7)`
-/

namespace A200471.P7192809530972920722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A000217 (n + 6) + 7).toNat

end

end A200471.P7192809530972920722

/-! ## A200471.P11311249676015659387

`A200469(A161680(n+7)+7)`
-/

namespace A200471.P11311249676015659387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A161680 (n + 7) + 7).toNat

end

end A200471.P11311249676015659387

/-! ## A200471.P1781697384256994654

`A200469(A133263(n+7)-(n+2))`
-/

namespace A200471.P1781697384256994654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200469 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A200471.P1781697384256994654

/-!
# A200472: Triangle T(n,k) is the number of ways to assign n people to k unlabeled groups of equal size.

The programs for A200472, there is no canonical definition to state claims against.
-/

/-! ## A200472.P6052715001692571345

`A051731(n+1)*A308624(n+1)`
-/

namespace A200472.P6052715001692571345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A308624 (n + 1)

end

end A200472.P6052715001692571345

/-! ## A200472.P14263492455443200085

`A000007(A048158(n+1))*A308624(n+1)`
-/

namespace A200472.P14263492455443200085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat * A308624 (n + 1)

end

end A200472.P14263492455443200085

/-! ## A200472.P1198937258349189296

`A003415(A127639(n+1))*A308624(n+1)`
-/

namespace A200472.P1198937258349189296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A127639 (n + 1)).toNat * A308624 (n + 1)

end

end A200472.P1198937258349189296

/-! ## A200472.P16300794439456871586

`A000007(A173541(n+1))*A308624(n+1)`
-/

namespace A200472.P16300794439456871586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173541 (n + 1)).toNat * A308624 (n + 1)

end

end A200472.P16300794439456871586

/-! ## A200472.P16810818054844143784

`A016412(A164306(n+1))*A308624(n+1)`
-/

namespace A200472.P16810818054844143784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 (A164306 (n + 1)).toNat * A308624 (n + 1)

end

end A200472.P16810818054844143784

/-! ## A200472.P398299856934709153

`A308624(n+1)%A017082(A054522(n+1))`
-/

namespace A200472.P398299856934709153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308624 (n + 1)) (A017082 (A054522 (n + 1)).toNat)

end

end A200472.P398299856934709153

/-! ## A200472.P14110225601491247266

`lcm(A134824(A140256(n+1)), A308624(n+1))`
-/

namespace A200472.P14110225601491247266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134824 (A140256 (n + 1)).toNat) (A308624 (n + 1))

end

end A200472.P14110225601491247266

/-! ## A200472.P16587312839080524139

`and(A057428(A127093(n+1)), A308624(n+1))`
-/

namespace A200472.P16587312839080524139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A127093 (n + 1)).toNat) (A308624 (n + 1))

end

end A200472.P16587312839080524139

/-! ## A200472.P5516254077698969704

`A397133(A120913(n+1))`
-/

namespace A200472.P5516254077698969704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397133 (A120913 (n + 1)).toNat

end

end A200472.P5516254077698969704

/-!
# A200473: Irregular triangle read by rows: T(n,k) = number of ways to assign n people to d_k unlabeled groups of equal size (where d_k is the k-th divisor of n).

The programs for A200473, there is no canonical definition to state claims against.
-/

/-! ## A200473.P436541788517786108

`A308624(∑[A132066(n+1)])`
-/

namespace A200473.P436541788517786108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A200473.P436541788517786108

/-! ## A200473.P12638957662035606940

`A036040(eq[1, A103921(n)])`
-/

namespace A200473.P12638957662035606940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200473.P12638957662035606940

/-! ## A200473.P5706075163796079157

`A036040(record[n^(2-A103921(n+1))]+1)`
-/

namespace A200473.P5706075163796079157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - A103921 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A200473.P5706075163796079157

/-! ## A200473.P12685407678655881668

`A060540(A056534(n+1))`
-/

namespace A200473.P12685407678655881668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (A056534 (n + 1)).toNat

end

end A200473.P12685407678655881668

/-! ## A200473.P10117676598587648844

`A124772(A272919(n+1)-1)`
-/

namespace A200473.P10117676598587648844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 (A272919 (n + 1) - 1).toNat

end

end A200473.P10117676598587648844

/-!
# A200475: G.f. satisfies: A(x) = exp( Sum_{n>=1} (Sum_{k=0..2*n} A027907(n,k)^2 * x^k * A(x)^(2*k)) * x^n*A(x)^n/n ), where A027907 is the triangle of trinomial coefficients.

The programs for A200475, there is no canonical definition to state claims against.
-/

/-! ## A200475.P18312671061329069664

`A284714(n+1)+A033886(A005246(n))`
-/

namespace A200475.P18312671061329069664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284714 (n + 1) + A033886 (A005246 n).toNat

end

end A200475.P18312671061329069664

/-! ## A200475.P995227137347479703

`A284714(n+1)+A102679(A000522(n))`
-/

namespace A200475.P995227137347479703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284714 (n + 1) + A102679 (A000522 n).toNat

end

end A200475.P995227137347479703

/-! ## A200475.P2263974038843906985

`A284714(n+1)+A007949(A200731(n))`
-/

namespace A200475.P2263974038843906985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284714 (n + 1) + A007949 (A200731 n).toNat

end

end A200475.P2263974038843906985

/-!
# A200476: Number of partitions of n such that the number of parts and the largest part and the smallest part are pairwise not coprime.

The programs for A200476, there is no canonical definition to state claims against.
-/

/-! ## A200476.P7710354837531016836

`A357743(A291218(n+1))`
-/

namespace A200476.P7710354837531016836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357743 (A291218 (n + 1)).toNat

end

end A200476.P7710354837531016836

/-! ## A200476.P15434885197176414738

`A116087(A325346(n+1)+A000607(n))`
-/

namespace A200476.P15434885197176414738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116087 (A325346 (n + 1) + A000607 n).toNat

end

end A200476.P15434885197176414738

/-! ## A200476.P12571324188987416073

`A342350(A001274(n+5))%A342336(n)`
-/

namespace A200476.P12571324188987416073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342350 (A001274 (n + 5)).toNat) (A342336 n)

end

end A200476.P12571324188987416073

/-! ## A200476.P10225556358933553900

`A056239(A130476(n+1))%A125596(n+1)`
-/

namespace A200476.P10225556358933553900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A130476 (n + 1)).toNat) (A125596 (n + 1))

end

end A200476.P10225556358933553900

/-! ## A200476.P8989812349717013650

`A049283(∑[Δ[(8*n)²]-2])%(round(n²/12)+1)`
-/

namespace A200476.P8989812349717013650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + 1)

end

end A200476.P8989812349717013650

