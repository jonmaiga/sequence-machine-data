import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A386401: a(n) = numerator(sigma(n)*phi(n)/n^2).

The programs for A386401, there is no canonical definition to state claims against.
-/

/-! ## A386401.P11263551373994038025

`A062354(n+1)/(n+1)²*A386402(n+1)`
-/

namespace A386401.P11263551373994038025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A386402 (n + 1) : ℚ)

end

end A386401.P11263551373994038025

/-! ## A386401.P7332682355763609104

`A319676(A064549(n+1))`
-/

namespace A386401.P7332682355763609104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319676 (A064549 (n + 1)).toNat

end

end A386401.P7332682355763609104

/-! ## A386401.P16772088145228102710

`A319676((n+1)*A007947(n+1))`
-/

namespace A386401.P16772088145228102710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319676 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A386401.P16772088145228102710

/-!
# A386402: a(n) = denominator(sigma(n)*phi(n)/n^2).

The programs for A386402, there is no canonical definition to state claims against.
-/

/-! ## A386402.P7806341688389168970

`(n+1)²/A062354(n+1)*A386401(n+1)`
-/

namespace A386402.P7806341688389168970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A062354 (n + 1) : ℚ) * (A386401 (n + 1) : ℚ)

end

end A386402.P7806341688389168970

/-! ## A386402.P15285837568605708546

`A319677(A064549(n+1))`
-/

namespace A386402.P15285837568605708546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (A064549 (n + 1)).toNat

end

end A386402.P15285837568605708546

/-! ## A386402.P7526090554549567523

`A319677((n+1)*A007947(n+1))`
-/

namespace A386402.P7526090554549567523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A386402.P7526090554549567523

/-! ## A386402.P11474479338460103890

`A017666(n+1)*A020639(A139050(n+1))`
-/

namespace A386402.P11474479338460103890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) * A020639 (A139050 (n + 1)).toNat

end

end A386402.P11474479338460103890

/-!
# A386406: Length of the preperiodic part of the decimal expansion of 1/n, including any leading zeros from the period.

The programs for A386406, there is no canonical definition to state claims against.
-/

/-! ## A386406.P10640364693700669932

`or(char[A289792(n+1)], A114206(n+2))`
-/

namespace A386406.P10640364693700669932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289792 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A114206 (n + 2))

end

end A386406.P10640364693700669932

/-! ## A386406.P7733290090289992574

`or(A080885(A106872(n+3)), A114206(n+2))`
-/

namespace A386406.P7733290090289992574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080885 (A106872 (n + 3)).toNat) (A114206 (n + 2))

end

end A386406.P7733290090289992574

/-!
# A386417: Numbers k for which there exists at least one nondegenerate triangle with sides that are distinct divisors of k.

The programs for A386417, there is no canonical definition to state claims against.
-/

/-! ## A386417.P7871021242657278738

`record[A375126(A005101(n+1))]`
-/

namespace A386417.P7871021242657278738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (A005101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386417.P7871021242657278738

/-! ## A386417.P2828855060571558970

`lt[A093891(n+1), A358137(A225650(n))]`
-/

namespace A386417.P2828855060571558970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (A225650 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386417.P2828855060571558970

/-! ## A386417.P15278893476575680409

`lt[A239063(n+1), A358137(A225650(n))]`
-/

namespace A386417.P15278893476575680409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (A225650 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386417.P15278893476575680409

/-! ## A386417.P11248689899077261662

`A005101(record[A106486(3*n+2)])`
-/

namespace A386417.P11248689899077261662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386417.P11248689899077261662

/-!
# A386419: Odd numbers k that are closer to being perfect than previous terms, and also satisfy the condition that phi(k) = phi(sigma(k)).

The programs for A386419, there is no canonical definition to state claims against.
-/

/-! ## A386419.P14405666974408461968

`A030103(∏[∑[A111123(n)]])`
-/

namespace A386419.P14405666974408461968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386419.P14405666974408461968

/-!
# A386421: Odd numbers k that are closer to being perfect than previous terms and also satisfy the condition that gcd(k, A003961(k)) is equal to gcd(sigma(k), A003961(k)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

The programs for A386421, there is no canonical definition to state claims against.
-/

/-! ## A386421.P14734752606839581656

`∏{e}[(n+1)!², #+1]`
-/

namespace A386421.P14734752606839581656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A386421.P14734752606839581656

/-! ## A386421.P6305979299130453845

`∏{e}[∏[(n+1)²], #+1]`
-/

namespace A386421.P6305979299130453845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A386421.P6305979299130453845

/-!
# A386427: 

The programs for A386427, there is no canonical definition to state claims against.
-/

/-! ## A386427.P2334072116484206264

`A348743(n+1)`
-/

namespace A386427.P2334072116484206264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348743 (n + 1)

end

end A386427.P2334072116484206264

/-!
# A386428: Odd numbers of the form p^(1+4k) * r^2, where p is prime of the form 1+4m, k > 0, r > 1, and gcd(p,r) = 1.

The programs for A386428, there is no canonical definition to state claims against.
-/

/-! ## A386428.P5907116303224812217

`A228058(A388279(n+1))`
-/

namespace A386428.P5907116303224812217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (A388279 (n + 1)).toNat

end

end A386428.P5907116303224812217

/-!
# A386429: Odd composites k such that A342926(k) is even and A342926(2*k) is a multiple of 3 and which satisfy Euler's condition for odd perfect numbers (A228058).

The programs for A386429, there is no canonical definition to state claims against.
-/

/-! ## A386429.P9352514912574556228

`∩[A228058(n+1), A347874(n+1)]`
-/

namespace A386429.P9352514912574556228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P9352514912574556228

/-! ## A386429.P4730634635768626406

`∩[A191218(n+1), A347874(n+1)]`
-/

namespace A386429.P4730634635768626406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P4730634635768626406

/-! ## A386429.P15050655655171905473

`∩[A228057(n+1), A347874(n+1)]`
-/

namespace A386429.P15050655655171905473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P15050655655171905473

/-! ## A386429.P5046165246765181396

`∩[A347874(n+1), A389459(n+1)]`
-/

namespace A386429.P5046165246765181396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P5046165246765181396

/-! ## A386429.P7985845803460434552

`∩[A347874(n+1), A389458(n+1)]`
-/

namespace A386429.P7985845803460434552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P7985845803460434552

/-! ## A386429.P27206049222027705

`∩[A347874(n+1), A388983(n+1)]`
-/

namespace A386429.P27206049222027705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P27206049222027705

/-! ## A386429.P9145215297937940961

`∩[A228056(n+1), A347874(n+1)]`
-/

namespace A386429.P9145215297937940961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P9145215297937940961

/-! ## A386429.P996547549216891784

`filter[A347874(n+1), A066829(#)]`
-/

namespace A386429.P996547549216891784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A386429.P996547549216891784

/-! ## A386429.P6103240733054235688

`filter[A347874(n+1), A324903(#)]`
-/

namespace A386429.P6103240733054235688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A386429.P6103240733054235688

/-! ## A386429.P5476830405034183610

`filter[A347874(n+1), A353812(#)]`
-/

namespace A386429.P5476830405034183610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A386429.P5476830405034183610

/-! ## A386429.P16126677260241689388

`filter[A347874(n+1), A358678(#)]`
-/

namespace A386429.P16126677260241689388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A386429.P16126677260241689388

/-! ## A386429.P16018768220551235272

`filter[A347874(n+1), A358769(#)]`
-/

namespace A386429.P16018768220551235272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A386429.P16018768220551235272

/-! ## A386429.P15196631858333932447

`filter[A347874(n+1), A358770(#)]`
-/

namespace A386429.P15196631858333932447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A386429.P15196631858333932447

/-! ## A386429.P12654489574580121550

`filter[A347874(n+1), A359150(#)]`
-/

namespace A386429.P12654489574580121550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A386429.P12654489574580121550

/-! ## A386429.P10498196111779303900

`filter[A347874(n+1), A359372(#)]`
-/

namespace A386429.P10498196111779303900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A386429.P10498196111779303900

/-! ## A386429.P12616274488551915832

`∩[A347874(n+1), A359151(n+1)]`
-/

namespace A386429.P12616274488551915832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P12616274488551915832

/-! ## A386429.P14160922955127281497

`∩[A191217(n+1), A347874(n+1)]`
-/

namespace A386429.P14160922955127281497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386429.P14160922955127281497

/-! ## A386429.P15324937029389698862

`filter[A347874(n+1), A049240(#)]`
-/

namespace A386429.P15324937029389698862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A386429.P15324937029389698862

/-! ## A386429.P11578313850261426152

`filter[A347874(n+1), A323158(#)]`
-/

namespace A386429.P11578313850261426152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A386429.P11578313850261426152

/-! ## A386429.P14640281947681073257

`filter[A347874(n+1), A324908(#)]`
-/

namespace A386429.P14640281947681073257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A386429.P14640281947681073257

/-!
# A386430: Odd numbers k such that there are no prime factors p of sigma(k) such that p does not divide A003961(k) and the valuation(k, p) is different from valuation(sigma(k), p), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A386430, there is no canonical definition to state claims against.
-/

/-! ## A386430.P3600216730352595879

`filter[A351554(n+1), A379952(#)]`
-/

namespace A386430.P3600216730352595879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A386430.P3600216730352595879

/-! ## A386430.P4171022799136120480

`∩[A047241(n+1), A351554(n+1)]`
-/

namespace A386430.P4171022799136120480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386430.P4171022799136120480

/-! ## A386430.P8191851621953670

`∩[A351554(n+1), A004273(n)]`
-/

namespace A386430.P8191851621953670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386430.P8191851621953670

/-! ## A386430.P18419289493889707726

`∩[A351554(n+1), A060747(n)]`
-/

namespace A386430.P18419289493889707726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386430.P18419289493889707726

/-! ## A386430.P11853510462343783453

`∩[A128201(n+1), A351554(n+1)]`
-/

namespace A386430.P11853510462343783453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386430.P11853510462343783453

/-! ## A386430.P17474726259751789958

`filter[A351554(n+1), A000035(#)]`
-/

namespace A386430.P17474726259751789958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A386430.P17474726259751789958

/-!
# A386431: Triangle T(n,k) read by rows, where row n contains the numbers 1, ..., n^2, written columnwise into a square matrix and read rowwise.

The programs for A386431, there is no canonical definition to state claims against.
-/

/-! ## A386431.P5232922445090336553

`A238013(n+1)+A074279(n+1)*A237451(n+1)`
-/

namespace A386431.P5232922445090336553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238013 (n + 1) + A074279 (n + 1) * A237451 (n + 1)

end

end A386431.P5232922445090336553

/-!
# A386432: a(n) = Sum_{k=0..n} n^k * binomial(n,k) * Catalan(k+1).

The programs for A386432, there is no canonical definition to state claims against.
-/

/-! ## A386432.P11820185904954149289

`A386408(∑[4*n])`
-/

namespace A386432.P11820185904954149289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386432.P11820185904954149289

/-!
# A386433: Achilles numbers with a primorial squarefree kernel that are not products of primorials.

The programs for A386433, there is no canonical definition to state claims against.
-/

/-! ## A386433.P8795609520406896906

`∩[A369420(n+1), A377854(n+1)]`
-/

namespace A386433.P8795609520406896906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P8795609520406896906

/-! ## A386433.P4997195925594579934

`∩[A056808(n+1), A377854(n+1)]`
-/

namespace A386433.P4997195925594579934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P4997195925594579934

/-! ## A386433.P7958920697916222249

`∩[A056808(n+1), A378859(n+1)]`
-/

namespace A386433.P7958920697916222249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P7958920697916222249

/-! ## A386433.P15838934219451639437

`∩[A369420(n+1), A378859(n+1)]`
-/

namespace A386433.P15838934219451639437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P15838934219451639437

/-! ## A386433.P1286875358561561800

`∩[A056808(n+1), A390952(n+1)]`
-/

namespace A386433.P1286875358561561800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P1286875358561561800

/-! ## A386433.P15701384839867377633

`∩[A369420(n+1), A390952(n+1)]`
-/

namespace A386433.P15701384839867377633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P15701384839867377633

/-! ## A386433.P16431727739470502978

`∩[A055932(n+1), A387958(n+1)]`
-/

namespace A386433.P16431727739470502978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P16431727739470502978

/-! ## A386433.P8131132830633387871

`∩[A056808(n+1), A387958(n+1)]`
-/

namespace A386433.P8131132830633387871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P8131132830633387871

/-! ## A386433.P17233813475616523182

`∩[A363814(n+1), A387958(n+1)]`
-/

namespace A386433.P17233813475616523182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P17233813475616523182

/-! ## A386433.P6993896752773924641

`∩[A369374(n+1), A387958(n+1)]`
-/

namespace A386433.P6993896752773924641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P6993896752773924641

/-! ## A386433.P13472642962782877415

`∩[A369420(n+1), A387958(n+1)]`
-/

namespace A386433.P13472642962782877415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P13472642962782877415

/-! ## A386433.P9699490222591152528

`∩[A377854(n+1), A387958(n+1)]`
-/

namespace A386433.P9699490222591152528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P9699490222591152528

/-! ## A386433.P9387388766222063983

`∩[A387901(n+1), A387958(n+1)]`
-/

namespace A386433.P9387388766222063983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P9387388766222063983

/-! ## A386433.P9430897541628581751

`∩[A052486(n+1), A056808(n+1)]`
-/

namespace A386433.P9430897541628581751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P9430897541628581751

/-! ## A386433.P3226804615638907654

`∩[A052486(n+1), A369420(n+1)]`
-/

namespace A386433.P3226804615638907654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P3226804615638907654

/-! ## A386433.P16040615004931667044

`∩[A304450(n+1), A369420(n+1)]`
-/

namespace A386433.P16040615004931667044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P16040615004931667044

/-! ## A386433.P6297414222438906188

`∩[A304450(n+1), A387958(n+1)]`
-/

namespace A386433.P6297414222438906188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P6297414222438906188

/-! ## A386433.P6021546386364749405

`∩[A369636(n+1), A377854(n+1)]`
-/

namespace A386433.P6021546386364749405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P6021546386364749405

/-! ## A386433.P2279089249268354183

`∩[A369420(n+1), A389753(n+1)]`
-/

namespace A386433.P2279089249268354183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386433.P2279089249268354183

/-!
# A386434: Achilles numbers k such that A053669(k) < A006530(k).

The programs for A386434, there is no canonical definition to state claims against.
-/

/-! ## A386434.P11856972019717943714

`∩[A052486(n+1), A369417(n+1)]`
-/

namespace A386434.P11856972019717943714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386434.P11856972019717943714

/-! ## A386434.P12399253472986143388

`∩[A369417(n+1), A387958(n+1)]`
-/

namespace A386434.P12399253472986143388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386434.P12399253472986143388

/-! ## A386434.P586508433330684028

`∩[A369417(n+1), A389753(n+1)]`
-/

namespace A386434.P586508433330684028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386434.P586508433330684028

/-! ## A386434.P6569984660197720268

`∩[A369417(n+1), A391415(n+1)]`
-/

namespace A386434.P6569984660197720268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386434.P6569984660197720268

/-! ## A386434.P221138604099623941

`filter[A369417(n+1), A132350(#)]`
-/

namespace A386434.P221138604099623941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A386434.P221138604099623941

/-!
# A386438: a(n) = sigma(n) + omega(n) - n * Sum_{p|n, p prime} 1 / p.

The programs for A386438, the canonical program `A386438.P6678444631215707728` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386438 has offset 1).

The definition of A386438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007503, A348219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386438.P6678444631215707728

`A007503(n+1)-A348219(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A386438

/-- `A007503(n+1)-A348219(n+1)` -/
def P6678444631215707728.Spec : Prop :=
  ∀ n, P6678444631215707728.a n = A386438 (n + 1)

theorem P6678444631215707728.correct : P6678444631215707728.Spec := by
  intro n
  simp only [A386438, Nat.add_sub_cancel]

end A386438

/-! ## A386438.P17907480843579592742

`A000203(n+1)+A001221(n+1)-A069359(n+1)`
-/

namespace A386438.P17907480843579592742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A001221 (n + 1) - A069359 (n + 1)

end

end A386438.P17907480843579592742

namespace A386438

/-- `A000203(n+1)+A001221(n+1)-A069359(n+1)` -/
def P17907480843579592742.Spec : Prop :=
  ∀ n, P17907480843579592742.a n = A386438 (n + 1)

end A386438

/-! ## A386438.P12388804059559811169

`A380457(n+1)-A069359(n+1)`
-/

namespace A386438.P12388804059559811169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380457 (n + 1) - A069359 (n + 1)

end

end A386438.P12388804059559811169

namespace A386438

/-- `A380457(n+1)-A069359(n+1)` -/
def P12388804059559811169.Spec : Prop :=
  ∀ n, P12388804059559811169.a n = A386438 (n + 1)

end A386438

/-! ## A386438.P14380877104192058215

`A155085(n+1)-A348203(n+1)`
-/

namespace A386438.P14380877104192058215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A348203 (n + 1)

end

end A386438.P14380877104192058215

namespace A386438

/-- `A155085(n+1)-A348203(n+1)` -/
def P14380877104192058215.Spec : Prop :=
  ∀ n, P14380877104192058215.a n = A386438 (n + 1)

end A386438

/-! ## A386438.P1703357504969522210

`A002033(n)%A151536(n+1)+n+1`
-/

namespace A386438.P1703357504969522210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 n) (A151536 (n + 1)) + (n + 1 : ℤ)

end

end A386438.P1703357504969522210

namespace A386438

/-- `A002033(n)%A151536(n+1)+n+1` -/
def P1703357504969522210.Spec : Prop :=
  ∀ n, P1703357504969522210.a n = A386438 (n + 1)

end A386438

/-!
# A386441: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 27.

The programs for A386441, the canonical program `A386441.P6963524747857182039` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386441 has offset 0).

The definition of A386441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386441.P17559423822766422445

`A007318(n)%27`
-/

namespace A386441.P17559423822766422445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 27

end

end A386441.P17559423822766422445

namespace A386441

/-- `A007318(n)%27` -/
def P17559423822766422445.Spec : Prop :=
  ∀ n, P17559423822766422445.a n = A386441 n

end A386441

/-! ## A386441.P2378271827238403800

`Δ[A102363(n)]%27`
-/

namespace A386441.P2378271827238403800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 27

end

end A386441.P2378271827238403800

namespace A386441

/-- `Δ[A102363(n)]%27` -/
def P2378271827238403800.Spec : Prop :=
  ∀ n, P2378271827238403800.a n = A386441 n

end A386441

/-! ## A386441.P1848733916109970193

`(A014473(n)+1)%27`
-/

namespace A386441.P1848733916109970193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n + 1) 27

end

end A386441.P1848733916109970193

namespace A386441

/-- `(A014473(n)+1)%27` -/
def P1848733916109970193.Spec : Prop :=
  ∀ n, P1848733916109970193.a n = A386441 n

end A386441

/-! ## A386441.P6016581748369980028

`(A028326(n)/2)%27`
-/

namespace A386441.P6016581748369980028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)) 27

end

end A386441.P6016581748369980028

namespace A386441

/-- `(A028326(n)/2)%27` -/
def P6016581748369980028.Spec : Prop :=
  ∀ n, P6016581748369980028.a n = A386441 n

end A386441

/-! ## A386441.P10694760468443084777

`ceil(A129994(n)/2)%27`
-/

namespace A386441.P10694760468443084777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A129994 n : ℚ) / 2⌉ 27

end

end A386441.P10694760468443084777

namespace A386441

/-- `ceil(A129994(n)/2)%27` -/
def P10694760468443084777.Spec : Prop :=
  ∀ n, P10694760468443084777.a n = A386441 n

end A386441

/-! ## A386441.P3022408337793404705

`ceil(A134058(n)/2)%27`
-/

namespace A386441.P3022408337793404705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A134058 n : ℚ) / 2⌉ 27

end

end A386441.P3022408337793404705

namespace A386441

/-- `ceil(A134058(n)/2)%27` -/
def P3022408337793404705.Spec : Prop :=
  ∀ n, P3022408337793404705.a n = A386441 n

end A386441

/-! ## A386441.P10303973869961313989

`((A131061(n)+3)/4)%27`
-/

namespace A386441.P10303973869961313989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A131061 n + 3 : ℚ) / 4)) 27

end

end A386441.P10303973869961313989

namespace A386441

/-- `((A131061(n)+3)/4)%27` -/
def P10303973869961313989.Spec : Prop :=
  ∀ n, P10303973869961313989.a n = A386441 n

end A386441

/-! ## A386441.P17792805898466730109

`((A131063(n)+4)/5)%27`
-/

namespace A386441.P17792805898466730109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A131063 n + 4 : ℚ) / 5)) 27

end

end A386441.P17792805898466730109

namespace A386441

/-- `((A131063(n)+4)/5)%27` -/
def P17792805898466730109.Spec : Prop :=
  ∀ n, P17792805898466730109.a n = A386441 n

end A386441

/-! ## A386441.P6963524747857182039

`A074909(A056943(n))%27`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A386441

/-- `A074909(A056943(n))%27` -/
def P6963524747857182039.Spec : Prop :=
  ∀ n, P6963524747857182039.a n = A386441 n

theorem P6963524747857182039.correct : P6963524747857182039.Spec := by
  intro n
  simp only [A386441]

end A386441

/-! ## A386441.P6784623406356862181

`A074909(A083920(n))%27`
-/

namespace A386441.P6784623406356862181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (A083920 n).toNat) 27

end

end A386441.P6784623406356862181

namespace A386441

/-- `A074909(A083920(n))%27` -/
def P6784623406356862181.Spec : Prop :=
  ∀ n, P6784623406356862181.a n = A386441 n

end A386441

/-! ## A386441.P5132525479148059489

`A074909(A271439(n))%27`
-/

namespace A386441.P5132525479148059489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (A271439 n).toNat) 27

end

end A386441.P5132525479148059489

namespace A386441

/-- `A074909(A271439(n))%27` -/
def P5132525479148059489.Spec : Prop :=
  ∀ n, P5132525479148059489.a n = A386441 n

end A386441

/-!
# A386443: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} k^2 * a(k) * a(n-1-k).

The programs for A386443, there is no canonical definition to state claims against.
-/

/-! ## A386443.P6041044127990889207

`A244479(A235372(n)+A063776(n+1))`
-/

namespace A386443.P6041044127990889207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A235372 n + A063776 (n + 1)).toNat

end

end A386443.P6041044127990889207

/-! ## A386443.P1547091026943062840

`A002265(A344609(n+3)+A235372(n))`
-/

namespace A386443.P1547091026943062840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A344609 (n + 3) + A235372 n).toNat

end

end A386443.P1547091026943062840

/-!
# A386444: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} k^3 * a(k) * a(n-1-k).

The programs for A386444, there is no canonical definition to state claims against.
-/

/-! ## A386444.P5993576956164826220

`A328399(∑[2^n*a(n-1)]-1)` with `a(0)=2, a(1)=2`
-/

namespace A386444.P5993576956164826220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 ^ n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A386444.P5993576956164826220

/-!
# A386448: G.f. A(x) satisfies A(x) = 1/(1 - x - x^3*A''(x)).

The programs for A386448, there is no canonical definition to state claims against.
-/

/-! ## A386448.P6046345697334524550

`ceil(A058136(n+2)/37)`
-/

namespace A386448.P6046345697334524550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058136 (n + 2) : ℚ) / 37⌉

end

end A386448.P6046345697334524550

/-! ## A386448.P13384747809435542509

`A260594(A022553(n))`
-/

namespace A386448.P13384747809435542509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260594 (A022553 n).toNat

end

end A386448.P13384747809435542509

/-!
# A386449: G.f. A(x) satisfies A(x) = 1/(1 - x - x^4*A'''(x)).

The programs for A386449, there is no canonical definition to state claims against.
-/

/-! ## A386449.P7075816438331610955

`A178239(∑[floor(n/3)]^5)`
-/

namespace A386449.P7075816438331610955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178239 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 5).toNat

end

end A386449.P7075816438331610955

/-! ## A386449.P7667745430068844992

`A152540(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A386449.P7667745430068844992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A152540 (a (n - 1)).toNat

end

end A386449.P7667745430068844992

/-!
# A386450: G.f. A(x) satisfies A(x) = 1/(1 - x - x^5*A''''(x)).

The programs for A386450, there is no canonical definition to state claims against.
-/

/-! ## A386450.P11104995913813183461

`filter[A060455(n+2), A003849(#)]`
-/

namespace A386450.P11104995913813183461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003849 (f1 j).toNat = 1) n)

end

end A386450.P11104995913813183461

/-! ## A386450.P9375921572962439050

`A060455(A237258(n)^A000120(n))`
-/

namespace A386450.P9375921572962439050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 (SequenceMachineLib.roundAway ((A237258 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A386450.P9375921572962439050

/-! ## A386450.P10550187327046302937

`A060455(A390567(n)^A060455(n))`
-/

namespace A386450.P10550187327046302937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 (SequenceMachineLib.roundAway ((A390567 n : ℚ) ^ (A060455 n : ℤ))).toNat

end

end A386450.P10550187327046302937

/-!
# A386452: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} binomial(k+1,2) * a(k) * a(n-1-k).

The programs for A386452, there is no canonical definition to state claims against.
-/

/-! ## A386452.P11307035026488495185

`A071996(A124419(2*n)+n+1)`
-/

namespace A386452.P11307035026488495185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (A124419 (2 * n) + (n + 1 : ℤ)).toNat

end

end A386452.P11307035026488495185

/-! ## A386452.P12801769465381195470

`A004001(A354854(n+1)+A168658(n))`
-/

namespace A386452.P12801769465381195470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A354854 (n + 1) + A168658 n).toNat

end

end A386452.P12801769465381195470

/-!
# A386453: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} binomial(k+2,3) * a(k) * a(n-1-k).

The programs for A386453, there is no canonical definition to state claims against.
-/

/-! ## A386453.P15526635270347477993

`A238787(ceil(exp(n-1)))`
-/

namespace A386453.P15526635270347477993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238787 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A386453.P15526635270347477993

/-!
# A386454: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} binomial(k+3,4) * a(k) * a(n-1-k).

The programs for A386454, there is no canonical definition to state claims against.
-/

/-! ## A386454.P14327863781023346801

`A321228(∑[n])`
-/

namespace A386454.P14327863781023346801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321228 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386454.P14327863781023346801

/-!
# A386455: a(0) = 1; a(n) = a(n-1) + Sum_{k=0..n-1} binomial(k+4,5) * a(k) * a(n-1-k).

The programs for A386455, there is no canonical definition to state claims against.
-/

/-! ## A386455.P6072202875880924545

`A279963(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A386455.P6072202875880924545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A279963 (a (n - 1) ^ 2).toNat

end

end A386455.P6072202875880924545

/-!
# A386456: Square array read by ascending antidiagonals, where row n lists the parity of the n-th differences of the partition numbers (A000041).

The programs for A386456, there is no canonical definition to state claims against.
-/

/-! ## A386456.P16162056484091700695

`and(1, A175804(n))`
-/

namespace A386456.P16162056484091700695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A175804 n)

end

end A386456.P16162056484091700695

/-! ## A386456.P17048230268860712835

`lcm(A175804(n), A260196(n))%2`
-/

namespace A386456.P17048230268860712835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A175804 n) (A260196 n) % 2

end

end A386456.P17048230268860712835

/-! ## A386456.P8707451203772557684

`(A175804(n)%A020639(2*(n+1)))²`
-/

namespace A386456.P8707451203772557684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175804 n) (A020639 (2 * (n + 1))) ^ 2

end

end A386456.P8707451203772557684

/-! ## A386456.P12284232383434966418

`A175804(n)²%A175833(3*(n+1))`
-/

namespace A386456.P12284232383434966418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175804 n ^ 2) (A175833 (3 * (n + 1)))

end

end A386456.P12284232383434966418

/-! ## A386456.P16588679292189913771

`A000035(gcd(A175804(n), A366606(n)))`
-/

namespace A386456.P16588679292189913771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A175804 n) (A366606 n))

end

end A386456.P16588679292189913771

/-! ## A386456.P10442958620042128186

`(A222444(n+1)+A175804(n)+1)%2`
-/

namespace A386456.P10442958620042128186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222444 (n + 1) + A175804 n + 1) 2

end

end A386456.P10442958620042128186

/-! ## A386456.P1666772741354802974

`A000035(abs(A175804(n)))`
-/

namespace A386456.P1666772741354802974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A175804 n|.toNat

end

end A386456.P1666772741354802974

/-! ## A386456.P9289103687954863819

`A000035(A175804(n)+A002378(n))`
-/

namespace A386456.P9289103687954863819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A175804 n + A002378 n).toNat

end

end A386456.P9289103687954863819

/-! ## A386456.P12140248883414324823

`A000035(A177917(3*n+2)+A175804(n))`
-/

namespace A386456.P12140248883414324823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A177917 (3 * n + 2) + A175804 n).toNat

end

end A386456.P12140248883414324823

/-! ## A386456.P4731012943239602127

`A000035(A342192(n+1)+A175804(n))`
-/

namespace A386456.P4731012943239602127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A342192 (n + 1) + A175804 n).toNat

end

end A386456.P4731012943239602127

/-!
# A386457: Main diagonal of A386456.

The programs for A386457, there is no canonical definition to state claims against.
-/

/-! ## A386457.P7397660616478166461

`A379378(n)%2`
-/

namespace A386457.P7397660616478166461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379378 n) 2

end

end A386457.P7397660616478166461

/-! ## A386457.P6047946609590278496

`and(A158388(n), A379378(n))`
-/

namespace A386457.P6047946609590278496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A379378 n)

end

end A386457.P6047946609590278496

/-! ## A386457.P13027714926239011054

`and(A267871(n), A379378(n))`
-/

namespace A386457.P13027714926239011054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267871 n) (A379378 n)

end

end A386457.P13027714926239011054

/-! ## A386457.P335340479698795547

`and(A209530(n+1), A379378(n))`
-/

namespace A386457.P335340479698795547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A209530 (n + 1)) (A379378 n)

end

end A386457.P335340479698795547

/-! ## A386457.P8339558313554233981

`and(A092896(n), A379378(n))`
-/

namespace A386457.P8339558313554233981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092896 n) (A379378 n)

end

end A386457.P8339558313554233981

/-! ## A386457.P10973703820209190928

`and(A087289(n), A379378(n))`
-/

namespace A386457.P10973703820209190928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A379378 n)

end

end A386457.P10973703820209190928

/-! ## A386457.P5843801784760216973

`and(A199116(n), A379378(n))`
-/

namespace A386457.P5843801784760216973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199116 n) (A379378 n)

end

end A386457.P5843801784760216973

/-! ## A386457.P10940723432200751948

`and(A199209(n), A379378(n))`
-/

namespace A386457.P10940723432200751948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199209 n) (A379378 n)

end

end A386457.P10940723432200751948

/-! ## A386457.P5599192264949112504

`and(A050915(n), A379378(n))`
-/

namespace A386457.P5599192264949112504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A379378 n)

end

end A386457.P5599192264949112504

/-! ## A386457.P17010370648410413430

`and(A358692(n+1), A379378(n))`
-/

namespace A386457.P17010370648410413430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A358692 (n + 1)) (A379378 n)

end

end A386457.P17010370648410413430

/-!
# A386467: a(0) = a(1) = 1; a(n) = a(n-1) + a(n-2) + Sum_{k=0..n-1} k * a(k) * a(n-1-k).

The programs for A386467, there is no canonical definition to state claims against.
-/

/-! ## A386467.P11110113954000736440

`A319272(A193621(n))`
-/

namespace A386467.P11110113954000736440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319272 (A193621 n).toNat

end

end A386467.P11110113954000736440

/-! ## A386467.P12208734780291322108

`A355028(A301059(n))`
-/

namespace A386467.P12208734780291322108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355028 (A301059 n).toNat

end

end A386467.P12208734780291322108

/-!
# A386468: The maximum exponent in the prime factorization of the largest exponentially squarefree divisor of n.

The programs for A386468, the canonical program `A386468.P12637838022396373735` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386468 has offset 1).

The definition of A386468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386468.P12637838022396373735

`A051903(A365683(n+1))`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A386468

/-- `A051903(A365683(n+1))` -/
def P12637838022396373735.Spec : Prop :=
  ∀ n, P12637838022396373735.a n = A386468 (n + 1)

theorem P12637838022396373735.correct : P12637838022396373735.Spec := by
  intro n
  simp only [A386468, Nat.add_sub_cancel]

end A386468

/-! ## A386468.P9640798933055620876

`A392278(A365683(2*n+1-n))`
-/

namespace A386468.P9640798933055620876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392278 (A365683 (2 * n + 1 - n)).toNat

end

end A386468.P9640798933055620876

namespace A386468

/-- `A392278(A365683(2*n+1-n))` -/
def P9640798933055620876.Spec : Prop :=
  ∀ n, P9640798933055620876.a n = A386468 (n + 1)

end A386468

/-! ## A386468.P10594548458901645025

`A384420(A304180(n+1))`
-/

namespace A386468.P10594548458901645025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384420 (A304180 (n + 1)).toNat

end

end A386468.P10594548458901645025

namespace A386468

/-- `A384420(A304180(n+1))` -/
def P10594548458901645025.Spec : Prop :=
  ∀ n, P10594548458901645025.a n = A386468 (n + 1)

end A386468

/-!
# A386469: The largest divisor of n whose exponents in its prime factorization are squares.

The programs for A386469, there is no canonical definition to state claims against.
-/

/-! ## A386469.P6312956522805787062

`A356194(A372329(A019554(A019554(A372329(n+1)))))`
-/

namespace A386469.P6312956522805787062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 (A372329 (A019554 (A019554 (A372329 (n + 1)).toNat).toNat).toNat).toNat

end

end A386469.P6312956522805787062

/-! ## A386469.P13722160306922747688

`A003557(A003557(n+1)*A048798(n+1))`
-/

namespace A386469.P13722160306922747688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1) * A048798 (n + 1)).toNat

end

end A386469.P13722160306922747688

/-! ## A386469.P15712085501812224000

`A003557(A053149(n+1)/A007947(n+1))`
-/

namespace A386469.P15712085501812224000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((A053149 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A386469.P15712085501812224000

/-! ## A386469.P859360722671687471

`A053149(n+1)/A078615(A078615(n+1))`
-/

namespace A386469.P859360722671687471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A078615 (A078615 (n + 1)).toNat : ℚ)

end

end A386469.P859360722671687471

/-! ## A386469.P15591453592970571380

`∏{p}[n+1, #]*A141020(ceil(3^val(n+1, 2)/2))`
-/

namespace A386469.P15591453592970571380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A141020 ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉.toNat

end

end A386469.P15591453592970571380

/-!
# A386470: The number of divisors of n whose exponents in their prime factorization are squares.

The programs for A386470, the canonical program `A386470.P4132024422393300518` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386470 has offset 1).

The definition of A386470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386470.P4132024422393300518

`∏{e}[n+1, ceil(sqrt(#+1))]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386470

/-- `∏{e}[n+1, ceil(sqrt(#+1))]` -/
def P4132024422393300518.Spec : Prop :=
  ∀ n, P4132024422393300518.a n = A386470 (n + 1)

theorem P4132024422393300518.correct : P4132024422393300518.Spec := by
  intro n
  simp only [A386470, Nat.add_sub_cancel]

end A386470

/-!
# A386471: The sum of the divisors of n whose exponents in their prime factorization are squares.

The programs for A386471, there is no canonical definition to state claims against.
-/

/-! ## A386471.P17189480083451948668

`A390664(n+1)+A074038(A390663(n+1))`
-/

namespace A386471.P17189480083451948668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390664 (n + 1) + A074038 (A390663 (n + 1)).toNat

end

end A386471.P17189480083451948668

/-!
# A386472: The maximum exponent in the prime factorization of the largest divisor of n whose exponents in its prime factorization are squares.

The programs for A386472, the canonical program `A386472.P7970644289596201649` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386472 has offset 1).

The definition of A386472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386472.P7970644289596201649

`A048760(A051903(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A386472

/-- `A048760(A051903(n+1))` -/
def P7970644289596201649.Spec : Prop :=
  ∀ n, P7970644289596201649.a n = A386472 (n + 1)

theorem P7970644289596201649.correct : P7970644289596201649.Spec := by
  intro n
  simp only [A386472, Nat.add_sub_cancel]

end A386472

/-! ## A386472.P16484511497562141273

`A051903(A386469(n+1))`
-/

namespace A386472.P16484511497562141273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A386469 (n + 1)).toNat

end

end A386472.P16484511497562141273

namespace A386472

/-- `A051903(A386469(n+1))` -/
def P16484511497562141273.Spec : Prop :=
  ∀ n, P16484511497562141273.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P13980175795365477002

`val(A386469(A046523(n+1)), 2)`
-/

namespace A386472.P13980175795365477002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A386469 (A046523 (n + 1)).toNat).toNat 2

end

end A386472.P13980175795365477002

namespace A386472

/-- `val(A386469(A046523(n+1)), 2)` -/
def P13980175795365477002.Spec : Prop :=
  ∀ n, (P13980175795365477002.a n : ℤ) = A386472 (n + 1)

end A386472

/-! ## A386472.P9772240806941121785

`A000290(floor(sqrt(A051903(n+1))))`
-/

namespace A386472.P9772240806941121785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A051903 (n + 1))).toNat

end

end A386472.P9772240806941121785

namespace A386472

/-- `A000290(floor(sqrt(A051903(n+1))))` -/
def P9772240806941121785.Spec : Prop :=
  ∀ n, P9772240806941121785.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P9941418661140968926

`A005744(floor(sqrt(A051903(n+1))))`
-/

namespace A386472.P9941418661140968926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 (Int.sqrt (A051903 (n + 1))).toNat

end

end A386472.P9941418661140968926

namespace A386472

/-- `A005744(floor(sqrt(A051903(n+1))))` -/
def P9941418661140968926.Spec : Prop :=
  ∀ n, P9941418661140968926.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P12525709364961843971

`A103164(floor(sqrt(A051903(n+1))))`
-/

namespace A386472.P12525709364961843971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (Int.sqrt (A051903 (n + 1))).toNat

end

end A386472.P12525709364961843971

namespace A386472

/-- `A103164(floor(sqrt(A051903(n+1))))` -/
def P12525709364961843971.Spec : Prop :=
  ∀ n, P12525709364961843971.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P554243059843702827

`A392275(A000188((n+1)²))²`
-/

namespace A386472.P554243059843702827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392275 (A000188 ((n + 1) ^ 2)).toNat ^ 2

end

end A386472.P554243059843702827

namespace A386472

/-- `A392275(A000188((n+1)²))²` -/
def P554243059843702827.Spec : Prop :=
  ∀ n, P554243059843702827.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P18247148437495823888

`A375359(A019555((n+1)²))²`
-/

namespace A386472.P18247148437495823888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A019555 ((n + 1) ^ 2)).toNat ^ 2

end

end A386472.P18247148437495823888

namespace A386472

/-- `A375359(A019555((n+1)²))²` -/
def P18247148437495823888.Spec : Prop :=
  ∀ n, P18247148437495823888.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P13848557340121318758

`A392275(A019554((n+1)²))²`
-/

namespace A386472.P13848557340121318758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392275 (A019554 ((n + 1) ^ 2)).toNat ^ 2

end

end A386472.P13848557340121318758

namespace A386472

/-- `A392275(A019554((n+1)²))²` -/
def P13848557340121318758.Spec : Prop :=
  ∀ n, P13848557340121318758.a n = A386472 (n + 1)

end A386472

/-! ## A386472.P3003545924249275527

`A392275(A019555(n+1)²)²`
-/

namespace A386472.P3003545924249275527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392275 (A019555 (n + 1) ^ 2).toNat ^ 2

end

end A386472.P3003545924249275527

namespace A386472

/-- `A392275(A019555(n+1)²)²` -/
def P3003545924249275527.Spec : Prop :=
  ∀ n, P3003545924249275527.a n = A386472 (n + 1)

end A386472

/-!
# A386474: Number of sets of lists of [n] such that no list is longer than than the total number of lists.

The programs for A386474, there is no canonical definition to state claims against.
-/

/-! ## A386474.P10181648996642133671

`A273488(A149237(n))`
-/

namespace A386474.P10181648996642133671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273488 (A149237 n).toNat

end

end A386474.P10181648996642133671

/-! ## A386474.P10177131840418919311

`A007306(A098575(∑[n]))`
-/

namespace A386474.P10177131840418919311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A098575 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A386474.P10177131840418919311

/-!
# A386476: Number of divisors d of n such that d^2 - 1 is relatively prime to n.

The programs for A386476, there is no canonical definition to state claims against.
-/

/-! ## A386476.P15406815169932647293

`A000005(n+1)-A389362(n+1)`
-/

namespace A386476.P15406815169932647293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A389362 (n + 1)

end

end A386476.P15406815169932647293

/-! ## A386476.P13679297362102813297

`A000005(A340075(n+1)%A356232(2*(n+1)))`
-/

namespace A386476.P13679297362102813297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A340075 (n + 1)) (A356232 (2 * (n + 1)))).toNat

end

end A386476.P13679297362102813297

/-! ## A386476.P8657806206276586129

`A285572(A000978(n+1)*A340149(n+1))`
-/

namespace A386476.P8657806206276586129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A000978 (n + 1) * A340149 (n + 1)).toNat

end

end A386476.P8657806206276586129

/-! ## A386476.P1473044011359629398

`gcd(A069847(A217289(n+1)), A328195(n+1))`
-/

namespace A386476.P1473044011359629398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069847 (A217289 (n + 1)).toNat) (A328195 (n + 1))

end

end A386476.P1473044011359629398

/-! ## A386476.P17135571342363541792

`A124769(A378440(n+1)+A333220(n+1))`
-/

namespace A386476.P17135571342363541792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A378440 (n + 1) + A333220 (n + 1)).toNat

end

end A386476.P17135571342363541792

/-!
# A386477: a(0) = 1; thereafter a(n) = 2*(6*n^2 - 3*n + 1).

The programs for A386477, the canonical program `A386477.P859100336923927337` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386477 has offset 0).

The definition of A386477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386477.P859100336923927337

`A063128(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A386477

/-- `A063128(n)+a(n-1)` -/
def P859100336923927337.Spec : Prop :=
  ∀ n, P859100336923927337.a n = A386477 n

theorem P859100336923927337.correct : P859100336923927337.Spec := by
  intro n
  simp only [A386477]

end A386477

/-! ## A386477.P3129263408253162122

`A051868(n)+A010001(n)`
-/

namespace A386477.P3129263408253162122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A010001 n

end

end A386477.P3129263408253162122

namespace A386477

/-- `A051868(n)+A010001(n)` -/
def P3129263408253162122.Spec : Prop :=
  ∀ n, P3129263408253162122.a n = A386477 n

end A386477

/-! ## A386477.P5810002889186963054

`A077591(n)+A002943(n)`
-/

namespace A386477.P5810002889186963054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n + A002943 n

end

end A386477.P5810002889186963054

namespace A386477

/-- `A077591(n)+A002943(n)` -/
def P5810002889186963054.Spec : Prop :=
  ∀ n, P5810002889186963054.a n = A386477 n

end A386477

/-! ## A386477.P536291383390138825

`A139271(n)+A005899(n)`
-/

namespace A386477.P536291383390138825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + A005899 n

end

end A386477.P536291383390138825

namespace A386477

/-- `A139271(n)+A005899(n)` -/
def P536291383390138825.Spec : Prop :=
  ∀ n, P536291383390138825.a n = A386477 n

end A386477

/-! ## A386477.P6975211268745175441

`A152751(n)+A005918(n)`
-/

namespace A386477.P6975211268745175441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n + A005918 n

end

end A386477.P6975211268745175441

namespace A386477

/-- `A152751(n)+A005918(n)` -/
def P6975211268745175441.Spec : Prop :=
  ∀ n, P6975211268745175441.a n = A386477 n

end A386477

/-! ## A386477.P10040638671765045477

`A153784(n)+A005893(n)`
-/

namespace A386477.P10040638671765045477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n + A005893 n

end

end A386477.P10040638671765045477

namespace A386477

/-- `A153784(n)+A005893(n)` -/
def P10040638671765045477.Spec : Prop :=
  ∀ n, P10040638671765045477.a n = A386477 n

end A386477

/-! ## A386477.P14243042852852531580

`A112335(n)+A062783(n)`
-/

namespace A386477.P14243042852852531580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112335 n + A062783 n

end

end A386477.P14243042852852531580

namespace A386477

/-- `A112335(n)+A062783(n)` -/
def P14243042852852531580.Spec : Prop :=
  ∀ n, P14243042852852531580.a n = A386477 n

end A386477

/-! ## A386477.P2553054736828400755

`A152743(n)+A077588(n)`
-/

namespace A386477.P2553054736828400755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n + A077588 n

end

end A386477.P2553054736828400755

namespace A386477

/-- `A152743(n)+A077588(n)` -/
def P2553054736828400755.Spec : Prop :=
  ∀ n, P2553054736828400755.a n = A386477 n

end A386477

/-! ## A386477.P2825469050209698972

`A153794(n)+A103517(n)`
-/

namespace A386477.P2825469050209698972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + A103517 n

end

end A386477.P2825469050209698972

namespace A386477

/-- `A153794(n)+A103517(n)` -/
def P2825469050209698972.Spec : Prop :=
  ∀ n, P2825469050209698972.a n = A386477 n

end A386477

/-! ## A386477.P12719568581346105509

`A383466(n)+A000384(n)`
-/

namespace A386477.P12719568581346105509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383466 n + A000384 n

end

end A386477.P12719568581346105509

namespace A386477

/-- `A383466(n)+A000384(n)` -/
def P12719568581346105509.Spec : Prop :=
  ∀ n, P12719568581346105509.a n = A386477 n

end A386477

/-! ## A386477.P14917065965682437288

`A386486(n)+A139273(n)`
-/

namespace A386477.P14917065965682437288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n + A139273 n

end

end A386477.P14917065965682437288

namespace A386477

/-- `A386486(n)+A139273(n)` -/
def P14917065965682437288.Spec : Prop :=
  ∀ n, P14917065965682437288.a n = A386477 n

end A386477

/-! ## A386477.P18345537370974189379

`A389625(n)+A186030(n)`
-/

namespace A386477.P18345537370974189379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n + A186030 n

end

end A386477.P18345537370974189379

namespace A386477

/-- `A389625(n)+A186030(n)` -/
def P18345537370974189379.Spec : Prop :=
  ∀ n, P18345537370974189379.a n = A386477 n

end A386477

/-! ## A386477.P7214067108795403189

`A005914(n)-A008588(n)`
-/

namespace A386477.P7214067108795403189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - A008588 n

end

end A386477.P7214067108795403189

namespace A386477

/-- `A005914(n)-A008588(n)` -/
def P7214067108795403189.Spec : Prop :=
  ∀ n, P7214067108795403189.a n = A386477 n

end A386477

/-! ## A386477.P8767414243763151391

`A010004(n)-A028560(n)`
-/

namespace A386477.P8767414243763151391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n - A028560 n

end

end A386477.P8767414243763151391

namespace A386477

/-- `A010004(n)-A028560(n)` -/
def P8767414243763151391.Spec : Prop :=
  ∀ n, P8767414243763151391.a n = A386477 n

end A386477

/-! ## A386477.P5785203001112196341

`A010010(n)-A033587(n)`
-/

namespace A386477.P5785203001112196341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n - A033587 n

end

end A386477.P5785203001112196341

namespace A386477

/-- `A010010(n)-A033587(n)` -/
def P5785203001112196341.Spec : Prop :=
  ∀ n, P5785203001112196341.a n = A386477 n

end A386477

/-! ## A386477.P17809203972811684278

`A005903(n)-A045946(n)`
-/

namespace A386477.P17809203972811684278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005903 n - A045946 n

end

end A386477.P17809203972811684278

namespace A386477

/-- `A005903(n)-A045946(n)` -/
def P17809203972811684278.Spec : Prop :=
  ∀ n, P17809203972811684278.a n = A386477 n

end A386477

/-! ## A386477.P7949122023085543473

`A022145(n)-A033585(n)`
-/

namespace A386477.P7949122023085543473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022145 n - A033585 n

end

end A386477.P7949122023085543473

namespace A386477

/-- `A022145(n)-A033585(n)` -/
def P7949122023085543473.Spec : Prop :=
  ∀ n, P7949122023085543473.a n = A386477 n

end A386477

/-! ## A386477.P527180542032830711

`A010008(n)-A049598(n)`
-/

namespace A386477.P527180542032830711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n - A049598 n

end

end A386477.P527180542032830711

namespace A386477

/-- `A010008(n)-A049598(n)` -/
def P527180542032830711.Spec : Prop :=
  ∀ n, P527180542032830711.a n = A386477 n

end A386477

/-! ## A386477.P684209296400479246

`A010005(n)-A067725(n)`
-/

namespace A386477.P684209296400479246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - A067725 n

end

end A386477.P684209296400479246

namespace A386477

/-- `A010005(n)-A067725(n)` -/
def P684209296400479246.Spec : Prop :=
  ∀ n, P684209296400479246.a n = A386477 n

end A386477

/-!
# A386479: a(0) = 0; thereafter a(n) = 2*n^2 - 3*n + 5.

The programs for A386479, the canonical program `A386479.P5187279637996672355` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386479 has offset 0).

The definition of A386479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386479.P5187279637996672355

`∑[a(n-1)+4]` with `a(0)=0, a(1)=4, a(2)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386479

/-- `∑[a(n-1)+4]` -/
def P5187279637996672355.Spec : Prop :=
  ∀ n, (P5187279637996672355.a n : ℤ) = A386479 n

theorem P5187279637996672355.correct : P5187279637996672355.Spec := by
  intro n
  simp only [A386479]

end A386479

/-! ## A386479.P10851642140921666712

`∑[ogf((4x-5x^2+5x^3)/(1-2x+x^2))]`
-/

namespace A386479.P10851642140921666712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -5, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386479.P10851642140921666712

namespace A386479

/-- `∑[ogf((4x-5x^2+5x^3)/(1-2x+x^2))]` -/
def P10851642140921666712.Spec : Prop :=
  ∀ n, P10851642140921666712.a n = A386479 n

end A386479

/-! ## A386479.P17703161702449737401

`ogf((4x-5x^2+5x^3)/(1-3x+3x^2-x^3))`
-/

namespace A386479.P17703161702449737401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -5, 5] [1, -3, 3, -1] n

end

end A386479.P17703161702449737401

namespace A386479

/-- `ogf((4x-5x^2+5x^3)/(1-3x+3x^2-x^3))` -/
def P17703161702449737401.Spec : Prop :=
  ∀ n, P17703161702449737401.a n = A386479 n

end A386479

/-! ## A386479.P10542745167625601932

`4*n+a(n-1)-5` with `a(0)=0, a(1)=4`
-/

namespace A386479.P10542745167625601932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  (4 * n : ℤ) + (a (n - 1) - 5)

end

end A386479.P10542745167625601932

namespace A386479

/-- `4*n+a(n-1)-5` -/
def P10542745167625601932.Spec : Prop :=
  ∀ n, P10542745167625601932.a n = A386479 n

end A386479

/-! ## A386479.P10139707106960349416

`4*n-(5-a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A386479.P10139707106960349416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  (4 * n : ℤ) - (5 - a (n - 1))

end

end A386479.P10139707106960349416

namespace A386479

/-- `4*n-(5-a(n-1))` -/
def P10139707106960349416.Spec : Prop :=
  ∀ n, P10139707106960349416.a n = A386479 n

end A386479

/-! ## A386479.P11064016992605943940

`n²+(a(n-1)+n)/2` with `a(0)=0, a(1)=4`
-/

namespace A386479.P11064016992605943940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  (n ^ 2 : ℚ) + (a (n - 1) + (n : ℚ)) / 2

end

end A386479.P11064016992605943940

namespace A386479

/-- `n²+(a(n-1)+n)/2` -/
def P11064016992605943940.Spec : Prop :=
  ∀ n, P11064016992605943940.a n = (A386479 n : ℚ)

end A386479

/-! ## A386479.P754565555738411820

`A033572(n)%A004538(n)`
-/

namespace A386479.P754565555738411820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033572 n) (A004538 n)

end

end A386479.P754565555738411820

namespace A386479

/-- `A033572(n)%A004538(n)` -/
def P754565555738411820.Spec : Prop :=
  ∀ n, P754565555738411820.a n = A386479 n

end A386479

/-! ## A386479.P3204404378274713691

`A129109(n)%A059993(n)`
-/

namespace A386479.P3204404378274713691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129109 n) (A059993 n)

end

end A386479.P3204404378274713691

namespace A386479

/-- `A129109(n)%A059993(n)` -/
def P3204404378274713691.Spec : Prop :=
  ∀ n, P3204404378274713691.a n = A386479 n

end A386479

/-! ## A386479.P10393522636963838266

`A153127(n)%A161617(n)`
-/

namespace A386479.P10393522636963838266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153127 n) (A161617 n)

end

end A386479.P10393522636963838266

namespace A386479

/-- `A153127(n)%A161617(n)` -/
def P10393522636963838266.Spec : Prop :=
  ∀ n, P10393522636963838266.a n = A386479 n

end A386479

/-! ## A386479.P1180989451631320103

`A259055(n)%A166146(n+1)`
-/

namespace A386479.P1180989451631320103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259055 n) (A166146 (n + 1))

end

end A386479.P1180989451631320103

namespace A386479

/-- `A259055(n)%A166146(n+1)` -/
def P1180989451631320103.Spec : Prop :=
  ∀ n, P1180989451631320103.a n = A386479 n

end A386479

/-! ## A386479.P5351785669119518670

`A181617(n+1)%A294774(n)`
-/

namespace A386479.P5351785669119518670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181617 (n + 1)) (A294774 n)

end

end A386479.P5351785669119518670

namespace A386479

/-- `A181617(n+1)%A294774(n)` -/
def P5351785669119518670.Spec : Prop :=
  ∀ n, P5351785669119518670.a n = A386479 n

end A386479

/-! ## A386479.P6889998677528555085

`A180863(n+2)%A161549(n)`
-/

namespace A386479.P6889998677528555085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180863 (n + 2)) (A161549 n)

end

end A386479.P6889998677528555085

namespace A386479

/-- `A180863(n+2)%A161549(n)` -/
def P6889998677528555085.Spec : Prop :=
  ∀ n, P6889998677528555085.a n = A386479 n

end A386479

/-! ## A386479.P10718738776342640242

`A167469(n+1)%A166144(n+1)`
-/

namespace A386479.P10718738776342640242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167469 (n + 1)) (A166144 (n + 1))

end

end A386479.P10718738776342640242

namespace A386479

/-- `A167469(n+1)%A166144(n+1)` -/
def P10718738776342640242.Spec : Prop :=
  ∀ n, P10718738776342640242.a n = A386479 n

end A386479

/-!
# A386480: a(0) = 1; thereafter a(n) = n^2 - n + 2.

The programs for A386480, the canonical program `A386480.P13010790246014667856` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386480 has offset 0).

The definition of A386480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386480.P13010790246014667856

`a(n-1)+2*(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386480

/-- `a(n-1)+2*(n-1)` -/
def P13010790246014667856.Spec : Prop :=
  ∀ n, P13010790246014667856.a n = A386480 n

theorem P13010790246014667856.correct : P13010790246014667856.Spec := by
  intro n
  simp only [A386480]

end A386480

/-! ## A386480.P6845119429959189617

`∑[comp[2*n+3]]+1`
-/

namespace A386480.P6845119429959189617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A386480.P6845119429959189617

namespace A386480

/-- `∑[comp[2*n+3]]+1` -/
def P6845119429959189617.Spec : Prop :=
  ∀ n, (P6845119429959189617.a n : ℤ) = A386480 n

end A386480

/-! ## A386480.P12681646832867525171

`ceil(n/acot(n)-(n-1))`
-/

namespace A386480.P12681646832867525171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ) - ((n : ℤ) - 1 : ℝ)⌉

end

end A386480.P12681646832867525171

namespace A386480

/-- `ceil(n/acot(n)-(n-1))` -/
def P12681646832867525171.Spec : Prop :=
  ∀ n, P12681646832867525171.a n = A386480 n

end A386480

/-! ## A386480.P7060081094929750603

`∑[a(n-1)+2]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A386480.P7060081094929750603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386480.P7060081094929750603

namespace A386480

/-- `∑[a(n-1)+2]` -/
def P7060081094929750603.Spec : Prop :=
  ∀ n, (P7060081094929750603.a n : ℤ) = A386480 n

end A386480

/-! ## A386480.P11917600183294111568

`record[ceil((n+2)/3)²-n]`
-/

namespace A386480.P11917600183294111568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉ ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386480.P11917600183294111568

namespace A386480

/-- `record[ceil((n+2)/3)²-n]` -/
def P11917600183294111568.Spec : Prop :=
  ∀ n, P11917600183294111568.a n = A386480 n

end A386480

/-! ## A386480.P12893557874556181261

`ceil(atan(n+1)+n²-n)`
-/

namespace A386480.P12893557874556181261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((n ^ 2 : ℤ) - (n : ℤ) : ℝ)⌉

end

end A386480.P12893557874556181261

namespace A386480

/-- `ceil(atan(n+1)+n²-n)` -/
def P12893557874556181261.Spec : Prop :=
  ∀ n, P12893557874556181261.a n = A386480 n

end A386480

/-! ## A386480.P3702054567364797105

`ceil((acot(n+1)+n)²-n)`
-/

namespace A386480.P3702054567364797105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) ^ 2 - (n : ℝ)⌉

end

end A386480.P3702054567364797105

namespace A386480

/-- `ceil((acot(n+1)+n)²-n)` -/
def P3702054567364797105.Spec : Prop :=
  ∀ n, P3702054567364797105.a n = A386480 n

end A386480

/-! ## A386480.P13759225546850370567

`ogf((1-x+x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A386480.P13759225546850370567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -3, 3, -1] n

end

end A386480.P13759225546850370567

namespace A386480

/-- `ogf((1-x+x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P13759225546850370567.Spec : Prop :=
  ∀ n, P13759225546850370567.a n = A386480 n

end A386480

/-! ## A386480.P11778458783724741453

`∑[gcd(2*(n-1), C(n, n²))]`
-/

namespace A386480.P11778458783724741453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * ((n : ℤ) - 1)) (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386480.P11778458783724741453

namespace A386480

/-- `∑[gcd(2*(n-1), C(n, n²))]` -/
def P11778458783724741453.Spec : Prop :=
  ∀ n, (P11778458783724741453.a n : ℤ) = A386480 n

end A386480

/-! ## A386480.P4882925311695315301

`∑[C(3, n+2)+2*(n-1)]`
-/

namespace A386480.P4882925311695315301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (n + 2) : ℤ) + 2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386480.P4882925311695315301

namespace A386480

/-- `∑[C(3, n+2)+2*(n-1)]` -/
def P4882925311695315301.Spec : Prop :=
  ∀ n, P4882925311695315301.a n = A386480 n

end A386480

/-! ## A386480.P12346260793264437727

`∑[2-(C(2, n)-a(n-1))]` with `a(0)=1`
-/

namespace A386480.P12346260793264437727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - ((Nat.choose 2 n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386480.P12346260793264437727

namespace A386480

/-- `∑[2-(C(2, n)-a(n-1))]` -/
def P12346260793264437727.Spec : Prop :=
  ∀ n, P12346260793264437727.a n = A386480 n

end A386480

/-! ## A386480.P5884287975133336948

`gcd(n²-n+2, C(2, n+2))`
-/

namespace A386480.P5884287975133336948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) - (n : ℤ) + 2) (Nat.choose 2 (n + 2) : ℤ)

end

end A386480.P5884287975133336948

namespace A386480

/-- `gcd(n²-n+2, C(2, n+2))` -/
def P5884287975133336948.Spec : Prop :=
  ∀ n, (P5884287975133336948.a n : ℤ) = A386480 n

end A386480

/-! ## A386480.P7251230061480275525

`ceil(or(n+1, n^3)/(n+1))`
-/

namespace A386480.P7251230061480275525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor (n + 1) (n ^ 3) : ℚ) / (n + 1 : ℚ)⌉

end

end A386480.P7251230061480275525

namespace A386480

/-- `ceil(or(n+1, n^3)/(n+1))` -/
def P7251230061480275525.Spec : Prop :=
  ∀ n, P7251230061480275525.a n = A386480 n

end A386480

/-! ## A386480.P2686686552343960181

`floor(2*n-(2-a(n-1)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A386480.P2686686552343960181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - (2 - a (n - 1))

end

end A386480.P2686686552343960181

namespace A386480

/-- `floor(2*n-(2-a(n-1)))` -/
def P2686686552343960181.Spec : Prop :=
  ∀ n, P2686686552343960181.a n = A386480 n

end A386480

/-! ## A386480.P6932668303353719672

`∑[(n-1)*gcd(2, a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A386480.P6932668303353719672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ((n : ℤ) - 1) * (Int.gcd 2 (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386480.P6932668303353719672

namespace A386480

/-- `∑[(n-1)*gcd(2, a(n-1))]` -/
def P6932668303353719672.Spec : Prop :=
  ∀ n, P6932668303353719672.a n = A386480 n

end A386480

/-! ## A386480.P15613352251211784212

`gcd((1-n)²+n+1, floor(1/(n+1)))`
-/

namespace A386480.P15613352251211784212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 - (n : ℤ)) ^ 2 + (n + 1 : ℤ)) ⌊1 / (n + 1 : ℚ)⌋

end

end A386480.P15613352251211784212

namespace A386480

/-- `gcd((1-n)²+n+1, floor(1/(n+1)))` -/
def P15613352251211784212.Spec : Prop :=
  ∀ n, (P15613352251211784212.a n : ℤ) = A386480 n

end A386480

/-!
# A386482: a(1)=1, a(2)=2; thereafter a(n) is either the greatest number k < a(n-1) not already used such that gcd(k, a(n-1)) > 1, or if no such k exists then a(n) is the smallest number k > a(n-1) not already used such that gcd(k, a(n-1)) > 1.

The programs for A386482, there is no canonical definition to state claims against.
-/

/-! ## A386482.P16848509823193544275

`A386487(n+1)+1+n`
-/

namespace A386482.P16848509823193544275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386487 (n + 1) + 1 + (n : ℤ)

end

end A386482.P16848509823193544275

/-! ## A386482.P18284977377779688979

`A387075(n)+a(n-1)` with `a(0)=1`
-/

namespace A386482.P18284977377779688979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A387075 n + a (n - 1)

end

end A386482.P18284977377779688979

/-! ## A386482.P2677912799700077823

`∑[A387075(A028310(n))]`
-/

namespace A386482.P2677912799700077823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387075 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386482.P2677912799700077823

/-!
# A386483: Index of n-th prime in A386482, or -1 if that prime is missing.

The programs for A386483, there is no canonical definition to state claims against.
-/

/-! ## A386483.P13548950361718043797

`A387072(Δ[A007504(n)])`
-/

namespace A386483.P13548950361718043797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (f1 (n + 1) - f1 n).toNat

end

end A386483.P13548950361718043797

/-! ## A386483.P17661097264437223012

`A387072(A000040(n+1))`
-/

namespace A386483.P17661097264437223012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A000040 (n + 1)).toNat

end

end A386483.P17661097264437223012

/-! ## A386483.P7871065221995197618

`A387072(A008578(n+2))`
-/

namespace A386483.P7871065221995197618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A008578 (n + 2)).toNat

end

end A386483.P7871065221995197618

/-! ## A386483.P16190752137786604318

`A387072(A182986(n+2))`
-/

namespace A386483.P16190752137786604318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A182986 (n + 2)).toNat

end

end A386483.P16190752137786604318

/-! ## A386483.P722786605617906924

`A387072(A014692(n+1)+n)`
-/

namespace A386483.P722786605617906924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A386483.P722786605617906924

/-! ## A386483.P17228228954311349612

`A387072(A387523(A387640(n+1)))`
-/

namespace A386483.P17228228954311349612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387523 (A387640 (n + 1)).toNat).toNat

end

end A386483.P17228228954311349612

/-!
# A386484: a(n) is the index where A387090(n) appears in A386482.

The programs for A386484, there is no canonical definition to state claims against.
-/

/-! ## A386484.P10531087223330307693

`record[A387072(n+1)]`
-/

namespace A386484.P10531087223330307693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386484.P10531087223330307693

/-! ## A386484.P3020784232706990741

`A387072(A387090(n+1))`
-/

namespace A386484.P3020784232706990741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387072 (A387090 (n + 1)).toNat

end

end A386484.P3020784232706990741

/-!
# A386485: a(0) = 1; thereafter a(n) = 5*n^2 - 5*n + 2.

The programs for A386485, the canonical program `A386485.P16576466191177690074` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386485 has offset 0).

The definition of A386485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386485.P16576466191177690074

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=32`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386485

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16576466191177690074.Spec : Prop :=
  ∀ n, P16576466191177690074.a n = A386485 n

theorem P16576466191177690074.correct : P16576466191177690074.Spec := by
  intro n
  simp only [A386485]

end A386485

/-! ## A386485.P17729340050837584892

`∑[a(n-1)+10]` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A386485.P17729340050837584892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 10] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386485.P17729340050837584892

namespace A386485

/-- `∑[a(n-1)+10]` -/
def P17729340050837584892.Spec : Prop :=
  ∀ n, (P17729340050837584892.a n : ℤ) = A386485 n

end A386485

/-! ## A386485.P7837042626412356635

`a(n-1)+10*(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A386485.P7837042626412356635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 10 * ((n : ℤ) - 1)

end

end A386485.P7837042626412356635

namespace A386485

/-- `a(n-1)+10*(n-1)` -/
def P7837042626412356635.Spec : Prop :=
  ∀ n, P7837042626412356635.a n = A386485 n

end A386485

/-! ## A386485.P5083541380716523957

`A389625(n)-∑[n]`
-/

namespace A386485.P5083541380716523957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A386485.P5083541380716523957

namespace A386485

/-- `A389625(n)-∑[n]` -/
def P5083541380716523957.Spec : Prop :=
  ∀ n, P5083541380716523957.a n = A386485 n

end A386485

/-! ## A386485.P3211370511265656534

`A010001(n)-5*n`
-/

namespace A386485.P3211370511265656534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - (5 * n : ℤ)

end

end A386485.P3211370511265656534

namespace A386485

/-- `A010001(n)-5*n` -/
def P3211370511265656534.Spec : Prop :=
  ∀ n, P3211370511265656534.a n = A386485 n

end A386485

/-! ## A386485.P16554401996222027116

`A370532(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A386485.P16554401996222027116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A370532 (n + 1) + a (n - 1)

end

end A386485.P16554401996222027116

namespace A386485

/-- `A370532(n+1)+a(n-1)` -/
def P16554401996222027116.Spec : Prop :=
  ∀ n, P16554401996222027116.a n = A386485 n

end A386485

/-! ## A386485.P8944543001237939616

`A386486(n)+A067998(n)`
-/

namespace A386485.P8944543001237939616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n + A067998 n

end

end A386485.P8944543001237939616

namespace A386485

/-- `A386486(n)+A067998(n)` -/
def P8944543001237939616.Spec : Prop :=
  ∀ n, P8944543001237939616.a n = A386485 n

end A386485

/-! ## A386485.P796489570323151948

`A005897(n)-A028557(n)`
-/

namespace A386485.P796489570323151948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A028557 n

end

end A386485.P796489570323151948

namespace A386485

/-- `A005897(n)-A028557(n)` -/
def P796489570323151948.Spec : Prop :=
  ∀ n, P796489570323151948.a n = A386485 n

end A386485

/-! ## A386485.P10056433342275727564

`A005919(n)-A033537(n)`
-/

namespace A386485.P10056433342275727564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - A033537 n

end

end A386485.P10056433342275727564

namespace A386485

/-- `A005919(n)-A033537(n)` -/
def P10056433342275727564.Spec : Prop :=
  ∀ n, P10056433342275727564.a n = A386485 n

end A386485

/-! ## A386485.P4295552853144371866

`A005901(n)-A124080(n)`
-/

namespace A386485.P4295552853144371866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - A124080 n

end

end A386485.P4295552853144371866

namespace A386485

/-- `A005901(n)-A124080(n)` -/
def P4295552853144371866.Spec : Prop :=
  ∀ n, P4295552853144371866.a n = A386485 n

end A386485

/-! ## A386485.P17180841039980864339

`A010004(n)-A139277(n)`
-/

namespace A386485.P17180841039980864339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n - A139277 n

end

end A386485.P17180841039980864339

namespace A386485

/-- `A010004(n)-A139277(n)` -/
def P17180841039980864339.Spec : Prop :=
  ∀ n, P17180841039980864339.a n = A386485 n

end A386485

/-! ## A386485.P8533937820198704396

`A010003(n)-A211014(n)`
-/

namespace A386485.P8533937820198704396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A211014 n

end

end A386485.P8533937820198704396

namespace A386485

/-- `A010003(n)-A211014(n)` -/
def P8533937820198704396.Spec : Prop :=
  ∀ n, P8533937820198704396.a n = A386485 n

end A386485

/-! ## A386485.P6710793823593247936

`A010007(n)-A396290(n)`
-/

namespace A386485.P6710793823593247936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010007 n - A396290 n

end

end A386485.P6710793823593247936

namespace A386485

/-- `A010007(n)-A396290(n)` -/
def P6710793823593247936.Spec : Prop :=
  ∀ n, P6710793823593247936.a n = A386485 n

end A386485

/-! ## A386485.P3169318918893121895

`A383466(n)-A033429(n)`
-/

namespace A386485.P3169318918893121895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383466 n - A033429 n

end

end A386485.P3169318918893121895

namespace A386485

/-- `A383466(n)-A033429(n)` -/
def P3169318918893121895.Spec : Prop :=
  ∀ n, P3169318918893121895.a n = A386485 n

end A386485

/-! ## A386485.P11076721164551519561

`A147874(n+1)+A112335(n)`
-/

namespace A386485.P11076721164551519561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1) + A112335 n

end

end A386485.P11076721164551519561

namespace A386485

/-- `A147874(n+1)+A112335(n)` -/
def P11076721164551519561.Spec : Prop :=
  ∀ n, P11076721164551519561.a n = A386485 n

end A386485

/-! ## A386485.P16944406047776060561

`A295905(n+1)-A008486(n)`
-/

namespace A386485.P16944406047776060561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295905 (n + 1) - A008486 n

end

end A386485.P16944406047776060561

namespace A386485

/-- `A295905(n+1)-A008486(n)` -/
def P16944406047776060561.Spec : Prop :=
  ∀ n, P16944406047776060561.a n = A386485 n

end A386485

/-! ## A386485.P7489786141216639680

`A010002(n)-A343560(n+1)`
-/

namespace A386485.P7489786141216639680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - A343560 (n + 1)

end

end A386485.P7489786141216639680

namespace A386485

/-- `A010002(n)-A343560(n+1)` -/
def P7489786141216639680.Spec : Prop :=
  ∀ n, P7489786141216639680.a n = A386485 n

end A386485

/-! ## A386485.P5132547525835716372

`A126264(n+1)-A063136(n+1)`
-/

namespace A386485.P5132547525835716372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126264 (n + 1) - A063136 (n + 1)

end

end A386485.P5132547525835716372

namespace A386485

/-- `A126264(n+1)-A063136(n+1)` -/
def P5132547525835716372.Spec : Prop :=
  ∀ n, P5132547525835716372.a n = A386485 n

end A386485

/-! ## A386485.P7038664091558813039

`A077588(n)+A077588(n)-A386480(n)`
-/

namespace A386485.P7038664091558813039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + (A077588 n - A386480 n)

end

end A386485.P7038664091558813039

namespace A386485

/-- `A077588(n)+A077588(n)-A386480(n)` -/
def P7038664091558813039.Spec : Prop :=
  ∀ n, P7038664091558813039.a n = A386485 n

end A386485

/-!
# A386486: a(0) = 1; thereafter a(n) = 4*n^2 - 3*n + 2.

The programs for A386486, the canonical program `A386486.P4359684344657226413` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386486 has offset 0).

The definition of A386486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386486.P4359684344657226413

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=29`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386486

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4359684344657226413.Spec : Prop :=
  ∀ n, P4359684344657226413.a n = A386486 n

theorem P4359684344657226413.correct : P4359684344657226413.Spec := by
  intro n
  simp only [A386486]

end A386486

/-! ## A386486.P8697477335061434020

`∑[a(n-1)+8]` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A386486.P8697477335061434020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386486.P8697477335061434020

namespace A386486

/-- `∑[a(n-1)+8]` -/
def P8697477335061434020.Spec : Prop :=
  ∀ n, (P8697477335061434020.a n : ℤ) = A386486 n

end A386486

/-! ## A386486.P15268525200036965988

`ogf((1+6x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A386486.P15268525200036965988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 6, 1] [1, -3, 3, -1] n

end

end A386486.P15268525200036965988

namespace A386486

/-- `ogf((1+6x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P15268525200036965988.Spec : Prop :=
  ∀ n, P15268525200036965988.a n = A386486 n

end A386486

/-! ## A386486.P16189436665373831370

`comp[2*(n+1)]²+n+1`
-/

namespace A386486.P16189436665373831370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + (n + 1)

end

end A386486.P16189436665373831370

namespace A386486

/-- `comp[2*(n+1)]²+n+1` -/
def P16189436665373831370.Spec : Prop :=
  ∀ n, (P16189436665373831370.a n : ℤ) = A386486 n

end A386486

/-! ## A386486.P7128691319491435131

`xor(A135528(n+1), A211623(n))`
-/

namespace A386486.P7128691319491435131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135528 (n + 1)) (A211623 n)

end

end A386486.P7128691319491435131

namespace A386486

/-- `xor(A135528(n+1), A211623(n))` -/
def P7128691319491435131.Spec : Prop :=
  ∀ n, P7128691319491435131.a n = A386486 n

end A386486

/-! ## A386486.P14478363584035884798

`A263511(A004273(n))`
-/

namespace A386486.P14478363584035884798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263511 (A004273 n).toNat

end

end A386486.P14478363584035884798

namespace A386486

/-- `A263511(A004273(n))` -/
def P14478363584035884798.Spec : Prop :=
  ∀ n, P14478363584035884798.a n = A386486 n

end A386486

/-! ## A386486.P5317718696014226248

`A319702(A033567(n))`
-/

namespace A386486.P5317718696014226248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A033567 n).toNat

end

end A386486.P5317718696014226248

namespace A386486

/-- `A319702(A033567(n))` -/
def P5317718696014226248.Spec : Prop :=
  ∀ n, P5317718696014226248.a n = A386486 n

end A386486

/-! ## A386486.P18013156254205254674

`A114119(A320281(n))`
-/

namespace A386486.P18013156254205254674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A320281 n).toNat

end

end A386486.P18013156254205254674

namespace A386486

/-- `A114119(A320281(n))` -/
def P18013156254205254674.Spec : Prop :=
  ∀ n, P18013156254205254674.a n = A386486 n

end A386486

/-! ## A386486.P1568972706162953950

`A068225(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A386486.P1568972706162953950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A068225 (a (n - 1)).toNat

end

end A386486.P1568972706162953950

namespace A386486

/-- `A068225(a(n-1))` -/
def P1568972706162953950.Spec : Prop :=
  ∀ n, P1568972706162953950.a n = A386486 n

end A386486

/-! ## A386486.P2139340965237933328

`A265413(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A386486.P2139340965237933328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A265413 (a (n - 1)).toNat

end

end A386486.P2139340965237933328

namespace A386486

/-- `A265413(a(n-1))` -/
def P2139340965237933328.Spec : Prop :=
  ∀ n, P2139340965237933328.a n = A386486 n

end A386486

/-!
# A386487: A386482(n) - n.

The programs for A386487, there is no canonical definition to state claims against.
-/

/-! ## A386487.P9163485228969803269

`A386482(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386487.P9163485228969803269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1) - (n + 1 : ℤ)

end

end A386487.P9163485228969803269

/-! ## A386487.P14027705822405643458

`∑[A387075(A028310(n))]-(n+1)`
-/

namespace A386487.P14027705822405643458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387075 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A386487.P14027705822405643458

/-! ## A386487.P15775224235714349501

`A023443(A386482(n+1))-n`
-/

namespace A386487.P15775224235714349501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A386482 (n + 1)).toNat - (n : ℤ)

end

end A386487.P15775224235714349501

/-!
# A386488: Record high points in A386487.

The programs for A386488, there is no canonical definition to state claims against.
-/

/-! ## A386488.P12182090899063700956

`record[A387073(n+1)-A387074(n+1)]`
-/

namespace A386488.P12182090899063700956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387073 (n + 1) - A387074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386488.P12182090899063700956

/-! ## A386488.P7683233141547112835

`record[A386487(n+1)]`
-/

namespace A386488.P7683233141547112835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386488.P7683233141547112835

/-! ## A386488.P12299708144768718726

`record[A386482(n+1)-(n+1)]`
-/

namespace A386488.P12299708144768718726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386482 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386488.P12299708144768718726

/-! ## A386488.P5988793902207290776

`A386487(A387519(n+1))`
-/

namespace A386488.P5988793902207290776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386487 (A387519 (n + 1)).toNat

end

end A386488.P5988793902207290776

/-! ## A386488.P17709536027234416168

`eq[A312301(n), A312459(n)]`
-/

namespace A386488.P17709536027234416168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312301 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386488.P17709536027234416168

/-!
# A386489: Expansion of (1-x)/((1+x+2*x^2)*(1-4*x+x^2)).

The programs for A386489, the canonical program `A386489.P7858105043473720846` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386489 has offset 0).

The definition of A386489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-x^2-7x^3+2x^4))` (program `A386489.P7858105043473720846`, by `A386489.P7858105043473720846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386489.P7858105043473720846

`ogf((1-x)/(1-3x-x^2-7x^3+2x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A386489

/-- `ogf((1-x)/(1-3x-x^2-7x^3+2x^4))` -/
def P7858105043473720846.Spec : Prop :=
  ∀ n, P7858105043473720846.a n = A386489 n

theorem P7858105043473720846.correct : P7858105043473720846.Spec := by
  intro n
  simp only [A386489]

end A386489

/-! ## A386489.P16814040697235797266

`3*a(n-1)+a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=30`
-/

namespace A386489.P16814040697235797266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 30] fun n a =>
  3 * a (n - 1) + a (n - 2) + 7 * a (n - 3) - 2 * a (n - 4)

end

end A386489.P16814040697235797266

namespace A386489

/-- `3*a(n-1)+a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P16814040697235797266.Spec : Prop :=
  ∀ n, P16814040697235797266.a n = A386489 n

end A386489

/-!
# A386491: Array read by ascending antidiagonals: A(n,m) = denominator(2n*m/(m^2 + 1)), where m > 0.

The programs for A386491, there is no canonical definition to state claims against.
-/

/-! ## A386491.P2981866353429961235

`A101597(A013619(n))`
-/

namespace A386491.P2981866353429961235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101597 (A013619 n).toNat

end

end A386491.P2981866353429961235

/-! ## A386491.P8178387296738892606

`A120842(A033918(n+1))`
-/

namespace A386491.P8178387296738892606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120842 (A033918 (n + 1)).toNat

end

end A386491.P8178387296738892606

/-!
# A386496: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)*A(x)^3.

The programs for A386496, there is no canonical definition to state claims against.
-/

/-! ## A386496.P14050071664898479854

`A028310(A389285(n)-A181153(n))`
-/

namespace A386496.P14050071664898479854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A389285 n - A181153 n).toNat

end

end A386496.P14050071664898479854

/-! ## A386496.P18251945738739926405

`A028310(xor(A181153(n), A389285(n)))`
-/

namespace A386496.P18251945738739926405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A181153 n) (A389285 n)).toNat

end

end A386496.P18251945738739926405

/-! ## A386496.P17202900127609597017

`A389285(n)-A010060(A019308(n+2))`
-/

namespace A386496.P17202900127609597017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389285 n - A010060 (A019308 (n + 2)).toNat

end

end A386496.P17202900127609597017

/-!
# A386498: a(n) is the 2-adic valuation of A386252(n).

The programs for A386498, there is no canonical definition to state claims against.
-/

/-! ## A386498.P14880752166929964308

`A007814(A386252(n+1))`
-/

namespace A386498.P14880752166929964308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A386252 (n + 1)).toNat

end

end A386498.P14880752166929964308

/-! ## A386498.P15779097166638807148

`A336937(A080185(n+2))`
-/

namespace A386498.P15779097166638807148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A080185 (n + 2)).toNat

end

end A386498.P15779097166638807148

/-! ## A386498.P10342683530260860502

`A007814(A080185(n+2)+1)`
-/

namespace A386498.P10342683530260860502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A080185 (n + 2) + 1).toNat

end

end A386498.P10342683530260860502

/-!
# A386499: a(n) is the 5-adic valuation of A386252(n).

The programs for A386499, there is no canonical definition to state claims against.
-/

/-! ## A386499.P12476446704829827266

`val(A386252(n+1), 5)`
-/

namespace A386499.P12476446704829827266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A386252 (n + 1)).toNat 5

end

end A386499.P12476446704829827266

/-! ## A386499.P6119832629105299678

`A335877(A386252(n+1))`
-/

namespace A386499.P6119832629105299678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (A386252 (n + 1)).toNat

end

end A386499.P6119832629105299678

/-! ## A386499.P3427684063235653554

`A210960(A312587(n+1))`
-/

namespace A386499.P3427684063235653554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210960 (A312587 (n + 1)).toNat

end

end A386499.P3427684063235653554

/-! ## A386499.P11538022816952871080

`A300410(A020288(n+2))`
-/

namespace A386499.P11538022816952871080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A020288 (n + 2)).toNat

end

end A386499.P11538022816952871080

/-! ## A386499.P1323875477599669333

`A333381(A304428(n)+A267263(n))`
-/

namespace A386499.P1323875477599669333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A304428 n + A267263 n).toNat

end

end A386499.P1323875477599669333

