import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C024

/-!
# A118800: Triangle read by rows: T satisfies the matrix products: C*T*C = T^-1 and T*C*T = C^-1, where C is Pascal's triangle.

The programs for A118800, the canonical program `A118800.P15159252118811850146` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118800 has offset 0).

The definition of A118800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118800.P15159252118811850146

`A033999(A294317(n))*A200139(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118800

/-- `A033999(A294317(n))*A200139(n)` -/
def P15159252118811850146.Spec : Prop :=
  ∀ n, P15159252118811850146.a n = A118800 n

theorem P15159252118811850146.correct : P15159252118811850146.Spec := by
  intro n
  simp only [A118800]

end A118800

/-! ## A118800.P12931418708711322664

`A200139(n)/A033999(A294317(n)+2)`
-/

namespace A118800.P12931418708711322664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200139 n : ℚ) / (A033999 (A294317 n + 2).toNat : ℚ)

end

end A118800.P12931418708711322664

namespace A118800

/-- `A200139(n)/A033999(A294317(n)+2)` -/
def P12931418708711322664.Spec : Prop :=
  ∀ n, P12931418708711322664.a n = (A118800 n : ℚ)

end A118800

/-! ## A118800.P4617042434631988148

`A081277(A061579(n))*A097807(A061579(n))`
-/

namespace A118800.P4617042434631988148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A061579 n).toNat * A097807 (A061579 n).toNat

end

end A118800.P4617042434631988148

namespace A118800

/-- `A081277(A061579(n))*A097807(A061579(n))` -/
def P4617042434631988148.Spec : Prop :=
  ∀ n, P4617042434631988148.a n = A118800 n

end A118800

/-! ## A118800.P7260482065372000781

`A028297(A056537(n+1)-1)`
-/

namespace A118800.P7260482065372000781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (A056537 (n + 1) - 1).toNat

end

end A118800.P7260482065372000781

namespace A118800

/-- `A028297(A056537(n+1)-1)` -/
def P7260482065372000781.Spec : Prop :=
  ∀ n, P7260482065372000781.a n = A118800 n

end A118800

/-! ## A118800.P789765225278730787

`A028297(A057428(n)+A056537(n+1))`
-/

namespace A118800.P789765225278730787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (A057428 n + A056537 (n + 1)).toNat

end

end A118800.P789765225278730787

namespace A118800

/-- `A028297(A057428(n)+A056537(n+1))` -/
def P789765225278730787.Spec : Prop :=
  ∀ n, P789765225278730787.a n = A118800 n

end A118800

/-! ## A118800.P11198753987774192125

`A053120(A245300(n)+A114327(n))`
-/

namespace A118800.P11198753987774192125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A245300 n + A114327 n).toNat

end

end A118800.P11198753987774192125

namespace A118800

/-- `A053120(A245300(n)+A114327(n))` -/
def P11198753987774192125.Spec : Prop :=
  ∀ n, P11198753987774192125.a n = A118800 n

end A118800

/-! ## A118800.P6115261266717421578

`A039991(A245300(n)+A002262(n))`
-/

namespace A118800.P6115261266717421578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A245300 n + A002262 n).toNat

end

end A118800.P6115261266717421578

namespace A118800

/-- `A039991(A245300(n)+A002262(n))` -/
def P6115261266717421578.Spec : Prop :=
  ∀ n, P6115261266717421578.a n = A118800 n

end A118800

/-! ## A118800.P7608895739701501860

`A039991(A245300(n)+log2(A059268(n)))`
-/

namespace A118800.P7608895739701501860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (SequenceMachineLib.roundAway ((A245300 n : ℝ) + Real.logb 2 (A059268 n : ℝ))).toNat

end

end A118800.P7608895739701501860

namespace A118800

/-- `A039991(A245300(n)+log2(A059268(n)))` -/
def P7608895739701501860.Spec : Prop :=
  ∀ n, P7608895739701501860.a n = A118800 n

end A118800

/-! ## A118800.P4151534817037979893

`A039991(A003056(n)+A245300(n)-A025581(n))`
-/

namespace A118800.P4151534817037979893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A003056 n + (A245300 n - A025581 n)).toNat

end

end A118800.P4151534817037979893

namespace A118800

/-- `A039991(A003056(n)+A245300(n)-A025581(n))` -/
def P4151534817037979893.Spec : Prop :=
  ∀ n, P4151534817037979893.a n = A118800 n

end A118800

/-! ## A118800.P5432522569629999744

`A039991(A003056(n)-(A025581(n)-A245300(n)))`
-/

namespace A118800.P5432522569629999744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A003056 n - (A025581 n - A245300 n)).toNat

end

end A118800.P5432522569629999744

namespace A118800

/-- `A039991(A003056(n)-(A025581(n)-A245300(n)))` -/
def P5432522569629999744.Spec : Prop :=
  ∀ n, P5432522569629999744.a n = A118800 n

end A118800

/-! ## A118800.P13488515658130169767

`A200139(n)/A033999(A294317(n)²)`
-/

namespace A118800.P13488515658130169767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200139 n : ℚ) / (A033999 (A294317 n ^ 2).toNat : ℚ)

end

end A118800.P13488515658130169767

namespace A118800

/-- `A200139(n)/A033999(A294317(n)²)` -/
def P13488515658130169767.Spec : Prop :=
  ∀ n, P13488515658130169767.a n = (A118800 n : ℚ)

end A118800

/-! ## A118800.P2694097482797536484

`A154269(A059268(n))*A200139(n)`
-/

namespace A118800.P2694097482797536484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A059268 n).toNat * A200139 n

end

end A118800.P2694097482797536484

namespace A118800

/-- `A154269(A059268(n))*A200139(n)` -/
def P2694097482797536484.Spec : Prop :=
  ∀ n, P2694097482797536484.a n = A118800 n

end A118800

/-!
# A118801: Triangle T that satisfies the matrix products: C*[T^-1]*C = T and T*[C^-1]*T = C, where C is Pascal's triangle.

The programs for A118801, the canonical program `A118801.P6489775398404717729` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118801 has offset 0).

The definition of A118801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118801.P6489775398404717729

`A033999(A002262(n))*A112857(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118801

/-- `A033999(A002262(n))*A112857(n)` -/
def P6489775398404717729.Spec : Prop :=
  ∀ n, P6489775398404717729.a n = A118801 n

theorem P6489775398404717729.correct : P6489775398404717729.Spec := by
  intro n
  simp only [A118801]

end A118801

/-! ## A118801.P7500993219753957095

`A097807(A061579(n))*A112857(n)`
-/

namespace A118801.P7500993219753957095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A112857 n

end

end A118801.P7500993219753957095

namespace A118801

/-- `A097807(A061579(n))*A112857(n)` -/
def P7500993219753957095.Spec : Prop :=
  ∀ n, P7500993219753957095.a n = A118801 n

end A118801

/-! ## A118801.P17505505206711218278

`A033999(A294317(n))*A112857(n)`
-/

namespace A118801.P17505505206711218278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A112857 n

end

end A118801.P17505505206711218278

namespace A118801

/-- `A033999(A294317(n))*A112857(n)` -/
def P17505505206711218278.Spec : Prop :=
  ∀ n, P17505505206711218278.a n = A118801 n

end A118801

/-! ## A118801.P1348587273807206748

`A062157(A002260(n+1))*A112857(n)`
-/

namespace A118801.P1348587273807206748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A112857 n

end

end A118801.P1348587273807206748

namespace A118801

/-- `A062157(A002260(n+1))*A112857(n)` -/
def P1348587273807206748.Spec : Prop :=
  ∀ n, P1348587273807206748.a n = A118801 n

end A118801

/-! ## A118801.P16451690826799750710

`A033999(A143844(n))*A112857(n)`
-/

namespace A118801.P16451690826799750710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A143844 n).toNat * A112857 n

end

end A118801.P16451690826799750710

namespace A118801

/-- `A033999(A143844(n))*A112857(n)` -/
def P16451690826799750710.Spec : Prop :=
  ∀ n, P16451690826799750710.a n = A118801 n

end A118801

/-! ## A118801.P9745261924746521724

`A033999(A061885(n))*A112857(n)`
-/

namespace A118801.P9745261924746521724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A112857 n

end

end A118801.P9745261924746521724

namespace A118801

/-- `A033999(A061885(n))*A112857(n)` -/
def P9745261924746521724.Spec : Prop :=
  ∀ n, P9745261924746521724.a n = A118801 n

end A118801

/-! ## A118801.P3072725613528011708

`A021010(A112367(n))*A112857(n)`
-/

namespace A118801.P3072725613528011708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A112367 n).toNat * A112857 n

end

end A118801.P3072725613528011708

namespace A118801

/-- `A021010(A112367(n))*A112857(n)` -/
def P3072725613528011708.Spec : Prop :=
  ∀ n, P3072725613528011708.a n = A118801 n

end A118801

/-! ## A118801.P5819487566994964735

`A112857(n)*A165586(A059268(n))`
-/

namespace A118801.P5819487566994964735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 n * A165586 (A059268 n).toNat

end

end A118801.P5819487566994964735

namespace A118801

/-- `A112857(n)*A165586(A059268(n))` -/
def P5819487566994964735.Spec : Prop :=
  ∀ n, P5819487566994964735.a n = A118801 n

end A118801

/-! ## A118801.P15649876294421119209

`A034947(A054582(n))*A112857(n)`
-/

namespace A118801.P15649876294421119209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A054582 n).toNat * A112857 n

end

end A118801.P15649876294421119209

namespace A118801

/-- `A034947(A054582(n))*A112857(n)` -/
def P15649876294421119209.Spec : Prop :=
  ∀ n, P15649876294421119209.a n = A118801 n

end A118801

/-! ## A118801.P17253151261652747226

`A145661(n)%2*A112857(n)`
-/

namespace A118801.P17253151261652747226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145661 n) 2 * A112857 n

end

end A118801.P17253151261652747226

namespace A118801

/-- `A145661(n)%2*A112857(n)` -/
def P17253151261652747226.Spec : Prop :=
  ∀ n, P17253151261652747226.a n = A118801 n

end A118801

/-!
# A118802: Row squared sums of triangle A118801: a(n) = Sum_{k=0..n} A118801(n,k)^2.

The programs for A118802, there is no canonical definition to state claims against.
-/

/-! ## A118802.P7581812420410257625

`∑[floor(A063395(n)/2)]+1`
-/

namespace A118802.P7581812420410257625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063395 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A118802.P7581812420410257625

/-! ## A118802.P1827056931924884262

`2*n*A162326(n)-(n-1)`
-/

namespace A118802.P1827056931924884262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A162326 n) - ((n : ℤ) - 1)

end

end A118802.P1827056931924884262

/-! ## A118802.P8082943502954606386

`A001489(n)+2*n*A162326(n)+1`
-/

namespace A118802.P8082943502954606386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (2 * ((n : ℤ) * A162326 n) + 1)

end

end A118802.P8082943502954606386

/-!
# A118803: Self-convolution square-root of A118802, which is the row squared sums of triangle A118801.

The programs for A118803, there is no canonical definition to state claims against.
-/

/-! ## A118803.P17957303044129295746

`A032742(A208426(n)+A058837(n))`
-/

namespace A118803.P17957303044129295746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A208426 n + A058837 n).toNat

end

end A118803.P17957303044129295746

/-! ## A118803.P10360468342338582592

`A020915(A078531(n)-A174463(n))`
-/

namespace A118803.P10360468342338582592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A078531 n - A174463 n).toNat

end

end A118803.P10360468342338582592

/-!
# A118804: G.f.: 1 = Sum_{n>=0} a(n)*x^n / Product_{k=1..n+1} (1+k*x)^2.

The programs for A118804, there is no canonical definition to state claims against.
-/

/-! ## A118804.P17662075245071563541

`A105512(3*(n+2)^n)`
-/

namespace A118804.P17662075245071563541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (3 * (n + 2) ^ n)

end

end A118804.P17662075245071563541

/-!
# A118805: G.f.: 1 = Sum_{n>=0} a(n)*x^n*Product_{k=1..n} (1-k*x)^2.

The programs for A118805, there is no canonical definition to state claims against.
-/

/-! ## A118805.P9080980334398538271

`A313095((n-1)*a(n-1))+n` with `a(0)=1`
-/

namespace A118805.P9080980334398538271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A313095 (((n : ℤ) - 1) * a (n - 1)).toNat + (n : ℤ)

end

end A118805.P9080980334398538271

/-!
# A118807: Number of partitions of n having no parts with multiplicity 3.

The programs for A118807, there is no canonical definition to state claims against.
-/

/-! ## A118807.P9886739851080891273

`A140200(A218511(n)-floor((A204892(n+1)-1)/6))`
-/

namespace A118807.P9886739851080891273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140200 (A218511 n - ⌊(A204892 (n + 1) - 1 : ℚ) / 6⌋).toNat

end

end A118807.P9886739851080891273

/-! ## A118807.P9178726592981823325

`A261675(A000938(n+1))+A047967(n)`
-/

namespace A118807.P9178726592981823325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A000938 (n + 1)).toNat + A047967 n

end

end A118807.P9178726592981823325

/-! ## A118807.P6363201487349017787

`A035959(n)-A030308(A381085(n+1))`
-/

namespace A118807.P6363201487349017787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 n - A030308 (A381085 (n + 1)).toNat

end

end A118807.P6363201487349017787

/-! ## A118807.P8647738193839351828

`A273663(A000041(n))+A005136(3*n+2)`
-/

namespace A118807.P8647738193839351828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A000041 n).toNat + A005136 (3 * n + 2)

end

end A118807.P8647738193839351828

/-!
# A118812: 

The programs for A118812, there is no canonical definition to state claims against.
-/

/-! ## A118812.P1201569520304992792

`record[A237579(A014963(n+1))]`
-/

namespace A118812.P1201569520304992792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237579 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118812.P1201569520304992792

/-!
# A118814: Number of 'tree-like curves' with n intersection points.

The programs for A118814, there is no canonical definition to state claims against.
-/

/-! ## A118814.P13490625403848240898

`A220496(A001519(n))+n`
-/

namespace A118814.P13490625403848240898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A001519 n).toNat + (n : ℤ)

end

end A118814.P13490625403848240898

/-! ## A118814.P10399863727500739256

`A220496(A186236(n))+n`
-/

namespace A118814.P10399863727500739256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A186236 n).toNat + (n : ℤ)

end

end A118814.P10399863727500739256

/-!
# A118816: A fractal sequence based upon powers of 3.

The programs for A118816, there is no canonical definition to state claims against.
-/

/-! ## A118816.P12290335913261182010

`A123108(A322042((n+1)/3^val(n+1, 3)))`
-/

namespace A118816.P12290335913261182010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A322042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat).toNat

end

end A118816.P12290335913261182010

/-! ## A118816.P13759735350973765737

`A123108(A004523(A038502(n+1)))`
-/

namespace A118816.P13759735350973765737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004523 (A038502 (n + 1)).toNat).toNat

end

end A118816.P13759735350973765737

/-! ## A118816.P1217672449469710497

`A103221(A004273(A038502(n+1)-1))`
-/

namespace A118816.P1217672449469710497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004273 (A038502 (n + 1) - 1).toNat).toNat

end

end A118816.P1217672449469710497

/-! ## A118816.P4628134308410239421

`A103221(A004273(n%A038502(n+1)))`
-/

namespace A118816.P4628134308410239421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004273 (Int.tmod (n : ℤ) (A038502 (n + 1))).toNat).toNat

end

end A118816.P4628134308410239421

/-! ## A118816.P13722397122054874407

`gcd(A002264(A038502(n+1)), A154271(n+1))`
-/

namespace A118816.P13722397122054874407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002264 (A038502 (n + 1)).toNat) (A154271 (n + 1))

end

end A118816.P13722397122054874407

/-! ## A118816.P12408796668127550215

`A008611(A047271(A038502(n+1))%A038502(n+1))`
-/

namespace A118816.P12408796668127550215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A047271 (A038502 (n + 1)).toNat) (A038502 (n + 1))).toNat

end

end A118816.P12408796668127550215

/-! ## A118816.P6643057300788367043

`A123108(A008576(A038502(n+1))%A038502(n+1))`
-/

namespace A118816.P6643057300788367043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A008576 (A038502 (n + 1)).toNat) (A038502 (n + 1))).toNat

end

end A118816.P6643057300788367043

/-!
# A118818: Primes p for which there are more primitive roots below p/2 than above p/2.

The programs for A118818, there is no canonical definition to state claims against.
-/

/-! ## A118818.P1873314066866233286

`A106307(A008588(n+3)+n%2+n)`
-/

namespace A118818.P1873314066866233286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106307 (A008588 (n + 3) + ((n % 2 + n : ℕ) : ℤ)).toNat

end

end A118818.P1873314066866233286

/-!
# A118819: Start with 1 and repeatedly place the first digit at the end of the number and add 6.

The programs for A118819, there is no canonical definition to state claims against.
-/

/-! ## A118819.P11941369703334236044

`A004086(A004185(a(n-1)))+6` with `a(0)=1`
-/

namespace A118819.P11941369703334236044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (A004185 (a (n - 1)).toNat).toNat + 6

end

end A118819.P11941369703334236044

/-!
# A118820: Start with 1 and repeatedly place the first digit at the end of the number and add 2.

The programs for A118820, there is no canonical definition to state claims against.
-/

/-! ## A118820.P9500766899894444633

`A345110(a(n-1))+2` with `a(0)=1`
-/

namespace A118820.P9500766899894444633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 2

end

end A118820.P9500766899894444633

/-!
# A118821: 2-adic continued fraction of zero, where a(n) = 2 if n is odd, -A006519(n/2) otherwise.

The programs for A118821, the canonical program `A118821.P17852525243944256104` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118821 has offset 1).

The definition of A118821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118821.P12971856223299505231

`-(and(n+1, -n)/a(n-1))` with `a(0)=2`
-/

namespace A118821.P12971856223299505231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  -((Int.land (n + 1 : ℤ) (-(n : ℤ)) : ℚ) / a (n - 1))

end

end A118821.P12971856223299505231

namespace A118821

/-- `-(and(n+1, -n)/a(n-1))` -/
def P12971856223299505231.Spec : Prop :=
  ∀ n, P12971856223299505231.a n = (A118821 (n + 1) : ℚ)

end A118821

/-! ## A118821.P8747625198424878438

`(and(n+1, n-1)-(n+1))/a(n-1)` with `a(0)=2`
-/

namespace A118821.P8747625198424878438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (Int.land (n + 1 : ℤ) ((n : ℤ) - 1) - (n + 1 : ℤ) : ℚ) / a (n - 1)

end

end A118821.P8747625198424878438

namespace A118821

/-- `(and(n+1, n-1)-(n+1))/a(n-1)` -/
def P8747625198424878438.Spec : Prop :=
  ∀ n, P8747625198424878438.a n = (A118821 (n + 1) : ℚ)

end A118821

/-! ## A118821.P3618173245212826584

`(n-1-or(n+1, n-1))/a(n-1)` with `a(0)=2`
-/

namespace A118821.P3618173245212826584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((n : ℤ) - 1 - Int.lor (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) / a (n - 1)

end

end A118821.P3618173245212826584

namespace A118821

/-- `(n-1-or(n+1, n-1))/a(n-1)` -/
def P3618173245212826584.Spec : Prop :=
  ∀ n, P3618173245212826584.a n = (A118821 (n + 1) : ℚ)

end A118821

/-! ## A118821.P3824495403663039731

`-A118824(n+1)`
-/

namespace A118821.P3824495403663039731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118824 (n + 1)

end

end A118821.P3824495403663039731

namespace A118821

/-- `-A118824(n+1)` -/
def P3824495403663039731.Spec : Prop :=
  ∀ n, P3824495403663039731.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P16329869946560041080

`(-1)^n*A014682(2^val(n+1, 2))`
-/

namespace A118821.P16329869946560041080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014682 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A118821.P16329869946560041080

namespace A118821

/-- `(-1)^n*A014682(2^val(n+1, 2))` -/
def P16329869946560041080.Spec : Prop :=
  ∀ n, P16329869946560041080.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P9719659309121608609

`A270439(A006519(n+1))`
-/

namespace A118821.P9719659309121608609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270439 (A006519 (n + 1)).toNat

end

end A118821.P9719659309121608609

namespace A118821

/-- `A270439(A006519(n+1))` -/
def P9719659309121608609.Spec : Prop :=
  ∀ n, P9719659309121608609.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P17852525243944256104

`1-A001057(A135481(n)+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118821

/-- `1-A001057(A135481(n)+2)` -/
def P17852525243944256104.Spec : Prop :=
  ∀ n, P17852525243944256104.a n = A118821 (n + 1)

theorem P17852525243944256104.correct : P17852525243944256104.Spec := by
  intro n
  simp only [A118821, Nat.add_sub_cancel]

end A118821

/-! ## A118821.P12773703651798327597

`A176040(n)-A330569(n+1)`
-/

namespace A118821.P12773703651798327597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n - A330569 (n + 1)

end

end A118821.P12773703651798327597

namespace A118821

/-- `A176040(n)-A330569(n+1)` -/
def P12773703651798327597.Spec : Prop :=
  ∀ n, P12773703651798327597.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P4398598597154025462

`2-A131732(A006519(n+1)+2)`
-/

namespace A118821.P4398598597154025462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131732 (A006519 (n + 1) + 2).toNat

end

end A118821.P4398598597154025462

namespace A118821

/-- `2-A131732(A006519(n+1)+2)` -/
def P4398598597154025462.Spec : Prop :=
  ∀ n, P4398598597154025462.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P8283675269014555899

`A160467(n+1)+A118827(n+1)`
-/

namespace A118821.P8283675269014555899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) + A118827 (n + 1)

end

end A118821.P8283675269014555899

namespace A118821

/-- `A160467(n+1)+A118827(n+1)` -/
def P8283675269014555899.Spec : Prop :=
  ∀ n, P8283675269014555899.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P18364347168681229732

`A160467(n+1)-A118830(n+1)`
-/

namespace A118821.P18364347168681229732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) - A118830 (n + 1)

end

end A118821.P18364347168681229732

namespace A118821

/-- `A160467(n+1)-A118830(n+1)` -/
def P18364347168681229732.Spec : Prop :=
  ∀ n, P18364347168681229732.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P5599119798246278319

`A160467(n+1)*A168361(n+1)`
-/

namespace A118821.P5599119798246278319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A168361 (n + 1)

end

end A118821.P5599119798246278319

namespace A118821

/-- `A160467(n+1)*A168361(n+1)` -/
def P5599119798246278319.Spec : Prop :=
  ∀ n, P5599119798246278319.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P1822517754245267927

`A353495(2*n)-A118824(n+1)`
-/

namespace A118821.P1822517754245267927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (2 * n) - A118824 (n + 1)

end

end A118821.P1822517754245267927

namespace A118821

/-- `A353495(2*n)-A118824(n+1)` -/
def P1822517754245267927.Spec : Prop :=
  ∀ n, P1822517754245267927.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P2914637984839436220

`1-(A118824(n+1)+A033999(n)²)`
-/

namespace A118821.P2914637984839436220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A118824 (n + 1) + A033999 n ^ 2)

end

end A118821.P2914637984839436220

namespace A118821

/-- `1-(A118824(n+1)+A033999(n)²)` -/
def P2914637984839436220.Spec : Prop :=
  ∀ n, P2914637984839436220.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P6246347797279340167

`A118824(n+1)*A118830(2*n+1)`
-/

namespace A118821.P6246347797279340167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (n + 1) * A118830 (2 * n + 1)

end

end A118821.P6246347797279340167

namespace A118821

/-- `A118824(n+1)*A118830(2*n+1)` -/
def P6246347797279340167.Spec : Prop :=
  ∀ n, P6246347797279340167.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P9875109373240957810

`(C(5, A010690(n))-A006519(n+1))/2`
-/

namespace A118821.P9875109373240957810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 5 (A010690 n).toNat : ℤ) - A006519 (n + 1) : ℚ) / 2

end

end A118821.P9875109373240957810

namespace A118821

/-- `(C(5, A010690(n))-A006519(n+1))/2` -/
def P9875109373240957810.Spec : Prop :=
  ∀ n, P9875109373240957810.a n = (A118821 (n + 1) : ℚ)

end A118821

/-! ## A118821.P269876770391265419

`A228371(A006519(n+1))+A118827(n+1)`
-/

namespace A118821.P269876770391265419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (A006519 (n + 1)).toNat + A118827 (n + 1)

end

end A118821.P269876770391265419

namespace A118821

/-- `A228371(A006519(n+1))+A118827(n+1)` -/
def P269876770391265419.Spec : Prop :=
  ∀ n, P269876770391265419.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P7287589394950247289

`A000010(A006519(n+1))-A118830(n+1)`
-/

namespace A118821.P7287589394950247289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006519 (n + 1)).toNat - A118830 (n + 1)

end

end A118821.P7287589394950247289

namespace A118821

/-- `A000010(A006519(n+1))-A118830(n+1)` -/
def P7287589394950247289.Spec : Prop :=
  ∀ n, P7287589394950247289.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P17508709933550074953

`(A118824(A099375(n))+1)*A118824(n+1)`
-/

namespace A118821.P17508709933550074953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118824 (A099375 n).toNat + 1) * A118824 (n + 1)

end

end A118821.P17508709933550074953

namespace A118821

/-- `(A118824(A099375(n))+1)*A118824(n+1)` -/
def P17508709933550074953.Spec : Prop :=
  ∀ n, P17508709933550074953.a n = A118821 (n + 1)

end A118821

/-! ## A118821.P12000239421677674417

`A118824(n+1)/A118830(A038712(n+1))`
-/

namespace A118821.P12000239421677674417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118824 (n + 1) : ℚ) / (A118830 (A038712 (n + 1)).toNat : ℚ)

end

end A118821.P12000239421677674417

namespace A118821

/-- `A118824(n+1)/A118830(A038712(n+1))` -/
def P12000239421677674417.Spec : Prop :=
  ∀ n, P12000239421677674417.a n = (A118821 (n + 1) : ℚ)

end A118821

/-!
# A118822: Numerators of the convergents of the 2-adic continued fraction of zero given by A118821.

The programs for A118822, the canonical program `A118822.P17583588508757128105` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118822 has offset 1).

The definition of A118822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118822.P17583588508757128105

`sqrt((n+2)²%8)*(-1)^floor((n+3)/4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118822

/-- `sqrt((n+2)²%8)*(-1)^floor((n+3)/4)` -/
def P17583588508757128105.Spec : Prop :=
  ∀ n, P17583588508757128105.a n = (A118822 (n + 1) : ℝ)

end A118822

/-!
# A118823: Denominators of the convergents of the 2-adic continued fraction of zero given by A118821.

The programs for A118823, there is no canonical definition to state claims against.
-/

/-! ## A118823.P3382241026076623239

`(-1)^n*A118826(n+1)`
-/

namespace A118823.P3382241026076623239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A118826 (n + 1)

end

end A118823.P3382241026076623239

/-! ## A118823.P13651066618377864223

`A118826(n+1)/A033999(n)`
-/

namespace A118823.P13651066618377864223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A118823.P13651066618377864223

/-! ## A118823.P6337421558203078340

`A118826(n+1)/A087960(n²)`
-/

namespace A118823.P6337421558203078340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A118823.P6337421558203078340

/-! ## A118823.P5791907869694862362

`A118826(n+1)/A094267(n²)`
-/

namespace A118823.P5791907869694862362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / (A094267 (n ^ 2) : ℚ)

end

end A118823.P5791907869694862362

/-! ## A118823.P8573942493867013796

`A118826(n+1)/∑[A280560(n)]`
-/

namespace A118823.P8573942493867013796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A118823.P8573942493867013796

/-! ## A118823.P2000942155058784319

`A118826(n+1)*A165326(n+1)`
-/

namespace A118823.P2000942155058784319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118826 (n + 1) * A165326 (n + 1)

end

end A118823.P2000942155058784319

/-! ## A118823.P12978088333082707487

`A118826(n+1)/(2-A010684(n))`
-/

namespace A118823.P12978088333082707487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / (2 - A010684 n : ℚ)

end

end A118823.P12978088333082707487

/-! ## A118823.P12965366810568933223

`A118826(n+1)/A056594(2*n)`
-/

namespace A118823.P12965366810568933223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / (A056594 (2 * n) : ℚ)

end

end A118823.P12965366810568933223

/-! ## A118823.P16932971269264252321

`A118826(n+1)/A008683(A303762(n))`
-/

namespace A118823.P16932971269264252321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118826 (n + 1) : ℚ) / (A008683 (A303762 n).toNat : ℚ)

end

end A118823.P16932971269264252321

/-! ## A118823.P17557313744158906585

`A006519(n+1)*A118826(n+1)/A118827(n+1)`
-/

namespace A118823.P17557313744158906585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) * A118826 (n + 1) : ℚ) / (A118827 (n + 1) : ℚ)

end

end A118823.P17557313744158906585

/-!
# A118824: 2-adic continued fraction of zero, where a(n) = -2 if n is odd, A006519(n/2) otherwise.

The programs for A118824, the canonical program `A118824.P16499052940195568067` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118824 has offset 1).

The definition of A118824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118824.P16499052940195568067

`-A118821(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A118824

/-- `-A118821(n+1)` -/
def P16499052940195568067.Spec : Prop :=
  ∀ n, P16499052940195568067.a n = A118824 (n + 1)

theorem P16499052940195568067.correct : P16499052940195568067.Spec := by
  intro n
  simp only [A118824, Nat.add_sub_cancel]

end A118824

/-! ## A118824.P16906545271726438558

`xor(-A059841(n), ceil(xor(n, n+1)/4))`
-/

namespace A118824.P16906545271726438558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A059841 n) ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉

end

end A118824.P16906545271726438558

namespace A118824

/-- `xor(-A059841(n), ceil(xor(n, n+1)/4))` -/
def P16906545271726438558.Spec : Prop :=
  ∀ n, P16906545271726438558.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P5977519066566224686

`A084964(A006519(n+1))-2`
-/

namespace A118824.P5977519066566224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A006519 (n + 1)).toNat - 2

end

end A118824.P5977519066566224686

namespace A118824

/-- `A084964(A006519(n+1))-2` -/
def P5977519066566224686.Spec : Prop :=
  ∀ n, P5977519066566224686.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P8549283737224597398

`A001057(A135481(n)+2)-1`
-/

namespace A118824.P8549283737224597398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A135481 n + 2).toNat - 1

end

end A118824.P8549283737224597398

namespace A118824

/-- `A001057(A135481(n)+2)-1` -/
def P8549283737224597398.Spec : Prop :=
  ∀ n, P8549283737224597398.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P7042739637351468872

`A330569(n+1)-A176040(n)`
-/

namespace A118824.P7042739637351468872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330569 (n + 1) - A176040 n

end

end A118824.P7042739637351468872

namespace A118824

/-- `A330569(n+1)-A176040(n)` -/
def P7042739637351468872.Spec : Prop :=
  ∀ n, P7042739637351468872.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P7189951289128611207

`A001057(A006519(n+1)+1)-1`
-/

namespace A118824.P7189951289128611207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A006519 (n + 1) + 1).toNat - 1

end

end A118824.P7189951289128611207

namespace A118824

/-- `A001057(A006519(n+1)+1)-1` -/
def P7189951289128611207.Spec : Prop :=
  ∀ n, P7189951289128611207.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P10739591958166407473

`A131732(A006519(n+1)+2)-2`
-/

namespace A118824.P10739591958166407473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A006519 (n + 1) + 2).toNat - 2

end

end A118824.P10739591958166407473

namespace A118824

/-- `A131732(A006519(n+1)+2)-2` -/
def P10739591958166407473.Spec : Prop :=
  ∀ n, P10739591958166407473.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P8348262364936836355

`A118830(n+1)-A160467(n+1)`
-/

namespace A118824.P8348262364936836355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (n + 1) - A160467 (n + 1)

end

end A118824.P8348262364936836355

namespace A118824

/-- `A118830(n+1)-A160467(n+1)` -/
def P8348262364936836355.Spec : Prop :=
  ∀ n, P8348262364936836355.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P14469768241187128205

`A160467(n+1)-(A168361(n+1)+1)`
-/

namespace A118824.P14469768241187128205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) - (A168361 (n + 1) + 1)

end

end A118824.P14469768241187128205

namespace A118824

/-- `A160467(n+1)-(A168361(n+1)+1)` -/
def P14469768241187128205.Spec : Prop :=
  ∀ n, P14469768241187128205.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P9967967589724026788

`A135416(2*(n+1))-A118821(n+1)`
-/

namespace A118824.P9967967589724026788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * (n + 1)) - A118821 (n + 1)

end

end A118824.P9967967589724026788

namespace A118824

/-- `A135416(2*(n+1))-A118821(n+1)` -/
def P9967967589724026788.Spec : Prop :=
  ∀ n, P9967967589724026788.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P16763143525952801026

`A118821(n+1)*A118830(2*n+1)`
-/

namespace A118824.P16763143525952801026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118821 (n + 1) * A118830 (2 * n + 1)

end

end A118824.P16763143525952801026

namespace A118824

/-- `A118821(n+1)*A118830(2*n+1)` -/
def P16763143525952801026.Spec : Prop :=
  ∀ n, P16763143525952801026.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P2316942717459210131

`(A006519(n+1)-C(5, A010690(n)))/2`
-/

namespace A118824.P2316942717459210131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) - (Nat.choose 5 (A010690 n).toNat : ℤ) : ℚ) / 2

end

end A118824.P2316942717459210131

namespace A118824

/-- `(A006519(n+1)-C(5, A010690(n)))/2` -/
def P2316942717459210131.Spec : Prop :=
  ∀ n, P2316942717459210131.a n = (A118824 (n + 1) : ℚ)

end A118824

/-! ## A118824.P6610840499679705731

`A118830(n+1)-A000010(A006519(n+1))`
-/

namespace A118824.P6610840499679705731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (n + 1) - A000010 (A006519 (n + 1)).toNat

end

end A118824.P6610840499679705731

namespace A118824

/-- `A118830(n+1)-A000010(A006519(n+1))` -/
def P6610840499679705731.Spec : Prop :=
  ∀ n, P6610840499679705731.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P32864160797106503

`2-(A118821(n+1)+A118821(A005408(n)))`
-/

namespace A118824.P32864160797106503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A118821 (n + 1) + A118821 (A005408 n).toNat)

end

end A118824.P32864160797106503

namespace A118824

/-- `2-(A118821(n+1)+A118821(A005408(n)))` -/
def P32864160797106503.Spec : Prop :=
  ∀ n, P32864160797106503.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P6262610619984065485

`A118821(n+1)/A118830(A038712(n+1))`
-/

namespace A118824.P6262610619984065485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118821 (n + 1) : ℚ) / (A118830 (A038712 (n + 1)).toNat : ℚ)

end

end A118824.P6262610619984065485

namespace A118824

/-- `A118821(n+1)/A118830(A038712(n+1))` -/
def P6262610619984065485.Spec : Prop :=
  ∀ n, P6262610619984065485.a n = (A118824 (n + 1) : ℚ)

end A118824

/-! ## A118824.P17210271971818177867

`A118821(n+1)/A118830(A118360(n+1))`
-/

namespace A118824.P17210271971818177867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118821 (n + 1) : ℚ) / (A118830 (A118360 (n + 1)).toNat : ℚ)

end

end A118824.P17210271971818177867

namespace A118824

/-- `A118821(n+1)/A118830(A118360(n+1))` -/
def P17210271971818177867.Spec : Prop :=
  ∀ n, P17210271971818177867.a n = (A118824 (n + 1) : ℚ)

end A118824

/-! ## A118824.P14474446043292812454

`A118821(2*A005408(n))*A118821(n+1)`
-/

namespace A118824.P14474446043292812454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118821 (2 * A005408 n).toNat * A118821 (n + 1)

end

end A118824.P14474446043292812454

namespace A118824

/-- `A118821(2*A005408(n))*A118821(n+1)` -/
def P14474446043292812454.Spec : Prop :=
  ∀ n, P14474446043292812454.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P5545769845296979073

`A056594(A056594(n)+n)-A118821(n+1)`
-/

namespace A118824.P5545769845296979073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A056594 n + (n : ℤ)).toNat - A118821 (n + 1)

end

end A118824.P5545769845296979073

namespace A118824

/-- `A056594(A056594(n)+n)-A118821(n+1)` -/
def P5545769845296979073.Spec : Prop :=
  ∀ n, P5545769845296979073.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P18171843180833967269

`A118821(2*A038712(n+1))*A118821(n+1)`
-/

namespace A118824.P18171843180833967269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118821 (2 * A038712 (n + 1)).toNat * A118821 (n + 1)

end

end A118824.P18171843180833967269

namespace A118824

/-- `A118821(2*A038712(n+1))*A118821(n+1)` -/
def P18171843180833967269.Spec : Prop :=
  ∀ n, P18171843180833967269.a n = A118824 (n + 1)

end A118824

/-! ## A118824.P13987708411275333523

`A118821(2*A118360(n+1))*A118821(n+1)`
-/

namespace A118824.P13987708411275333523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118821 (2 * A118360 (n + 1)).toNat * A118821 (n + 1)

end

end A118824.P13987708411275333523

namespace A118824

/-- `A118821(2*A118360(n+1))*A118821(n+1)` -/
def P13987708411275333523.Spec : Prop :=
  ∀ n, P13987708411275333523.a n = A118824 (n + 1)

end A118824

/-!
# A118825: Numerators of the convergents of the 2-adic continued fraction of zero given by A118824.

The programs for A118825, the canonical program `A118825.P16155977565301519322` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118825 has offset 1).

The definition of A118825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118825.P16155977565301519322

`sqrt((n+2)²%8)*(-1)^floor((n+4)/4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118825

/-- `sqrt((n+2)²%8)*(-1)^floor((n+4)/4)` -/
def P16155977565301519322.Spec : Prop :=
  ∀ n, P16155977565301519322.a n = (A118825 (n + 1) : ℝ)

end A118825

/-!
# A118826: Denominators of the convergents of the 2-adic continued fraction of zero given by A118824.

The programs for A118826, there is no canonical definition to state claims against.
-/

/-! ## A118826.P2451944332314610799

`(-1)^n*A118823(n+1)`
-/

namespace A118826.P2451944332314610799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A118823 (n + 1)

end

end A118826.P2451944332314610799

/-! ## A118826.P7247536979587530113

`A118823(n+1)/A033999(n)`
-/

namespace A118826.P7247536979587530113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A118826.P7247536979587530113

/-! ## A118826.P8105862072179471584

`A118823(n+1)/∑[A280560(n)]`
-/

namespace A118826.P8105862072179471584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A118826.P8105862072179471584

/-! ## A118826.P10929480793759990523

`A118823(n+1)/ratio[A057077(n)]`
-/

namespace A118826.P10929480793759990523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A118826.P10929480793759990523

/-! ## A118826.P17969319075259577418

`A118823(n+1)/A165326(n+1)`
-/

namespace A118826.P17969319075259577418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / (A165326 (n + 1) : ℚ)

end

end A118826.P17969319075259577418

/-! ## A118826.P6855035094383405720

`A118823(n+1)/(2-A010684(n))`
-/

namespace A118826.P6855035094383405720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / (2 - A010684 n : ℚ)

end

end A118826.P6855035094383405720

/-! ## A118826.P1753165869906426399

`A118823(n+1)/A057077(2*n)`
-/

namespace A118826.P1753165869906426399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A118826.P1753165869906426399

/-! ## A118826.P4708663213468222477

`A118823(n+1)/A008683(A303762(n))`
-/

namespace A118826.P4708663213468222477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118823 (n + 1) : ℚ) / (A008683 (A303762 n).toNat : ℚ)

end

end A118826.P4708663213468222477

/-! ## A118826.P16536250749776809816

`A006519(n+1)*A118823(n+1)/A118827(n+1)`
-/

namespace A118826.P16536250749776809816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) * A118823 (n + 1) : ℚ) / (A118827 (n + 1) : ℚ)

end

end A118826.P16536250749776809816

/-! ## A118826.P7922990230852434119

`A118832(n+1)/A000034(n)`
-/

namespace A118826.P7922990230852434119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118832 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A118826.P7922990230852434119

/-!
# A118827: 2-adic continued fraction of zero, where a(n) = 1 if n is odd, otherwise -2*A006519(n/2).

The programs for A118827, the canonical program `A118827.P5307784149571753104` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118827 has offset 1).

The definition of A118827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118827.P5307784149571753104

`A165326(n+1)*A006519(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118827

/-- `A165326(n+1)*A006519(n+1)` -/
def P5307784149571753104.Spec : Prop :=
  ∀ n, P5307784149571753104.a n = A118827 (n + 1)

theorem P5307784149571753104.correct : P5307784149571753104.Spec := by
  intro n
  simp only [A118827, Nat.add_sub_cancel]

end A118827

/-! ## A118827.P8649860512779553497

`xor(1, and(n, n+1)-n)`
-/

namespace A118827.P8649860512779553497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.land n (n + 1) : ℤ) - (n : ℤ))

end

end A118827.P8649860512779553497

namespace A118827

/-- `xor(1, and(n, n+1)-n)` -/
def P8649860512779553497.Spec : Prop :=
  ∀ n, P8649860512779553497.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P1547103014258236749

`xor(1, -and(n, -(n+2)))`
-/

namespace A118827.P1547103014258236749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-Int.land (n : ℤ) (-(n + 2 : ℤ)))

end

end A118827.P1547103014258236749

namespace A118827

/-- `xor(1, -and(n, -(n+2)))` -/
def P1547103014258236749.Spec : Prop :=
  ∀ n, P1547103014258236749.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P8418341197420383241

`xor(1, or(n, -(n+2))+2)`
-/

namespace A118827.P8418341197420383241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.lor (n : ℤ) (-(n + 2 : ℤ)) + 2)

end

end A118827.P8418341197420383241

namespace A118827

/-- `xor(1, or(n, -(n+2))+2)` -/
def P8418341197420383241.Spec : Prop :=
  ∀ n, P8418341197420383241.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P14817544050213226720

`(-1)^n-and(n, -(n+2))`
-/

namespace A118827.P14817544050213226720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A118827.P14817544050213226720

namespace A118827

/-- `(-1)^n-and(n, -(n+2))` -/
def P14817544050213226720.Spec : Prop :=
  ∀ n, P14817544050213226720.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P3262796443545533265

`xor(1, n+1-or(n, n+1))`
-/

namespace A118827.P3262796443545533265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n + 1 : ℤ) - (Nat.lor n (n + 1) : ℤ))

end

end A118827.P3262796443545533265

namespace A118827

/-- `xor(1, n+1-or(n, n+1))` -/
def P3262796443545533265.Spec : Prop :=
  ∀ n, P3262796443545533265.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P1737823112790608594

`or(n+1, -(n+1))^gcd(2, n)`
-/

namespace A118827.P1737823112790608594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ Nat.gcd 2 n

end

end A118827.P1737823112790608594

namespace A118827

/-- `or(n+1, -(n+1))^gcd(2, n)` -/
def P1737823112790608594.Spec : Prop :=
  ∀ n, P1737823112790608594.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P16218060599395969192

`or(n+1, -(n+1))^and(1, n)`
-/

namespace A118827.P16218060599395969192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ Nat.land 1 n

end

end A118827.P16218060599395969192

namespace A118827

/-- `or(n+1, -(n+1))^and(1, n)` -/
def P16218060599395969192.Spec : Prop :=
  ∀ n, P16218060599395969192.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P15222764934296548550

`or(n+1, -n)-a(n-1)` with `a(0)=1`
-/

namespace A118827.P15222764934296548550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n + 1 : ℤ) (-(n : ℤ)) - a (n - 1)

end

end A118827.P15222764934296548550

namespace A118827

/-- `or(n+1, -n)-a(n-1)` -/
def P15222764934296548550.Spec : Prop :=
  ∀ n, P15222764934296548550.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P15089777760604410245

`(-and(n+1, -(n+1)))^(n%2)`
-/

namespace A118827.P15089777760604410245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) ^ (n % 2)

end

end A118827.P15089777760604410245

namespace A118827

/-- `(-and(n+1, -(n+1)))^(n%2)` -/
def P15089777760604410245.Spec : Prop :=
  ∀ n, P15089777760604410245.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P12811008605179994636

`(n-or(n, n+1))^a(n-1)` with `a(0)=1`
-/

namespace A118827.P12811008605179994636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (Nat.lor n (n + 1) : ℤ) : ℝ) ^ (a (n - 1))

end

end A118827.P12811008605179994636

namespace A118827

/-- `(n-or(n, n+1))^a(n-1)` -/
def P12811008605179994636.Spec : Prop :=
  ∀ n, P12811008605179994636.a n = (A118827 (n + 1) : ℝ)

end A118827

/-! ## A118827.P14005090899390361274

`-(and(n+1, -n)/a(n-1))` with `a(0)=1`
-/

namespace A118827.P14005090899390361274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  -((Int.land (n + 1 : ℤ) (-(n : ℤ)) : ℚ) / a (n - 1))

end

end A118827.P14005090899390361274

namespace A118827

/-- `-(and(n+1, -n)/a(n-1))` -/
def P14005090899390361274.Spec : Prop :=
  ∀ n, P14005090899390361274.a n = (A118827 (n + 1) : ℚ)

end A118827

/-! ## A118827.P4410549722330349893

`and(n, n+1)-(2*and(1, n)+n-1)`
-/

namespace A118827.P4410549722330349893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℤ) - ((2 * Nat.land 1 n : ℤ) + ((n : ℤ) - 1))

end

end A118827.P4410549722330349893

namespace A118827

/-- `and(n, n+1)-(2*and(1, n)+n-1)` -/
def P4410549722330349893.Spec : Prop :=
  ∀ n, P4410549722330349893.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P91450766246615301

`and(n+1, n-1)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A118827.P91450766246615301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 1) - (a (n - 1) + (n : ℤ))

end

end A118827.P91450766246615301

namespace A118827

/-- `and(n+1, n-1)-(a(n-1)+n)` -/
def P91450766246615301.Spec : Prop :=
  ∀ n, P91450766246615301.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P6502565310558146284

`n-(a(n-1)+or(n+1, n-1))` with `a(0)=1`
-/

namespace A118827.P6502565310558146284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (a (n - 1) + Int.lor (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A118827.P6502565310558146284

namespace A118827

/-- `n-(a(n-1)+or(n+1, n-1))` -/
def P6502565310558146284.Spec : Prop :=
  ∀ n, P6502565310558146284.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P5567126407578373430

`-A118830(n+1)`
-/

namespace A118827.P5567126407578373430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118830 (n + 1)

end

end A118827.P5567126407578373430

namespace A118827

/-- `-A118830(n+1)` -/
def P5567126407578373430.Spec : Prop :=
  ∀ n, P5567126407578373430.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P4136611987356401809

`xor(1, 1-A006519(n+1))`
-/

namespace A118827.P4136611987356401809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A006519 (n + 1))

end

end A118827.P4136611987356401809

namespace A118827

/-- `xor(1, 1-A006519(n+1))` -/
def P4136611987356401809.Spec : Prop :=
  ∀ n, P4136611987356401809.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P14133396039781701356

`xor(1, A129760(n+1)-n)`
-/

namespace A118827.P14133396039781701356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A129760 (n + 1) - (n : ℤ))

end

end A118827.P14133396039781701356

namespace A118827

/-- `xor(1, A129760(n+1)-n)` -/
def P14133396039781701356.Spec : Prop :=
  ∀ n, P14133396039781701356.a n = A118827 (n + 1)

end A118827

/-! ## A118827.P4803466403077127688

`2^A007814(n+1)*(-1)^n`
-/

namespace A118827.P4803466403077127688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * ((-1) ^ n : ℚ)

end

end A118827.P4803466403077127688

namespace A118827

/-- `2^A007814(n+1)*(-1)^n` -/
def P4803466403077127688.Spec : Prop :=
  ∀ n, P4803466403077127688.a n = (A118827 (n + 1) : ℚ)

end A118827

/-! ## A118827.P7065455336768394160

`A110332(A135481(n))`
-/

namespace A118827.P7065455336768394160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110332 (A135481 n).toNat

end

end A118827.P7065455336768394160

namespace A118827

/-- `A110332(A135481(n))` -/
def P7065455336768394160.Spec : Prop :=
  ∀ n, P7065455336768394160.a n = A118827 (n + 1)

end A118827

/-!
# A118828: Numerators of the convergents of the 2-adic continued fraction of zero given by A118827.

The programs for A118828, the canonical program `A118828.P1647495535249448866` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118828 has offset 1).

The definition of A118828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118828.P1647495535249448866

`-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118828

/-- `-a(n-4)` -/
def P1647495535249448866.Spec : Prop :=
  ∀ n, P1647495535249448866.a n = A118828 (n + 1)

theorem P1647495535249448866.correct : P1647495535249448866.Spec := by
  intro n
  simp only [A118828, Nat.add_sub_cancel]

end A118828

/-!
# A118829: Denominators of the convergents of the 2-adic continued fraction of zero given by A118827.

The programs for A118829, there is no canonical definition to state claims against.
-/

/-! ## A118829.P16191703273836006967

`(-1)^n*A118832(n+1)`
-/

namespace A118829.P16191703273836006967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A118832 (n + 1)

end

end A118829.P16191703273836006967

/-! ## A118829.P17504549858258341028

`(n%2+1)*A118823(n+1)`
-/

namespace A118829.P17504549858258341028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A118823 (n + 1)

end

end A118829.P17504549858258341028

/-! ## A118829.P10087170110954436270

`A000034(n)*A118823(n+1)`
-/

namespace A118829.P10087170110954436270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A118823 (n + 1)

end

end A118829.P10087170110954436270

/-! ## A118829.P7298410345919538680

`A118832(n+1)/A033999(n)`
-/

namespace A118829.P7298410345919538680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118832 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A118829.P7298410345919538680

/-! ## A118829.P7339027105923016055

`∑[A165326(n)]*A118823(n+1)`
-/

namespace A118829.P7339027105923016055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A118823 (n + 1)

end

end A118829.P7339027105923016055

/-! ## A118829.P5810846025617514112

`(A000035(n)+1)*A118823(n+1)`
-/

namespace A118829.P5810846025617514112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A118823 (n + 1)

end

end A118829.P5810846025617514112

/-! ## A118829.P8580043109029055577

`A118826(n+1)*A327767(n+1)`
-/

namespace A118829.P8580043109029055577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118826 (n + 1) * A327767 (n + 1)

end

end A118829.P8580043109029055577

/-! ## A118829.P16022502842872120784

`(2-A010685(n))*A118826(n+1)`
-/

namespace A118829.P16022502842872120784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010685 n) * A118826 (n + 1)

end

end A118829.P16022502842872120784

/-! ## A118829.P8063745387946352918

`(A010702(n)-2)*A118823(n+1)`
-/

namespace A118829.P8063745387946352918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010702 n - 2) * A118823 (n + 1)

end

end A118829.P8063745387946352918

/-! ## A118829.P11399246072853455763

`gcd(2, A020639(n+1))*A118823(n+1)`
-/

namespace A118829.P11399246072853455763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A020639 (n + 1)) : ℤ) * A118823 (n + 1)

end

end A118829.P11399246072853455763

/-!
# A118830: 2-adic continued fraction of zero, where a(n) = -1 if n is odd, 2*A006519(n/2) otherwise.

The programs for A118830, the canonical program `A118830.P13117744782532700527` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118830 has offset 1).

The definition of A118830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118830.P13117744782532700527

`-xor(1, and(n, n+1)-n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118830

/-- `-xor(1, and(n, n+1)-n)` -/
def P13117744782532700527.Spec : Prop :=
  ∀ n, P13117744782532700527.a n = A118830 (n + 1)

theorem P13117744782532700527.correct : P13117744782532700527.Spec := by
  intro n
  simp only [A118830, Nat.add_sub_cancel]

end A118830

/-! ## A118830.P15131949817328326573

`xor(n, -2)+or(n, n+1)`
-/

namespace A118830.P15131949817328326573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) + (Nat.lor n (n + 1) : ℤ)

end

end A118830.P15131949817328326573

namespace A118830

/-- `xor(n, -2)+or(n, n+1)` -/
def P15131949817328326573.Spec : Prop :=
  ∀ n, P15131949817328326573.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P10643193641498018151

`-xor(1, -and(n, -(n+2)))`
-/

namespace A118830.P10643193641498018151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-Int.land (n : ℤ) (-(n + 2 : ℤ)))

end

end A118830.P10643193641498018151

namespace A118830

/-- `-xor(1, -and(n, -(n+2)))` -/
def P10643193641498018151.Spec : Prop :=
  ∀ n, P10643193641498018151.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P14702891952940954288

`and(n, -(n+2))-(-1)^n`
-/

namespace A118830.P14702891952940954288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) - (-1) ^ n

end

end A118830.P14702891952940954288

namespace A118830

/-- `and(n, -(n+2))-(-1)^n` -/
def P14702891952940954288.Spec : Prop :=
  ∀ n, P14702891952940954288.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P13858037210155081803

`xor(1, 2^val(n+1, 2))-1`
-/

namespace A118830.P13858037210155081803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℤ) - 1

end

end A118830.P13858037210155081803

namespace A118830

/-- `xor(1, 2^val(n+1, 2))-1` -/
def P13858037210155081803.Spec : Prop :=
  ∀ n, P13858037210155081803.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P17821699815173600158

`or(n, n+1)-(xor(1, n)+1)`
-/

namespace A118830.P17821699815173600158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (Nat.xor 1 n + 1 : ℤ)

end

end A118830.P17821699815173600158

namespace A118830

/-- `or(n, n+1)-(xor(1, n)+1)` -/
def P17821699815173600158.Spec : Prop :=
  ∀ n, P17821699815173600158.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P18397533435463433350

`or(1-gcd(2, n), and(n+1, -(n+1)))`
-/

namespace A118830.P18397533435463433350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (Nat.gcd 2 n : ℤ)) (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A118830.P18397533435463433350

namespace A118830

/-- `or(1-gcd(2, n), and(n+1, -(n+1)))` -/
def P18397533435463433350.Spec : Prop :=
  ∀ n, P18397533435463433350.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P5860119228428194059

`2*and(1, n)+n-1-and(n, n+1)`
-/

namespace A118830.P5860119228428194059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) + ((n : ℤ) - 1 - (Nat.land n (n + 1) : ℤ))

end

end A118830.P5860119228428194059

namespace A118830

/-- `2*and(1, n)+n-1-and(n, n+1)` -/
def P5860119228428194059.Spec : Prop :=
  ∀ n, P5860119228428194059.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P10215598639606414019

`-A118827(n+1)`
-/

namespace A118830.P10215598639606414019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118827 (n + 1)

end

end A118830.P10215598639606414019

namespace A118830

/-- `-A118827(n+1)` -/
def P10215598639606414019.Spec : Prop :=
  ∀ n, P10215598639606414019.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P2514700275053639458

`A171449(val(n+1, 2))`
-/

namespace A118830.P2514700275053639458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 (SequenceMachineLib.valuation (n + 1) 2)

end

end A118830.P2514700275053639458

namespace A118830

/-- `A171449(val(n+1, 2))` -/
def P2514700275053639458.Spec : Prop :=
  ∀ n, P2514700275053639458.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P9194298683747702002

`xor(1, A006519(n+1))-1`
-/

namespace A118830.P9194298683747702002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006519 (n + 1)) - 1

end

end A118830.P9194298683747702002

namespace A118830

/-- `xor(1, A006519(n+1))-1` -/
def P9194298683747702002.Spec : Prop :=
  ∀ n, P9194298683747702002.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P2594061119815156359

`A004442(and(n+1, -(n+1)))-1`
-/

namespace A118830.P2594061119815156359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat - 1

end

end A118830.P2594061119815156359

namespace A118830

/-- `A004442(and(n+1, -(n+1)))-1` -/
def P2594061119815156359.Spec : Prop :=
  ∀ n, P2594061119815156359.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P16768795284700435946

`2^A007814(n+1)*(-1)^(n+1)`
-/

namespace A118830.P16768795284700435946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * ((-1) ^ (n + 1) : ℚ)

end

end A118830.P16768795284700435946

namespace A118830

/-- `2^A007814(n+1)*(-1)^(n+1)` -/
def P16768795284700435946.Spec : Prop :=
  ∀ n, P16768795284700435946.a n = (A118830 (n + 1) : ℚ)

end A118830

/-! ## A118830.P3027028151660142082

`A038608(A006519(n+1))`
-/

namespace A118830.P3027028151660142082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A006519 (n + 1)).toNat

end

end A118830.P3027028151660142082

namespace A118830

/-- `A038608(A006519(n+1))` -/
def P3027028151660142082.Spec : Prop :=
  ∀ n, P3027028151660142082.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P8836822787471239641

`A171449(A007814(n+1))`
-/

namespace A118830.P8836822787471239641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 (A007814 (n + 1)).toNat

end

end A118830.P8836822787471239641

namespace A118830

/-- `A171449(A007814(n+1))` -/
def P8836822787471239641.Spec : Prop :=
  ∀ n, P8836822787471239641.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P2673485185747373903

`A102370(A135481(n))-1`
-/

namespace A118830.P2673485185747373903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 (A135481 n).toNat - 1

end

end A118830.P2673485185747373903

namespace A118830

/-- `A102370(A135481(n))-1` -/
def P2673485185747373903.Spec : Prop :=
  ∀ n, P2673485185747373903.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P4212455980919792410

`A135481(n)-A033999(n)`
-/

namespace A118830.P4212455980919792410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n - A033999 n

end

end A118830.P4212455980919792410

namespace A118830

/-- `A135481(n)-A033999(n)` -/
def P4212455980919792410.Spec : Prop :=
  ∀ n, P4212455980919792410.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P12307445626360166561

`A003188(2*A135481(n))-1`
-/

namespace A118830.P12307445626360166561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * A135481 n).toNat - 1

end

end A118830.P12307445626360166561

namespace A118830

/-- `A003188(2*A135481(n))-1` -/
def P12307445626360166561.Spec : Prop :=
  ∀ n, P12307445626360166561.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P9478087131351184320

`A168273(n+1)-A339597(n)`
-/

namespace A118830.P9478087131351184320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) - A339597 n

end

end A118830.P9478087131351184320

namespace A118830

/-- `A168273(n+1)-A339597(n)` -/
def P9478087131351184320.Spec : Prop :=
  ∀ n, P9478087131351184320.a n = A118830 (n + 1)

end A118830

/-! ## A118830.P13747077625524988145

`A341522(n)-A168269(n+1)`
-/

namespace A118830.P13747077625524988145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n - A168269 (n + 1)

end

end A118830.P13747077625524988145

namespace A118830

/-- `A341522(n)-A168269(n+1)` -/
def P13747077625524988145.Spec : Prop :=
  ∀ n, P13747077625524988145.a n = A118830 (n + 1)

end A118830

/-!
# A118831: Numerators of the convergents of the 2-adic continued fraction of zero given by A118830.

The programs for A118831, the canonical program `A118831.P8815221781689294102` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118831 has offset 1).

The definition of A118831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118831.P8815221781689294102

`-a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=0, a(3)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118831

/-- `-a(n-4)` -/
def P8815221781689294102.Spec : Prop :=
  ∀ n, P8815221781689294102.a n = A118831 (n + 1)

theorem P8815221781689294102.correct : P8815221781689294102.Spec := by
  intro n
  simp only [A118831, Nat.add_sub_cancel]

end A118831

/-!
# A118832: Denominators of the convergents of the 2-adic continued fraction of zero given by A118830.

The programs for A118832, there is no canonical definition to state claims against.
-/

/-! ## A118832.P2417590815868641122

`(n%2+1)*A118826(n+1)`
-/

namespace A118832.P2417590815868641122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A118826 (n + 1)

end

end A118832.P2417590815868641122

/-! ## A118832.P4792765063433834262

`A000034(n)*A118826(n+1)`
-/

namespace A118832.P4792765063433834262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A118826 (n + 1)

end

end A118832.P4792765063433834262

/-! ## A118832.P8161255073880090776

`sqrt(A010685(n))*A118826(n+1)`
-/

namespace A118832.P8161255073880090776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A118826 (n + 1) : ℝ)

end

end A118832.P8161255073880090776

/-! ## A118832.P8973749626013970780

`∑[A165326(n)]*A118826(n+1)`
-/

namespace A118832.P8973749626013970780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A118826 (n + 1)

end

end A118832.P8973749626013970780

/-! ## A118832.P917987896119043317

`ratio[A016116(n)]*A118826(n+1)`
-/

namespace A118832.P917987896119043317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A118826 (n + 1) : ℚ)

end

end A118832.P917987896119043317

/-! ## A118832.P14138053823482262160

`(A000035(n)+1)*A118826(n+1)`
-/

namespace A118832.P14138053823482262160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A118826 (n + 1)

end

end A118832.P14138053823482262160

/-! ## A118832.P5535406303185199192

`A118823(n+1)*A327767(n+1)`
-/

namespace A118832.P5535406303185199192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118823 (n + 1) * A327767 (n + 1)

end

end A118832.P5535406303185199192

/-! ## A118832.P18317419767117867044

`A006519(n²+1)*A118826(n+1)`
-/

namespace A118832.P18317419767117867044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A118826 (n + 1)

end

end A118832.P18317419767117867044

/-! ## A118832.P3992156819037611317

`A020639(or(n, n+1)-n)*A118826(n+1)`
-/

namespace A118832.P3992156819037611317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor n (n + 1) - n) * A118826 (n + 1)

end

end A118832.P3992156819037611317

/-! ## A118832.P6361120128220362486

`A006530(1-and(n, n+1)+n)*A118826(n+1)`
-/

namespace A118832.P6361120128220362486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)).toNat * A118826 (n + 1)

end

end A118832.P6361120128220362486

/-!
# A118836: Denominators of n-th convergent to continued fraction with semiprime terms.

The programs for A118836, there is no canonical definition to state claims against.
-/

/-! ## A118836.P15208669153118085930

`a(n-2)+a(n-1)*A001358(n+1)` with `a(0)=1, a(1)=6`
-/

namespace A118836.P15208669153118085930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + a (n - 1) * A001358 (n + 1)

end

end A118836.P15208669153118085930

/-!
# A118837: Start with 1 and repeatedly place the first digit at the end of the number and add 4.

The programs for A118837, there is no canonical definition to state claims against.
-/

/-! ## A118837.P6293664689809340976

`A345110(a(n-1))+4` with `a(0)=1`
-/

namespace A118837.P6293664689809340976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345110 (a (n - 1)).toNat + 4

end

end A118837.P6293664689809340976

/-!
# A118839: Primes corresponding to the indices of A059791.

The programs for A118839, there is no canonical definition to state claims against.
-/

/-! ## A118839.P14627509741218861459

`A014217(A059791(n+1))`
-/

namespace A118839.P14627509741218861459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (A059791 (n + 1)).toNat

end

end A118839.P14627509741218861459

/-! ## A118839.P12480755510397617582

`A192660(2*A059791(n+1))`
-/

namespace A118839.P12480755510397617582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * A059791 (n + 1)).toNat

end

end A118839.P12480755510397617582

/-! ## A118839.P15161117306846243442

`∩[A014217(n+1), A113192(n+1)]`
-/

namespace A118839.P15161117306846243442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118839.P15161117306846243442

/-! ## A118839.P9851489402293099612

`floor(ϕ^(A262363(n+1)+A159955(A159976(3*(n+1)))))`
-/

namespace A118839.P9851489402293099612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (A262363 (n + 1) + A159955 (A159976 (3 * (n + 1))).toNat : ℤ)⌋

end

end A118839.P9851489402293099612

/-! ## A118839.P11805869005153654329

`p?[floor(ϕ^n)]`
-/

namespace A118839.P11805869005153654329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118839.P11805869005153654329

/-!
# A118840: Primes corresponding to indices A059303.

The programs for A118840, there is no canonical definition to state claims against.
-/

/-! ## A118840.P8527729098256271882

`A037028(A059303(n+1))`
-/

namespace A118840.P8527729098256271882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037028 (A059303 (n + 1)).toNat

end

end A118840.P8527729098256271882

/-!
# A118842: Primes of the form ceiling(phi^k).

The programs for A118842, there is no canonical definition to state claims against.
-/

/-! ## A118842.P5396704585886696180

`A062724(A118841(n+1))`
-/

namespace A118842.P5396704585886696180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 (A118841 (n + 1)).toNat

end

end A118842.P5396704585886696180

/-!
# A118844: Numbers that have only Brauer chains as shortest addition chains.

The programs for A118844, there is no canonical definition to state claims against.
-/

/-! ## A118844.P5670751785773983344

`eq[0, A079302(n+2)]+2`
-/

namespace A118844.P5670751785773983344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A118844.P5670751785773983344

/-! ## A118844.P17565417019794305827

`eq[0, A079302(n-a(2%n))]` with `a(0)=1, a(1)=1`
-/

namespace A118844.P17565417019794305827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A079302 ((n : ℤ) - f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118844.P17565417019794305827

/-! ## A118844.P15927546351710184173

`record[n-A079302(2*(n+2))]+2`
-/

namespace A118844.P15927546351710184173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A079302 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A118844.P15927546351710184173

/-! ## A118844.P5975398720820502850

`lt[A079302(n+1), n/(n+1)]+1`
-/

namespace A118844.P5975398720820502850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A118844.P5975398720820502850

/-! ## A118844.P3238511492556064369

`record[gcd(A079302(n+1), A254667(n+1))]`
-/

namespace A118844.P3238511492556064369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079302 (n + 1)) (A254667 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118844.P3238511492556064369

/-! ## A118844.P3360642646616049385

`record[gcd(A020725(n+1), A079302(n+2))]`
-/

namespace A118844.P3360642646616049385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A079302 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118844.P3360642646616049385

/-! ## A118844.P7998233218120386070

`lt[A079302(A008574(n)), 3%(2*n+1)]`
-/

namespace A118844.P7998233218120386070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118844.P7998233218120386070

/-! ## A118844.P14127628884894534898

`eq[A079302(A004277(n)), A130706(n)]`
-/

namespace A118844.P14127628884894534898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118844.P14127628884894534898

/-! ## A118844.P13166502694850665267

`eq[A079302(A008574(n)), A130706(n)]`
-/

namespace A118844.P13166502694850665267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118844.P13166502694850665267

/-! ## A118844.P9684484546535939425

`eq[A079302(A022144(n)), A130706(n)]`
-/

namespace A118844.P9684484546535939425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118844.P9684484546535939425

/-!
# A118845: Numbers that have non-Brauer chains among their shortest addition chains.

The programs for A118845, there is no canonical definition to state claims against.
-/

/-! ## A118845.P11453209625609866063

`lt[0, A079302(n+1)]+1`
-/

namespace A118845.P11453209625609866063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118845.P11453209625609866063

/-! ## A118845.P8920871485809826178

`lt[0, A079302(A004277(n))]`
-/

namespace A118845.P8920871485809826178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118845.P8920871485809826178

/-! ## A118845.P376499009397650549

`lt[0, A079302(A008574(n))]`
-/

namespace A118845.P376499009397650549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118845.P376499009397650549

/-! ## A118845.P2095841328940778162

`lt[0, A079302(A022144(n))]`
-/

namespace A118845.P2095841328940778162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118845.P2095841328940778162

/-! ## A118845.P450882408338099342

`lt[0, A079302(A028310(n))]`
-/

namespace A118845.P450882408338099342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118845.P450882408338099342

/-! ## A118845.P15944594951213808374

`A020725(lt[0, A079302(n+1)])`
-/

namespace A118845.P15944594951213808374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118845.P15944594951213808374

/-! ## A118845.P6138334451677583193

`lt[0, A079302(A233583(n+1))]`
-/

namespace A118845.P6138334451677583193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118845.P6138334451677583193

/-! ## A118845.P2059297675851042390

`lt[A079301(n+1), A079300(n+1)]+1`
-/

namespace A118845.P2059297675851042390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A118845.P2059297675851042390

/-! ## A118845.P13604174918671446043

`A020725(lt[A079301(n+1), A079300(n+1)])`
-/

namespace A118845.P13604174918671446043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118845.P13604174918671446043

/-!
# A118846: Number of non-Brauer chains corresponding to the entries of A118845.

The programs for A118846, there is no canonical definition to state claims against.
-/

/-! ## A118846.P9195296893877648820

`filter[A079302(n+1), A168185(#)]`
-/

namespace A118846.P9195296893877648820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A118846.P9195296893877648820

/-! ## A118846.P2671405355188627109

`A079302(lt[0, A079302(n+1)]+1)`
-/

namespace A118846.P2671405355188627109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A118846.P2671405355188627109

/-! ## A118846.P13765267641896580852

`A079302(eq[n+1, (n+1)%(A079302(n+1)+n+1)]+1)`
-/

namespace A118846.P13765267641896580852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A079302 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A118846.P13765267641896580852

/-! ## A118846.P5817646580020153154

`A079302(A118845(n+1))`
-/

namespace A118846.P5817646580020153154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079302 (A118845 (n + 1)).toNat

end

end A118846.P5817646580020153154

/-!
# A118847: Start with 1 and repeatedly place the first digit at the end of the number and add 5.

The programs for A118847, there is no canonical definition to state claims against.
-/

/-! ## A118847.P8821606184233560753

`A117800(n)+A051731(A173594(n+1))`
-/

namespace A118847.P8821606184233560753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117800 n + A051731 (A173594 (n + 1)).toNat

end

end A118847.P8821606184233560753

/-!
# A118848: Number of minutes past midnight represented by A050246(n).

The programs for A118848, there is no canonical definition to state claims against.
-/

/-! ## A118848.P9613216158406813115

`A050246(n+1)-floor(A050246(n+1)/100)*40`
-/

namespace A118848.P9613216158406813115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050246 (n + 1) - ⌊(A050246 (n + 1) : ℚ) / 100⌋ * 40

end

end A118848.P9613216158406813115

/-! ## A118848.P3816858232210306188

`A292579(A050246(n+1))`
-/

namespace A118848.P3816858232210306188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A050246 (n + 1)).toNat

end

end A118848.P3816858232210306188

/-! ## A118848.P11249713807767657895

`eq[1, A003415(A055643(n))]`
-/

namespace A118848.P11249713807767657895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055643 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118848.P11249713807767657895

/-! ## A118848.P8324635241343963082

`eq[1, A001222(A055643(n)+1)]+1`
-/

namespace A118848.P8324635241343963082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055643 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118848.P8324635241343963082

/-! ## A118848.P1397384632395579575

`lt[A003415(A055643(n)), A101113(2*n+1)%(n+1)]`
-/

namespace A118848.P1397384632395579575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055643 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101113 (2 * n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118848.P1397384632395579575

/-! ## A118848.P5663282323280203221

`lt[A003415(A055643(n)), A001222(2*n+2)%(n+1)]`
-/

namespace A118848.P5663282323280203221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055643 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (2 * n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118848.P5663282323280203221

/-! ## A118848.P369337039558148587

`lt[A003415(A055643(n)), A000027(2*n+4)%(n+1)]`
-/

namespace A118848.P369337039558148587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055643 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (2 * n + 4)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118848.P369337039558148587

/-!
# A118849: Digital clock primes such that the number of minutes past midnight is also prime.

The programs for A118849, there is no canonical definition to state claims against.
-/

/-! ## A118849.P13791526797405265306

`A118850(n+1)+floor(A118850(n+1)/60)*40`
-/

namespace A118849.P13791526797405265306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118850 (n + 1) + ⌊(A118850 (n + 1) : ℚ) / 60⌋ * 40

end

end A118849.P13791526797405265306

/-! ## A118849.P10809281057304245817

`A055643(A118850(n+1))`
-/

namespace A118849.P10809281057304245817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A118850 (n + 1)).toNat

end

end A118849.P10809281057304245817

/-! ## A118849.P13768565933705320019

`∩[A000040(n+1), A055643(A000040(n+1))]`
-/

namespace A118849.P13768565933705320019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118849.P13768565933705320019

/-! ## A118849.P15930613543017793134

`∩[A216887(n+1), A055643(A216887(n+1))]`
-/

namespace A118849.P15930613543017793134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A216887 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118849.P15930613543017793134

/-! ## A118849.P2215398611917208345

`∩[A008578(n+1), A055643(A008578(n+2))]`
-/

namespace A118849.P2215398611917208345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A008578 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118849.P2215398611917208345

/-!
# A118850: Number of minutes past midnight represented by A118849(n).

The programs for A118850, there is no canonical definition to state claims against.
-/

/-! ## A118850.P12881592046813867416

`A118849(n+1)-floor(A118849(n+1)/100)*40`
-/

namespace A118850.P12881592046813867416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (n + 1) - ⌊(A118849 (n + 1) : ℚ) / 100⌋ * 40

end

end A118850.P12881592046813867416

/-! ## A118850.P7218227453801805918

`p?[A118848(n+1)]`
-/

namespace A118850.P7218227453801805918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118850.P7218227453801805918

/-! ## A118850.P8314514595243214380

`A292579(A118849(n+1))`
-/

namespace A118850.P8314514595243214380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A118849 (n + 1)).toNat

end

end A118850.P8314514595243214380

/-! ## A118850.P14389054434198286441

`filter[A118848(n+1), A010051(#)]`
-/

namespace A118850.P14389054434198286441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A118850.P14389054434198286441

/-! ## A118850.P1513227069478076464

`filter[A118848(n+1), A080339(#)]`
-/

namespace A118850.P1513227069478076464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A118850.P1513227069478076464

/-! ## A118850.P4546418098032761247

`filter[A118848(n+1), A174897(#)]`
-/

namespace A118850.P4546418098032761247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A118850.P4546418098032761247

/-! ## A118850.P11767845013836459745

`filter[A118848(n+1), A323152(#)]`
-/

namespace A118850.P11767845013836459745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A118850.P11767845013836459745

/-! ## A118850.P3280940750140348416

`filter[A118848(n+1), A323153(#)]`
-/

namespace A118850.P3280940750140348416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A118850.P3280940750140348416

/-! ## A118850.P6347014449078072438

`filter[A118848(n+1), A327861(#)]`
-/

namespace A118850.P6347014449078072438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A118850.P6347014449078072438

/-!
# A118851: Product of parts in n-th partition in Abramowitz and Stegun order.

The programs for A118851, there is no canonical definition to state claims against.
-/

/-! ## A118851.P10875653752819027931

`A085643(n)/A048996(n)`
-/

namespace A118851.P10875653752819027931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085643 n : ℚ) / (A048996 n : ℚ)

end

end A118851.P10875653752819027931

/-! ## A118851.P9440855787239999158

`A005361(A036035(n))`
-/

namespace A118851.P9440855787239999158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A036035 n).toNat

end

end A118851.P9440855787239999158

/-! ## A118851.P14024979292032065236

`A134133(n)/A107106(n)`
-/

namespace A118851.P14024979292032065236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 n : ℚ) / (A107106 n : ℚ)

end

end A118851.P14024979292032065236

/-! ## A118851.P11705633713990047785

`A003963(A185974(n))`
-/

namespace A118851.P11705633713990047785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A185974 n).toNat

end

end A118851.P11705633713990047785

/-! ## A118851.P16514727629961308723

`A329382(A334434(n))`
-/

namespace A118851.P16514727629961308723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A334434 n).toNat

end

end A118851.P16514727629961308723

/-! ## A118851.P11061644604786193342

`A305309(floor(acot(n)+n))/A048996(n)`
-/

namespace A118851.P11061644604786193342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305309 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / (A048996 n : ℚ)

end

end A118851.P11061644604786193342

/-! ## A118851.P10788046188033981399

`A305309(round(sqrt(n²+1)))/A048996(n)`
-/

namespace A118851.P10788046188033981399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305309 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (A048996 n : ℚ)

end

end A118851.P10788046188033981399

/-! ## A118851.P12984349272265088627

`ceil(A305309(A028310(n))/A048996(n))`
-/

namespace A118851.P12984349272265088627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305309 (A028310 n).toNat : ℚ) / (A048996 n : ℚ)⌉

end

end A118851.P12984349272265088627

/-! ## A118851.P16633450049068143380

`A305309(A028310(n))/A008480(A185974(n))`
-/

namespace A118851.P16633450049068143380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305309 (A028310 n).toNat : ℚ) / (A008480 (A185974 n).toNat : ℚ)

end

end A118851.P16633450049068143380

/-! ## A118851.P224340974329095557

`∏{e}[A059901(n), #]`
-/

namespace A118851.P224340974329095557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A118851.P224340974329095557

/-!
# A118852: Start with 1 and repeatedly place the first digit at the end of the number and add 8.

The programs for A118852, there is no canonical definition to state claims against.
-/

/-! ## A118852.P9286294657096863266

`A004086(A004185(a(n-1)))+8` with `a(0)=1`
-/

namespace A118852.P9286294657096863266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (A004185 (a (n - 1)).toNat).toNat + 8

end

end A118852.P9286294657096863266

/-!
# A118854: Numbers m such that m-1 and m have the same number of common totatives as m and m+1 have.

The programs for A118854, there is no canonical definition to state claims against.
-/

/-! ## A118854.P9536080948959982418

`eq[A057475(n+1), A057475(n+2)]+2`
-/

namespace A118854.P9536080948959982418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A118854.P9536080948959982418

/-!
# A118859: Numbers k such that k-1, k+1, 2*k-1, 2*k+1, 3*k-1 and 3*k+1 are primes.

The programs for A118859, there is no canonical definition to state claims against.
-/

/-! ## A118859.P6422060564948671177

`6*A290811(n+1)`
-/

namespace A118859.P6422060564948671177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A290811 (n + 1)

end

end A118859.P6422060564948671177

/-! ## A118859.P861219362250906038

`∩[A066388(n+1), A132929(n+1)]`
-/

namespace A118859.P861219362250906038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118859.P861219362250906038

/-! ## A118859.P18196806184461270987

`∩[A069142(n+1)+1, A132929(n+1)]`
-/

namespace A118859.P18196806184461270987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069142 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118859.P18196806184461270987

/-! ## A118859.P10932166822026245821

`∩[A132929(n+1), A221310(n+1)]`
-/

namespace A118859.P10932166822026245821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118859.P10932166822026245821

/-! ## A118859.P8779792154582855499

`∩[A132929(n+1), A261463(n+2)+1]`
-/

namespace A118859.P8779792154582855499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261463 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118859.P8779792154582855499

/-!
# A118860: Numbers k such that k-1, k+1, 2k-1, 2k+1, 3k-1, 3k+1, 4k-1 and 4k+1 are all primes.

The programs for A118860, there is no canonical definition to state claims against.
-/

/-! ## A118860.P15483329573844188111

`210*A174293(n+1)`
-/

namespace A118860.P15483329573844188111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A174293 (n + 1)

end

end A118860.P15483329573844188111

/-!
# A118862: Start with 1 and repeatedly place the first digit at the end of the number and add 15.

The programs for A118862, the canonical program `A118862.P5291944663191298201` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118862 has offset 1).

The definition of A118862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118862.P5291944663191298201

`a(n-6)` with `a(0)=1, a(1)=16, a(2)=76, a(3)=82, a(4)=43, a(5)=49, a(6)=109, a(7)=106`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118862

/-- `a(n-6)` -/
def P5291944663191298201.Spec : Prop :=
  ∀ n, (P5291944663191298201.a n : ℤ) = A118862 (n + 1)

theorem P5291944663191298201.correct : P5291944663191298201.Spec := by
  intro n
  simp only [A118862, Nat.add_sub_cancel]

end A118862

/-!
# A118865: Start with 1 and repeatedly place the first digit at the end of the number and add 19.

The programs for A118865, there is no canonical definition to state claims against.
-/

/-! ## A118865.P17184529107550635891

`A118853(n+2)-A213598(C(n, a(n-1)))` with `a(0)=1`
-/

namespace A118865.P17184529107550635891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118853 (n + 2) - A213598 (Nat.choose n (a (n - 1)).toNat)

end

end A118865.P17184529107550635891

/-!
# A118866: Start with 1 and repeatedly place the first digit at the end of the number and add 20.

The programs for A118866, there is no canonical definition to state claims against.
-/

/-! ## A118866.P9803049266483914203

`eq[A319468(n), A330460(A008592(n))]`
-/

namespace A118866.P9803049266483914203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330460 (A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118866.P9803049266483914203

/-! ## A118866.P2943040983210883454

`A113373(A061906(n)-A217096(n))+11*n`
-/

namespace A118866.P2943040983210883454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113373 (A061906 n - A217096 n).toNat + (11 * n : ℤ)

end

end A118866.P2943040983210883454

/-! ## A118866.P11776174434305392620

`A113386(A061906(n)-A217096(n))+11*n`
-/

namespace A118866.P11776174434305392620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113386 (A061906 n - A217096 n).toNat + (11 * n : ℤ)

end

end A118866.P11776174434305392620

/-! ## A118866.P12773935181666413909

`A127423(n+1)%∑[A127400(n+5)]`
-/

namespace A118866.P12773935181666413909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127400 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127423 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118866.P12773935181666413909

/-!
# A118869: Triangle read by rows: T(n,k) is the number of binary sequences of length n containing k subsequences 0101 (n,k>=0).

The programs for A118869, there is no canonical definition to state claims against.
-/

/-! ## A118869.P10960475567579488397

`char[8]+A118890(n)^A118887(n+1)!`
-/

namespace A118869.P10960475567579488397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A118890 n ^ Nat.factorial (A118887 (n + 1)).toNat

end

end A118869.P10960475567579488397

/-! ## A118869.P7888703440242493586

`A118884(n)+A014017(A148739(n))`
-/

namespace A118869.P7888703440242493586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118884 n + A014017 (A148739 n).toNat

end

end A118869.P7888703440242493586

/-! ## A118869.P11223047104461686201

`A118890(n)+A014017(A148739(n))`
-/

namespace A118869.P11223047104461686201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118890 n + A014017 (A148739 n).toNat

end

end A118869.P11223047104461686201

/-! ## A118869.P14789816103390557626

`A185037(A000073(n))+A118884(n)`
-/

namespace A118869.P14789816103390557626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A000073 n).toNat + A118884 n

end

end A118869.P14789816103390557626

/-! ## A118869.P9557094110431521786

`A185037(A000073(n))+A118890(n)`
-/

namespace A118869.P9557094110431521786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A000073 n).toNat + A118890 n

end

end A118869.P9557094110431521786

/-!
# A118870: Number of binary sequences of length n with no subsequence 0101.

The programs for A118870, the canonical program `A118870.P5488737142856365502` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118870 has offset 0).

The definition of A118870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118870.P5488737142856365502

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118870

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P5488737142856365502.Spec : Prop :=
  ∀ n, P5488737142856365502.a n = A118870 n

theorem P5488737142856365502.correct : P5488737142856365502.Spec := by
  intro n
  simp only [A118870]

end A118870

/-! ## A118870.P1677156297747948590

`ogf((1+x^2)/(1-2x+x^2-2x^3+x^4))`
-/

namespace A118870.P1677156297747948590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 1, -2, 1] n

end

end A118870.P1677156297747948590

namespace A118870

/-- `ogf((1+x^2)/(1-2x+x^2-2x^3+x^4))` -/
def P1677156297747948590.Spec : Prop :=
  ∀ n, P1677156297747948590.a n = A118870 n

end A118870

/-! ## A118870.P1398683794162263038

`∑[∑[A112575(abs(1-n))]]`
-/

namespace A118870.P1398683794162263038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118870.P1398683794162263038

namespace A118870

/-- `∑[∑[A112575(abs(1-n))]]` -/
def P1398683794162263038.Spec : Prop :=
  ∀ n, P1398683794162263038.a n = A118870 n

end A118870

/-! ## A118870.P9808482994598298085

`A183324(n+1)-A100048(n)`
-/

namespace A118870.P9808482994598298085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) - A100048 n

end

end A118870.P9808482994598298085

namespace A118870

/-- `A183324(n+1)-A100048(n)` -/
def P9808482994598298085.Spec : Prop :=
  ∀ n, P9808482994598298085.a n = A118870 n

end A118870

/-! ## A118870.P17375897203337716590

`A288380(n)-(A100048(n)+1)`
-/

namespace A118870.P17375897203337716590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288380 n - (A100048 n + 1)

end

end A118870.P17375897203337716590

namespace A118870

/-- `A288380(n)-(A100048(n)+1)` -/
def P17375897203337716590.Spec : Prop :=
  ∀ n, P17375897203337716590.a n = A118870 n

end A118870

/-! ## A118870.P2481164719781736416

`A112575(n+1)+A112575(A289207(n+1))`
-/

namespace A118870.P2481164719781736416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 (n + 1) + A112575 (A289207 (n + 1)).toNat

end

end A118870.P2481164719781736416

namespace A118870

/-- `A112575(n+1)+A112575(A289207(n+1))` -/
def P2481164719781736416.Spec : Prop :=
  ∀ n, P2481164719781736416.a n = A118870 n

end A118870

/-! ## A118870.P14972006063062282409

`A163314(n+1)/3`
-/

namespace A118870.P14972006063062282409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163314 (n + 1) : ℚ) / 3

end

end A118870.P14972006063062282409

namespace A118870

/-- `A163314(n+1)/3` -/
def P14972006063062282409.Spec : Prop :=
  ∀ n, P14972006063062282409.a n = (A118870 n : ℚ)

end A118870

/-! ## A118870.P4765352359973503536

`∑[Δ[A099854(n)]-A099846(n)]`
-/

namespace A118870.P4765352359973503536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A099846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118870.P4765352359973503536

namespace A118870

/-- `∑[Δ[A099854(n)]-A099846(n)]` -/
def P4765352359973503536.Spec : Prop :=
  ∀ n, P4765352359973503536.a n = A118870 n

end A118870

/-! ## A118870.P4419482789213979628

`Δ[∑[A163314(n)]/3]`
-/

namespace A118870.P4419482789213979628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163314 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118870.P4419482789213979628

namespace A118870

/-- `Δ[∑[A163314(n)]/3]` -/
def P4419482789213979628.Spec : Prop :=
  ∀ n, P4419482789213979628.a n = (A118870 n : ℚ)

end A118870

/-! ## A118870.P869720586282889117

`2^n-A397833(n)`
-/

namespace A118870.P869720586282889117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A397833 n

end

end A118870.P869720586282889117

namespace A118870

/-- `2^n-A397833(n)` -/
def P869720586282889117.Spec : Prop :=
  ∀ n, P869720586282889117.a n = A118870 n

end A118870

/-! ## A118870.P4471314791893138710

`A209972(A055998(n+9)-8)`
-/

namespace A118870.P4471314791893138710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209972 (A055998 (n + 9) - 8).toNat

end

end A118870.P4471314791893138710

namespace A118870

/-- `A209972(A055998(n+9)-8)` -/
def P4471314791893138710.Spec : Prop :=
  ∀ n, P4471314791893138710.a n = A118870 n

end A118870

/-!
# A118871: Number of binary sequences of length n containing exactly one subsequence 0101.

The programs for A118871, there is no canonical definition to state claims against.
-/

/-! ## A118871.P16382932262562710206

`A051889(A384733(n))`
-/

namespace A118871.P16382932262562710206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A384733 n).toNat

end

end A118871.P16382932262562710206

/-! ## A118871.P15113815302146504790

`A051889(A034827(n)+A000910(n))`
-/

namespace A118871.P15113815302146504790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A034827 n + A000910 n).toNat

end

end A118871.P15113815302146504790

/-! ## A118871.P9756186664279091649

`A055086(A119611(n))-A065033(n)`
-/

namespace A118871.P9756186664279091649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A119611 n).toNat - A065033 n

end

end A118871.P9756186664279091649

/-! ## A118871.P14138621081451641989

`A003056(A149351(n)-A149334(n))`
-/

namespace A118871.P14138621081451641989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A149351 n - A149334 n).toNat

end

end A118871.P14138621081451641989

/-! ## A118871.P5966228033537477804

`A179510(A000598(n))`
-/

namespace A118871.P5966228033537477804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179510 (A000598 n).toNat

end

end A118871.P5966228033537477804

/-!
# A118872: Numbers k such that digit sum of 3^k is a power of 3.

The programs for A118872, there is no canonical definition to state claims against.
-/

/-! ## A118872.P16782326129230527396

`lt[A001221(A004166(n)), 2]`
-/

namespace A118872.P16782326129230527396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004166 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118872.P16782326129230527396

/-! ## A118872.P4460057921878621162

`eq[A001221(A004166(n)), A057427(n)]`
-/

namespace A118872.P4460057921878621162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118872.P4460057921878621162

/-! ## A118872.P6621706431983386210

`eq[A001221(A004166(n)), A019426(2*n)]`
-/

namespace A118872.P6621706431983386210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118872.P6621706431983386210

/-! ## A118872.P9945248819801211034

`eq[A034444(A004166(n)), A036453(n+1)]`
-/

namespace A118872.P9945248819801211034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A004166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118872.P9945248819801211034

/-!
# A118873: Determinant of n-th continuous block of 4 consecutive squares of primes.

The programs for A118873, the canonical program `A118873.P18191058552923466056` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118873 has offset 1).

The definition of A118873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118873.P18191058552923466056

`(A090090(n+1)+A006094(n+2))*A117301(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118873

/-- `(A090090(n+1)+A006094(n+2))*A117301(n+1)` -/
def P18191058552923466056.Spec : Prop :=
  ∀ n, P18191058552923466056.a n = A118873 (n + 1)

theorem P18191058552923466056.correct : P18191058552923466056.Spec := by
  intro n
  simp only [A118873, Nat.add_sub_cancel]

end A118873

/-! ## A118873.P5994583425653085255

`A090090(n+1)*A090090(n+1)-A166329(n+2)`
-/

namespace A118873.P5994583425653085255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090090 (n + 1) * A090090 (n + 1) - A166329 (n + 2)

end

end A118873.P5994583425653085255

namespace A118873

/-- `A090090(n+1)*A090090(n+1)-A166329(n+2)` -/
def P5994583425653085255.Spec : Prop :=
  ∀ n, P5994583425653085255.a n = A118873 (n + 1)

end A118873

/-!
# A118877: Determinant of n-th continuous block of 4 consecutive composites.

The programs for A118877, the canonical program `A118877.P16238314102169242723` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118877 has offset 1).

The definition of A118877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118877.P16238314102169242723

`A002808(n+1)*A002808(n+4)-A002808(n+2)*A002808(n+3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118877

/-- `A002808(n+1)*A002808(n+4)-A002808(n+2)*A002808(n+3)` -/
def P16238314102169242723.Spec : Prop :=
  ∀ n, P16238314102169242723.a n = A118877 (n + 1)

theorem P16238314102169242723.correct : P16238314102169242723.Spec := by
  intro n
  simp only [A118877, Nat.add_sub_cancel]

end A118877

/-!
# A118880: a(n) is the cube of the sum of digits of n.

The programs for A118880, the canonical program `A118880.P13099714679656599745` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118880 has offset 0).

The definition of A118880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118880.P13099714679656599745

`A007953(n)^3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118880

/-- `A007953(n)^3` -/
def P13099714679656599745.Spec : Prop :=
  ∀ n, P13099714679656599745.a n = A118880 n

theorem P13099714679656599745.correct : P13099714679656599745.Spec := by
  intro n
  simp only [A118880]

end A118880

/-! ## A118880.P16928772106549253864

`∑{digits}[n, #]^3`
-/

namespace A118880.P16928772106549253864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3

end

end A118880.P16928772106549253864

namespace A118880

/-- `∑{digits}[n, #]^3` -/
def P16928772106549253864.Spec : Prop :=
  ∀ n, (P16928772106549253864.a n : ℤ) = A118880 n

end A118880

/-! ## A118880.P9438142792744682547

`log(∏{digits}[n, exp(#)])^3`
-/

namespace A118880.P9438142792744682547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod ^ 3

end

end A118880.P9438142792744682547

namespace A118880

/-- `log(∏{digits}[n, exp(#)])^3` -/
def P9438142792744682547.Spec : Prop :=
  ∀ n, P9438142792744682547.a n = (A118880 n : ℝ)

end A118880

/-! ## A118880.P17353684346015310626

`log2(∏{digits}[n, 2^#])^3`
-/

namespace A118880.P17353684346015310626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) ^ 3

end

end A118880.P17353684346015310626

namespace A118880

/-- `log2(∏{digits}[n, 2^#])^3` -/
def P17353684346015310626.Spec : Prop :=
  ∀ n, P17353684346015310626.a n = (A118880 n : ℝ)

end A118880

/-! ## A118880.P1588128252583256329

`∑{digits}[n, #]²*∑{digits}[n, #]`
-/

namespace A118880.P1588128252583256329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A118880.P1588128252583256329

namespace A118880

/-- `∑{digits}[n, #]²*∑{digits}[n, #]` -/
def P1588128252583256329.Spec : Prop :=
  ∀ n, (P1588128252583256329.a n : ℤ) = A118880 n

end A118880

/-! ## A118880.P16464865923615304692

`val(∏{digits}[n, 2^#], 2)^3`
-/

namespace A118880.P16464865923615304692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2 ^ 3

end

end A118880.P16464865923615304692

namespace A118880

/-- `val(∏{digits}[n, 2^#], 2)^3` -/
def P16464865923615304692.Spec : Prop :=
  ∀ n, (P16464865923615304692.a n : ℤ) = A118880 n

end A118880

/-! ## A118880.P17761093809577817625

`A000578(∑{digits}[n, #])`
-/

namespace A118880.P17761093809577817625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A118880.P17761093809577817625

namespace A118880

/-- `A000578(∑{digits}[n, #])` -/
def P17761093809577817625.Spec : Prop :=
  ∀ n, P17761093809577817625.a n = A118880 n

end A118880

/-! ## A118880.P1854185743530820967

`sqrt(A118881(n)^3)`
-/

namespace A118880.P1854185743530820967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n ^ 3 : ℝ)

end

end A118880.P1854185743530820967

namespace A118880

/-- `sqrt(A118881(n)^3)` -/
def P1854185743530820967.Spec : Prop :=
  ∀ n, P1854185743530820967.a n = (A118880 n : ℝ)

end A118880

/-! ## A118880.P13033687434828623279

`(A169805(n)/2)^3`
-/

namespace A118880.P13033687434828623279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169805 n : ℚ) / 2) ^ 3

end

end A118880.P13033687434828623279

namespace A118880

/-- `(A169805(n)/2)^3` -/
def P13033687434828623279.Spec : Prop :=
  ∀ n, P13033687434828623279.a n = (A118880 n : ℚ)

end A118880

/-! ## A118880.P68928057053526084

`(A062028(n)-n)^3`
-/

namespace A118880.P68928057053526084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062028 n - (n : ℤ)) ^ 3

end

end A118880.P68928057053526084

namespace A118880

/-- `(A062028(n)-n)^3` -/
def P68928057053526084.Spec : Prop :=
  ∀ n, P68928057053526084.a n = A118880 n

end A118880

/-! ## A118880.P1019398139753894211

`(n-A066568(n))^3`
-/

namespace A118880.P1019398139753894211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A066568 n) ^ 3

end

end A118880.P1019398139753894211

namespace A118880

/-- `(n-A066568(n))^3` -/
def P1019398139753894211.Spec : Prop :=
  ∀ n, P1019398139753894211.a n = A118880 n

end A118880

/-! ## A118880.P12062851816296839028

`(n+1-A160941(n+1))^3`
-/

namespace A118880.P12062851816296839028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A160941 (n + 1)) ^ 3

end

end A118880.P12062851816296839028

namespace A118880

/-- `(n+1-A160941(n+1))^3` -/
def P12062851816296839028.Spec : Prop :=
  ∀ n, P12062851816296839028.a n = A118880 n

end A118880

/-! ## A118880.P5693254132147899554

`(A160939(n+1)-(n+1))^3`
-/

namespace A118880.P5693254132147899554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) - (n + 1 : ℤ)) ^ 3

end

end A118880.P5693254132147899554

namespace A118880

/-- `(A160939(n+1)-(n+1))^3` -/
def P5693254132147899554.Spec : Prop :=
  ∀ n, P5693254132147899554.a n = A118880 n

end A118880

/-! ## A118880.P3460905519405602863

`(A160942(n+1)/(n+1))^3`
-/

namespace A118880.P3460905519405602863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160942 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A118880.P3460905519405602863

namespace A118880

/-- `(A160942(n+1)/(n+1))^3` -/
def P3460905519405602863.Spec : Prop :=
  ∀ n, P3460905519405602863.a n = (A118880 n : ℚ)

end A118880

/-! ## A118880.P13697750762445844049

`A000578(A007953(n))`
-/

namespace A118880.P13697750762445844049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007953 n).toNat

end

end A118880.P13697750762445844049

namespace A118880

/-- `A000578(A007953(n))` -/
def P13697750762445844049.Spec : Prop :=
  ∀ n, P13697750762445844049.a n = A118880 n

end A118880

/-! ## A118880.P9843374291200390727

`A000093(A118881(n))`
-/

namespace A118880.P9843374291200390727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A118881 n).toNat

end

end A118880.P9843374291200390727

namespace A118880

/-- `A000093(A118881(n))` -/
def P9843374291200390727.Spec : Prop :=
  ∀ n, P9843374291200390727.a n = A118880 n

end A118880

/-! ## A118880.P15837882988080917618

`A034828(A169805(n))`
-/

namespace A118880.P15837882988080917618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A169805 n).toNat

end

end A118880.P15837882988080917618

namespace A118880

/-- `A034828(A169805(n))` -/
def P15837882988080917618.Spec : Prop :=
  ∀ n, P15837882988080917618.a n = A118880 n

end A118880

/-! ## A118880.P6061033712578636204

`A000578(A169805(n)/2)`
-/

namespace A118880.P6061033712578636204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

end

end A118880.P6061033712578636204

namespace A118880

/-- `A000578(A169805(n)/2)` -/
def P6061033712578636204.Spec : Prop :=
  ∀ n, P6061033712578636204.a n = A118880 n

end A118880

/-! ## A118880.P12908914960575492674

`A069973(n)+A004164(n)`
-/

namespace A118880.P12908914960575492674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069973 n + A004164 n

end

end A118880.P12908914960575492674

namespace A118880

/-- `A069973(n)+A004164(n)` -/
def P12908914960575492674.Spec : Prop :=
  ∀ n, P12908914960575492674.a n = A118880 n

end A118880

/-! ## A118880.P10502476808126775262

`A069958(n)+A055012(n)`
-/

namespace A118880.P10502476808126775262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069958 n + A055012 n

end

end A118880.P10502476808126775262

namespace A118880

/-- `A069958(n)+A055012(n)` -/
def P10502476808126775262.Spec : Prop :=
  ∀ n, P10502476808126775262.a n = A118880 n

end A118880

/-!
# A118881: Square of sum of decimal digits of n.

The programs for A118881, the canonical program `A118881.P8524186405013838056` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118881 has offset 0).

The definition of A118881 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118881.P8524186405013838056

`A007953(n)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118881

/-- `A007953(n)²` -/
def P8524186405013838056.Spec : Prop :=
  ∀ n, P8524186405013838056.a n = A118881 n

theorem P8524186405013838056.correct : P8524186405013838056.Spec := by
  intro n
  simp only [A118881]

end A118881

/-! ## A118881.P6410316649551870552

`∑{digits}[n, #]²`
-/

namespace A118881.P6410316649551870552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2

end

end A118881.P6410316649551870552

namespace A118881

/-- `∑{digits}[n, #]²` -/
def P6410316649551870552.Spec : Prop :=
  ∀ n, (P6410316649551870552.a n : ℤ) = A118881 n

end A118881

/-! ## A118881.P10859815164438494607

`log(∏{digits}[n, exp(#)])²`
-/

namespace A118881.P10859815164438494607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod ^ 2

end

end A118881.P10859815164438494607

namespace A118881

/-- `log(∏{digits}[n, exp(#)])²` -/
def P10859815164438494607.Spec : Prop :=
  ∀ n, P10859815164438494607.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P10785432127448245090

`∑{digits}[n, #]^(4/2)`
-/

namespace A118881.P10785432127448245090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

end

end A118881.P10785432127448245090

namespace A118881

/-- `∑{digits}[n, #]^(4/2)` -/
def P10785432127448245090.Spec : Prop :=
  ∀ n, P10785432127448245090.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P9497922993023132744

`(-sqrt(∑{digits}[n, #]))^4`
-/

namespace A118881.P9497922993023132744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ)) ^ 4

end

end A118881.P9497922993023132744

namespace A118881

/-- `(-sqrt(∑{digits}[n, #]))^4` -/
def P9497922993023132744.Spec : Prop :=
  ∀ n, P9497922993023132744.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P1820538543040037855

`log2(∏{digits}[n, 2^#])²`
-/

namespace A118881.P1820538543040037855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) ^ 2

end

end A118881.P1820538543040037855

namespace A118881

/-- `log2(∏{digits}[n, 2^#])²` -/
def P1820538543040037855.Spec : Prop :=
  ∀ n, P1820538543040037855.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P14525927714036871736

`∑{digits}[n, #]*∑{digits}[n, #]`
-/

namespace A118881.P14525927714036871736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A118881.P14525927714036871736

namespace A118881

/-- `∑{digits}[n, #]*∑{digits}[n, #]` -/
def P14525927714036871736.Spec : Prop :=
  ∀ n, (P14525927714036871736.a n : ℤ) = A118881 n

end A118881

/-! ## A118881.P10929130229660383455

`val(∏{digits}[n, 2^#], 2)²`
-/

namespace A118881.P10929130229660383455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2 ^ 2

end

end A118881.P10929130229660383455

namespace A118881

/-- `val(∏{digits}[n, 2^#], 2)²` -/
def P10929130229660383455.Spec : Prop :=
  ∀ n, (P10929130229660383455.a n : ℤ) = A118881 n

end A118881

/-! ## A118881.P5332715266153130178

`log2(A329562(n))²`
-/

namespace A118881.P5332715266153130178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) ^ 2

end

end A118881.P5332715266153130178

namespace A118881

/-- `log2(A329562(n))²` -/
def P5332715266153130178.Spec : Prop :=
  ∀ n, P5332715266153130178.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P2352556496895060540

`A000290(∑{digits}[n, #])`
-/

namespace A118881.P2352556496895060540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A118881.P2352556496895060540

namespace A118881

/-- `A000290(∑{digits}[n, #])` -/
def P2352556496895060540.Spec : Prop :=
  ∀ n, P2352556496895060540.a n = A118881 n

end A118881

/-! ## A118881.P4098829540350533492

`(A169805(n)/2)²`
-/

namespace A118881.P4098829540350533492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169805 n : ℚ) / 2) ^ 2

end

end A118881.P4098829540350533492

namespace A118881

/-- `(A169805(n)/2)²` -/
def P4098829540350533492.Spec : Prop :=
  ∀ n, P4098829540350533492.a n = (A118881 n : ℚ)

end A118881

/-! ## A118881.P15396262645979966469

`(n-A062028(n))²`
-/

namespace A118881.P15396262645979966469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062028 n) ^ 2

end

end A118881.P15396262645979966469

namespace A118881

/-- `(n-A062028(n))²` -/
def P15396262645979966469.Spec : Prop :=
  ∀ n, P15396262645979966469.a n = A118881 n

end A118881

/-! ## A118881.P11436135124487551332

`(n-A066568(n))²`
-/

namespace A118881.P11436135124487551332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A066568 n) ^ 2

end

end A118881.P11436135124487551332

namespace A118881

/-- `(n-A066568(n))²` -/
def P11436135124487551332.Spec : Prop :=
  ∀ n, P11436135124487551332.a n = A118881 n

end A118881

/-! ## A118881.P18034810381599912186

`sqrt(A000583(∑{digits}[n, #]))`
-/

namespace A118881.P18034810381599912186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000583 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℝ)

end

end A118881.P18034810381599912186

namespace A118881

/-- `sqrt(A000583(∑{digits}[n, #]))` -/
def P18034810381599912186.Spec : Prop :=
  ∀ n, P18034810381599912186.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P17611759779008916345

`A118880(n)^(2/3)`
-/

namespace A118881.P17611759779008916345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A118881.P17611759779008916345

namespace A118881

/-- `A118880(n)^(2/3)` -/
def P17611759779008916345.Spec : Prop :=
  ∀ n, P17611759779008916345.a n = (A118881 n : ℝ)

end A118881

/-! ## A118881.P6117430914785167829

`(1-A160939(n+1)+n)²`
-/

namespace A118881.P6117430914785167829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A160939 (n + 1) + (n : ℤ)) ^ 2

end

end A118881.P6117430914785167829

namespace A118881

/-- `(1-A160939(n+1)+n)²` -/
def P6117430914785167829.Spec : Prop :=
  ∀ n, P6117430914785167829.a n = A118881 n

end A118881

/-! ## A118881.P13202535598223128396

`(1-A160941(n+1)+n)²`
-/

namespace A118881.P13202535598223128396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A160941 (n + 1) + (n : ℤ)) ^ 2

end

end A118881.P13202535598223128396

namespace A118881

/-- `(1-A160941(n+1)+n)²` -/
def P13202535598223128396.Spec : Prop :=
  ∀ n, P13202535598223128396.a n = A118881 n

end A118881

/-! ## A118881.P4187348060245592542

`(A160942(n+1)/(n+1))²`
-/

namespace A118881.P4187348060245592542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160942 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A118881.P4187348060245592542

namespace A118881

/-- `(A160942(n+1)/(n+1))²` -/
def P4187348060245592542.Spec : Prop :=
  ∀ n, P4187348060245592542.a n = (A118881 n : ℚ)

end A118881

/-! ## A118881.P4930226055824960184

`A002620(A169805(n))`
-/

namespace A118881.P4930226055824960184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A169805 n).toNat

end

end A118881.P4930226055824960184

namespace A118881

/-- `A002620(A169805(n))` -/
def P4930226055824960184.Spec : Prop :=
  ∀ n, P4930226055824960184.a n = A118881 n

end A118881

/-!
# A118882: Numbers which are the sum of two squares in two or more different ways.

The programs for A118882, there is no canonical definition to state claims against.
-/

/-! ## A118882.P11838727237964933099

`∪[A007692(n+1), A085625(n+1)]`
-/

namespace A118882.P11838727237964933099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P11838727237964933099

/-! ## A118882.P13976541378651751534

`∪[A024508(n+1), A085625(n+1)]`
-/

namespace A118882.P13976541378651751534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P13976541378651751534

/-! ## A118882.P5808690368976286192

`∪[A007692(n+1), A134422(n+1)]`
-/

namespace A118882.P5808690368976286192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P5808690368976286192

/-! ## A118882.P4350188937446839918

`∪[A007692(n+1), A232438(n+1)]`
-/

namespace A118882.P4350188937446839918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P4350188937446839918

/-! ## A118882.P11454553559192657312

`∪[A024508(n+1), A232438(n+1)]`
-/

namespace A118882.P11454553559192657312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P11454553559192657312

/-! ## A118882.P14314568038118446423

`filter[A009177(n+1), A229062(#)]`
-/

namespace A118882.P14314568038118446423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A118882.P14314568038118446423

/-! ## A118882.P13911077117631953326

`filter[A009177(n+1), A353814(#)]`
-/

namespace A118882.P13911077117631953326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A118882.P13911077117631953326

/-! ## A118882.P8650013741473157691

`∩[A004431(n+1), A009177(n+1)]`
-/

namespace A118882.P8650013741473157691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P8650013741473157691

/-! ## A118882.P6321873957097492560

`∩[A009177(n+1), A085989(n+1)]`
-/

namespace A118882.P6321873957097492560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P6321873957097492560

/-! ## A118882.P6810730178305653644

`∩[A000404(n+1), A009177(n+1)]`
-/

namespace A118882.P6810730178305653644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P6810730178305653644

/-! ## A118882.P11413162590571779523

`∩[A001983(n+1), A009177(n+1)]`
-/

namespace A118882.P11413162590571779523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P11413162590571779523

/-! ## A118882.P13743838387313843463

`∩[A001481(n+1), A009177(n+1)]`
-/

namespace A118882.P13743838387313843463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118882.P13743838387313843463

/-! ## A118882.P9186884189793898763

`lt[atan(A002828(n)), A025426(n)]`
-/

namespace A118882.P9186884189793898763
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A002828 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A118882.P9186884189793898763

/-! ## A118882.P12071954235614746642

`lt[1, A000161(n)]`
-/

namespace A118882.P12071954235614746642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118882.P12071954235614746642

/-! ## A118882.P6554306667711539409

`lt[2, A000925(n)]`
-/

namespace A118882.P6554306667711539409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118882.P6554306667711539409

/-! ## A118882.P13293374869454530771

`lt[8, A004018(n)]`
-/

namespace A118882.P13293374869454530771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118882.P13293374869454530771

/-! ## A118882.P2907699419601009522

`lt[n, A143574(n)]`
-/

namespace A118882.P2907699419601009522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118882.P2907699419601009522

/-! ## A118882.P17006143947485678872

`lt[8, abs(A104794(n))]`
-/

namespace A118882.P17006143947485678872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118882.P17006143947485678872

/-! ## A118882.P11592221811464939834

`lt[(A247367(n)+2)², n]`
-/

namespace A118882.P11592221811464939834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A247367 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118882.P11592221811464939834

/-! ## A118882.P3841062791610747544

`lt[2, A002654(n+1)]+1`
-/

namespace A118882.P3841062791610747544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118882.P3841062791610747544

/-!
# A118883: Smallest prime p with bigomega(p+1)=n, where bigomega(m)=A001222(m) is the number of prime divisors of m (counted with multiplicity).

The programs for A118883, there is no canonical definition to state claims against.
-/

/-! ## A118883.P1001672462620288271

`A156615(A084184(n)+1)`
-/

namespace A118883.P1001672462620288271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156615 (A084184 n + 1).toNat

end

end A118883.P1001672462620288271

/-!
# A118884: Triangle read by rows: T(n,k) is the number of binary sequences of length n containing k subsequences 0011 (n,k>=0).

The programs for A118884, there is no canonical definition to state claims against.
-/

/-! ## A118884.P8027976669059219899

`A118890(n)-A206499(n²+1)`
-/

namespace A118884.P8027976669059219899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118890 n - A206499 (n ^ 2 + 1)

end

end A118884.P8027976669059219899

/-! ## A118884.P6838750210476775523

`A118890(n)-A185037(A228577(n))`
-/

namespace A118884.P6838750210476775523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118890 n - A185037 (A228577 n).toNat

end

end A118884.P6838750210476775523

/-! ## A118884.P3018200111571418752

`A118890(n)-A185037(A247500(n))`
-/

namespace A118884.P3018200111571418752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118890 n - A185037 (A247500 n).toNat

end

end A118884.P3018200111571418752

/-! ## A118884.P17703399977061761269

`A118890(n)-A016346(A131120(n+1))`
-/

namespace A118884.P17703399977061761269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118890 n - A016346 (A131120 (n + 1)).toNat

end

end A118884.P17703399977061761269

/-!
# A118885: Number of binary sequences of length n containing exactly one subsequence 0011.

The programs for A118885, the canonical program `A118885.P5821775642827842182` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118885 has offset 0).

The definition of A118885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118885.P5821775642827842182

`∑[∑[A073778(n)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118885

/-- `∑[∑[A073778(n)]]` -/
def P5821775642827842182.Spec : Prop :=
  ∀ n, P5821775642827842182.a n = A118885 n

theorem P5821775642827842182.correct : P5821775642827842182.Spec := by
  intro n
  simp only [A118885]

end A118885

/-! ## A118885.P2242758197118189538

`∑[∑[A282791(∑[n-2]+4)]]`
-/

namespace A118885.P2242758197118189538
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (∑ j ∈ Finset.range (n + 1), f3 j + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118885.P2242758197118189538

namespace A118885

/-- `∑[∑[A282791(∑[n-2]+4)]]` -/
def P2242758197118189538.Spec : Prop :=
  ∀ n, P2242758197118189538.a n = A118885 n

end A118885

/-! ## A118885.P5800408633756133081

`∑[∑[A282885(∑[n-2]+4)]]`
-/

namespace A118885.P5800408633756133081
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (∑ j ∈ Finset.range (n + 1), f3 j + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118885.P5800408633756133081

namespace A118885

/-- `∑[∑[A282885(∑[n-2]+4)]]` -/
def P5800408633756133081.Spec : Prop :=
  ∀ n, P5800408633756133081.a n = A118885 n

end A118885

/-! ## A118885.P10324089496516990505

`∑[∑[A283572(∑[n-2]+4)]]`
-/

namespace A118885.P10324089496516990505
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283572 (∑ j ∈ Finset.range (n + 1), f3 j + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118885.P10324089496516990505

namespace A118885

/-- `∑[∑[A283572(∑[n-2]+4)]]` -/
def P10324089496516990505.Spec : Prop :=
  ∀ n, P10324089496516990505.a n = A118885 n

end A118885

/-! ## A118885.P2038804772202492273

`∑[∑[A283042(∑[n-2]+4)]]`
-/

namespace A118885.P2038804772202492273
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (∑ j ∈ Finset.range (n + 1), f3 j + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118885.P2038804772202492273

namespace A118885

/-- `∑[∑[A283042(∑[n-2]+4)]]` -/
def P2038804772202492273.Spec : Prop :=
  ∀ n, P2038804772202492273.a n = A118885 n

end A118885

/-!
# A118886: Numbers expressible as x^2 + x*y + y^2, 0 <= x <= y, in 2 or more ways.

The programs for A118886, the canonical program `A118886.P18321281413549148776` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118886 has offset 1).

The definition of A118886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118886.P18321281413549148776

`filter[A387216(n+1), A353816(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A118886

/-- `filter[A387216(n+1), A353816(#)]` -/
def P18321281413549148776.Spec : Prop :=
  ∀ n, P18321281413549148776.a n = A118886 (n + 1)

theorem P18321281413549148776.correct : P18321281413549148776.Spec := by
  intro n
  simp only [A118886, Nat.add_sub_cancel]

end A118886

/-! ## A118886.P11951403427865648638

`∩[A003136(n+1), A387216(n+1)]`
-/

namespace A118886.P11951403427865648638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118886.P11951403427865648638

namespace A118886

/-- `∩[A003136(n+1), A387216(n+1)]` -/
def P11951403427865648638.Spec : Prop :=
  ∀ n, (P11951403427865648638.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P2313792704565465821

`∩[A024614(n+1), A387216(n+1)]`
-/

namespace A118886.P2313792704565465821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118886.P2313792704565465821

namespace A118886

/-- `∩[A024614(n+1), A387216(n+1)]` -/
def P2313792704565465821.Spec : Prop :=
  ∀ n, (P2313792704565465821.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P9132961512815977714

`∩[A092572(n+1), A387216(n+1)]`
-/

namespace A118886.P9132961512815977714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118886.P9132961512815977714

namespace A118886

/-- `∩[A092572(n+1), A387216(n+1)]` -/
def P9132961512815977714.Spec : Prop :=
  ∀ n, (P9132961512815977714.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P17550214104012721292

`lt[12, A033716(4*n)]`
-/

namespace A118886.P17550214104012721292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P17550214104012721292

namespace A118886

/-- `lt[12, A033716(4*n)]` -/
def P17550214104012721292.Spec : Prop :=
  ∀ n, (P17550214104012721292.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P12470157078941742233

`lt[1, floor(sqrt(A119395(4*n)))]`
-/

namespace A118886.P12470157078941742233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A119395 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P12470157078941742233

namespace A118886

/-- `lt[1, floor(sqrt(A119395(4*n)))]` -/
def P12470157078941742233.Spec : Prop :=
  ∀ n, (P12470157078941742233.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P3468355026704393820

`lt[1, A088534(n)]`
-/

namespace A118886.P3468355026704393820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P3468355026704393820

namespace A118886

/-- `lt[1, A088534(n)]` -/
def P3468355026704393820.Spec : Prop :=
  ∀ n, (P3468355026704393820.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P7155692825322063828

`lt[12, A004016(n)]`
-/

namespace A118886.P7155692825322063828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P7155692825322063828

namespace A118886

/-- `lt[12, A004016(n)]` -/
def P7155692825322063828.Spec : Prop :=
  ∀ n, (P7155692825322063828.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P17438516100764326141

`lt[12, -A122859(n)]`
-/

namespace A118886.P17438516100764326141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A122859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P17438516100764326141

namespace A118886

/-- `lt[12, -A122859(n)]` -/
def P17438516100764326141.Spec : Prop :=
  ∀ n, (P17438516100764326141.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P8023450697749409965

`lt[2, A002324(n+1)]+1`
-/

namespace A118886.P8023450697749409965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118886.P8023450697749409965

namespace A118886

/-- `lt[2, A002324(n+1)]+1` -/
def P8023450697749409965.Spec : Prop :=
  ∀ n, (P8023450697749409965.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P16702191886383052448

`lt[2, A093829(n+1)]+1`
-/

namespace A118886.P16702191886383052448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118886.P16702191886383052448

namespace A118886

/-- `lt[2, A093829(n+1)]+1` -/
def P16702191886383052448.Spec : Prop :=
  ∀ n, (P16702191886383052448.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P1635976227443507647

`lt[2, A122860(n+1)]+1`
-/

namespace A118886.P1635976227443507647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118886.P1635976227443507647

namespace A118886

/-- `lt[2, A122860(n+1)]+1` -/
def P1635976227443507647.Spec : Prop :=
  ∀ n, (P1635976227443507647.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P12276987592639902655

`lt[2, A002324(A028310(n))]`
-/

namespace A118886.P12276987592639902655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P12276987592639902655

namespace A118886

/-- `lt[2, A002324(A028310(n))]` -/
def P12276987592639902655.Spec : Prop :=
  ∀ n, (P12276987592639902655.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P3967681600233991953

`lt[6, A096936(A008574(n))]`
-/

namespace A118886.P3967681600233991953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118886.P3967681600233991953

namespace A118886

/-- `lt[6, A096936(A008574(n))]` -/
def P3967681600233991953.Spec : Prop :=
  ∀ n, (P3967681600233991953.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P9359246941148775663

`lt[A188259(n+1), A131099(n+1)]+1`
-/

namespace A118886.P9359246941148775663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A118886.P9359246941148775663

namespace A118886

/-- `lt[A188259(n+1), A131099(n+1)]+1` -/
def P9359246941148775663.Spec : Prop :=
  ∀ n, (P9359246941148775663.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P16144770771223684635

`lt[2, A113447(2*(n+1))]+1`
-/

namespace A118886.P16144770771223684635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118886.P16144770771223684635

namespace A118886

/-- `lt[2, A113447(2*(n+1))]+1` -/
def P16144770771223684635.Spec : Prop :=
  ∀ n, (P16144770771223684635.a n : ℤ) = A118886 (n + 1)

end A118886

/-! ## A118886.P13285929763541883276

`lt[1, A005928(3*n)/12]`
-/

namespace A118886.P13285929763541883276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005928 (3 * n) : ℚ) / 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A118886.P13285929763541883276

namespace A118886

/-- `lt[1, A005928(3*n)/12]` -/
def P13285929763541883276.Spec : Prop :=
  ∀ n, (P13285929763541883276.a n : ℤ) = A118886 (n + 1)

end A118886

/-!
# A118887: Number of ways to place n objects with weights 1,2,...,n evenly spaced around the circumference of a circular disk so that the disk will exactly balance on the center point.

The programs for A118887, there is no canonical definition to state claims against.
-/

/-! ## A118887.P14246361540839960376

`lcm(A046665(n+1), A118888(n+1))`
-/

namespace A118887.P14246361540839960376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046665 (n + 1)) (A118888 (n + 1))

end

end A118887.P14246361540839960376

/-! ## A118887.P4698706618319170466

`and(-A069859(n+1), A118888(n+1))`
-/

namespace A118887.P4698706618319170466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A069859 (n + 1)) (A118888 (n + 1))

end

end A118887.P4698706618319170466

/-! ## A118887.P10324146028183665240

`and(-A100574(n+1), A118888(n+1))`
-/

namespace A118887.P10324146028183665240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A100574 (n + 1)) (A118888 (n + 1))

end

end A118887.P10324146028183665240

/-! ## A118887.P14798323125614728293

`and(-A243822(n+1), A118888(n+1))`
-/

namespace A118887.P14798323125614728293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A243822 (n + 1)) (A118888 (n + 1))

end

end A118887.P14798323125614728293

/-!
# A118890: Triangle read by rows: T(n,k) is the number of binary sequences of length n containing k subsequences 0110 (n,k >= 0).

The programs for A118890, there is no canonical definition to state claims against.
-/

/-! ## A118890.P1692987249322561848

`A206499(n²+1)+A118884(n)`
-/

namespace A118890.P1692987249322561848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (n ^ 2 + 1) + A118884 n

end

end A118890.P1692987249322561848

/-! ## A118890.P18298506668072341581

`A212619(n²+1)+A118884(n)`
-/

namespace A118890.P18298506668072341581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n ^ 2 + 1) + A118884 n

end

end A118890.P18298506668072341581

/-! ## A118890.P17778117342489789444

`A181154(2*n+1)+A118884(n)`
-/

namespace A118890.P17778117342489789444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181154 (2 * n + 1) + A118884 n

end

end A118890.P17778117342489789444

/-! ## A118890.P689481863645748647

`A340998(A002061(n))+A118884(n)`
-/

namespace A118890.P689481863645748647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A002061 n).toNat + 140) + A118884 n

end

end A118890.P689481863645748647

/-! ## A118890.P13102094898705582619

`A185037(A247500(n))+A118884(n)`
-/

namespace A118890.P13102094898705582619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A247500 n).toNat + A118884 n

end

end A118890.P13102094898705582619

/-!
# A118891: Number of binary sequences of length n with no subsequence 01110.

The programs for A118891, there is no canonical definition to state claims against.
-/

/-! ## A118891.P7543253355433837481

`A100196(floor(sqrt(A081627(n))))`
-/

namespace A118891.P7543253355433837481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.sqrt (A081627 n)).toNat

end

end A118891.P7543253355433837481

/-! ## A118891.P10849758532725170623

`A100196(ceil(sqrt(A081627(n))))`
-/

namespace A118891.P10849758532725170623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A081627 n : ℝ)⌉.toNat

end

end A118891.P10849758532725170623

/-! ## A118891.P7926246596825828242

`A100196(round(sqrt(A081627(n))))`
-/

namespace A118891.P7926246596825828242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (SequenceMachineLib.roundAway (Real.sqrt (A081627 n : ℝ))).toNat

end

end A118891.P7926246596825828242

/-! ## A118891.P10269256537720188366

`∑[A026819(∑[A179467(n)])]`
-/

namespace A118891.P10269256537720188366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118891.P10269256537720188366

/-! ## A118891.P15684935387088491477

`∑[A046155(∑[A179467(n)])]`
-/

namespace A118891.P15684935387088491477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118891.P15684935387088491477

/-!
# A118892: Number of binary sequences of length n containing exactly one subsequence 0110.

The programs for A118892, there is no canonical definition to state claims against.
-/

/-! ## A118892.P4545212063499350784

`∑[∑[ceil((A303954(2^n)+1)/10)]-n-1]`
-/

namespace A118892.P4545212063499350784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A303954 (2 ^ n) + 1 : ℚ) / 10⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118892.P4545212063499350784

/-! ## A118892.P17554991962144814351

`∑[∑[A088226(A001256(n))]]`
-/

namespace A118892.P17554991962144814351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A001256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118892.P17554991962144814351

/-! ## A118892.P12184043791013216900

`∑[∑[A130696(A000055(n))]]`
-/

namespace A118892.P12184043791013216900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A000055 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118892.P12184043791013216900

/-! ## A118892.P17372872457861763112

`∑[∑[A259361(A000055(n)²)]]`
-/

namespace A118892.P17372872457861763112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A000055 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118892.P17372872457861763112

/-! ## A118892.P6713142479280425888

`A036388(n+1)-A086015(A284495(n+1))`
-/

namespace A118892.P6713142479280425888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036388 (n + 1) - A086015 (A284495 (n + 1)).toNat

end

end A118892.P6713142479280425888

/-!
# A118894: Numbers m such that the Pell equation x^2-m*y^2=1 has fundamental solution with x even.

The programs for A118894, there is no canonical definition to state claims against.
-/

/-! ## A118894.P16975675546684481900

`lt[gcd(2, n), A007968(n)]`
-/

namespace A118894.P16975675546684481900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118894.P16975675546684481900

/-! ## A118894.P8545574963604400500

`lt[1, A007968(n*n%2)]`
-/

namespace A118894.P8545574963604400500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (n * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118894.P8545574963604400500

/-! ## A118894.P9323827700389179433

`eq[2, A007968(n^and(1, n))]`
-/

namespace A118894.P9323827700389179433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118894.P9323827700389179433

/-! ## A118894.P16946965649996835269

`record[lcm(2, A007970(n+1))/2]`
-/

namespace A118894.P16946965649996835269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007970 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118894.P16946965649996835269

/-! ## A118894.P1085982231880936128

`eq[1, A010341(n^and(1, n))%2]`
-/

namespace A118894.P1085982231880936128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n ^ Nat.land 1 n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118894.P1085982231880936128

/-! ## A118894.P16228944038858782834

`eq[A007968(n), A010141(n)]`
-/

namespace A118894.P16228944038858782834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118894.P16228944038858782834

/-! ## A118894.P4060273088338194542

`eq[A007968(n), A014391(n)]`
-/

namespace A118894.P4060273088338194542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118894.P4060273088338194542

/-! ## A118894.P7790809215524736710

`eq[A007968(n), A040003(n)]`
-/

namespace A118894.P7790809215524736710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118894.P7790809215524736710

/-! ## A118894.P14358847605078520397

`eq[A007968(n), A040008(n)]`
-/

namespace A118894.P14358847605078520397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118894.P14358847605078520397

/-! ## A118894.P10880234793100542244

`eq[A007968(n), A040015(n)]`
-/

namespace A118894.P10880234793100542244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118894.P10880234793100542244

/-!
# A118895: Numbers n with property that both n and its digit reversal are perfect powers (i.e., in A001597).

The programs for A118895, there is no canonical definition to state claims against.
-/

/-! ## A118895.P11869915615072838905

`eq[n*A301573(A004086(n)), A301573(n)]`
-/

namespace A118895.P11869915615072838905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A301573 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118895.P11869915615072838905

/-! ## A118895.P15637250894842427152

`filter[A118715(n+2), A075802(#)]`
-/

namespace A118895.P15637250894842427152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A118895.P15637250894842427152

/-! ## A118895.P11883164384798933865

`∩[A118715(n+1), ∑[A076412(n)]]`
-/

namespace A118895.P11883164384798933865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118895.P11883164384798933865

/-! ## A118895.P13301759662461186790

`∩[A001597(n+1), A118715(n+1)]`
-/

namespace A118895.P13301759662461186790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118895.P13301759662461186790

/-! ## A118895.P5096907315313171714

`∩[A118715(n+1), abs(A157985(n+1))]`
-/

namespace A118895.P5096907315313171714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118895.P5096907315313171714

/-!
# A118896: Number of powerful numbers <= 10^n.

The programs for A118896, there is no canonical definition to state claims against.
-/

/-! ## A118896.P9080800985674460861

`A381496(n)+A076048(n)`
-/

namespace A118896.P9080800985674460861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381496 n + A076048 n

end

end A118896.P9080800985674460861

/-! ## A118896.P11118890616576638161

`xor(A099580(n), A331269(A165311(n)))`
-/

namespace A118896.P11118890616576638161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099580 n) (A331269 (A165311 n).toNat)

end

end A118896.P11118890616576638161

/-!
# A118898: Number of binary sequences of length n containing exactly one subsequence 0000.

The programs for A118898, there is no canonical definition to state claims against.
-/

/-! ## A118898.P10550449812350114998

`A051889(A084636(n))-A332577(n)`
-/

namespace A118898.P10550449812350114998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A084636 n).toNat - A332577 n

end

end A118898.P10550449812350114998

/-! ## A118898.P14170559143432542601

`A135663(∑[A352853(n)])`
-/

namespace A118898.P14170559143432542601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118898.P14170559143432542601

/-! ## A118898.P10843123860721481494

`A113221(A006979(n+1))`
-/

namespace A118898.P10843123860721481494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A006979 (n + 1)).toNat

end

end A118898.P10843123860721481494

/-! ## A118898.P5620316260563691785

`A048273(A305197(n)-1)`
-/

namespace A118898.P5620316260563691785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A305197 n - 1).toNat

end

end A118898.P5620316260563691785

/-! ## A118898.P14963320915760607974

`A338430(xor(5, A100396(n)))`
-/

namespace A118898.P14963320915760607974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (Int.xor 5 (A100396 n)).toNat

end

end A118898.P14963320915760607974

