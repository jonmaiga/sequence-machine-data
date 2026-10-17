import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C027
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C001
import Seq.B010.C000
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

/-!
# A029500: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 7 (most significant digit on right).

The programs for A029500, there is no canonical definition to state claims against.
-/

/-! ## A029500.P12044902393048446431

`A003963(A266891(2*n)+A159476(n))`
-/

namespace A029500.P12044902393048446431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A266891 (2 * n) + A159476 n).toNat

end

end A029500.P12044902393048446431

/-!
# A029501: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 8 (most significant digit on right).

The programs for A029501, there is no canonical definition to state claims against.
-/

/-! ## A029501.P13642848394579476229

`∑[A001055(∑[A118192(n)])]`
-/

namespace A029501.P13642848394579476229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029501.P13642848394579476229

/-! ## A029501.P16931772765201984582

`∑[A317791(∑[A118192(n)])]`
-/

namespace A029501.P16931772765201984582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029501.P16931772765201984582

/-! ## A029501.P10649040625425654496

`record[A329922(A196601(n+1))]`
-/

namespace A029501.P10649040625425654496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329922 (A196601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029501.P10649040625425654496

/-!
# A029502: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 9 (most significant digit on right).

The programs for A029502, there is no canonical definition to state claims against.
-/

/-! ## A029502.P7546953645994872999

`and(A353802(A353878(n)), A353878(n))`
-/

namespace A029502.P7546953645994872999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353802 (A353878 n).toNat) (A353878 n)

end

end A029502.P7546953645994872999

/-!
# A029503: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 10 (most significant digit on right).

The programs for A029503, there is no canonical definition to state claims against.
-/

/-! ## A029503.P3716577142014290118

`eq[0, A281190(n+1)]+1`
-/

namespace A029503.P3716577142014290118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029503.P3716577142014290118

/-! ## A029503.P13777274931177609854

`lt[A281190(A000027(n+1)), 1]+1`
-/

namespace A029503.P13777274931177609854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281190 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A029503.P13777274931177609854

/-! ## A029503.P13501874519340768399

`lt[A249102(A281190(n+1)+1), 1]+1`
-/

namespace A029503.P13501874519340768399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (A281190 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A029503.P13501874519340768399

/-! ## A029503.P3268584140583674580

`eq[A000007(n), A281190(A028310(n))]`
-/

namespace A029503.P3268584140583674580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281190 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029503.P3268584140583674580

/-!
# A029505: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 12 (most significant digit on right).

The programs for A029505, there is no canonical definition to state claims against.
-/

/-! ## A029505.P10289924859938384054

`A241320(2*C(n, 3))+n+1`
-/

namespace A029505.P10289924859938384054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 (2 * Nat.choose n 3) + (n + 1 : ℤ)

end

end A029505.P10289924859938384054

/-! ## A029505.P11476108416870780766

`A358170(a(n-1))+1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A029505.P11476108416870780766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  A358170 (a (n - 1)).toNat + 1

end

end A029505.P11476108416870780766

/-! ## A029505.P8399545208811092755

`∑[A002208(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A029505.P8399545208811092755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  A002208 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029505.P8399545208811092755

/-!
# A029509: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 16 (most significant digit on right).

The programs for A029509, there is no canonical definition to state claims against.
-/

/-! ## A029509.P18125141061298139671

`∩[A035303(n+1), A032512(n)]`
-/

namespace A029509.P18125141061298139671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032512 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029509.P18125141061298139671

/-! ## A029509.P6370548497637152019

`∩[A329469(n+1), A032512(n)]`
-/

namespace A029509.P6370548497637152019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032512 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029509.P6370548497637152019

/-! ## A029509.P314414899325537500

`∩[A033065(n+1), A329469(n+1)]`
-/

namespace A029509.P314414899325537500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029509.P314414899325537500

/-! ## A029509.P16749852851533252097

`∩[A033067(n+1), A329469(n+1)]`
-/

namespace A029509.P16749852851533252097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029509.P16749852851533252097

/-! ## A029509.P15923217696966927679

`∩[A088382(n+1), A329469(n+1)]`
-/

namespace A029509.P15923217696966927679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029509.P15923217696966927679

/-!
# A029513: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 20 (most significant digit on right).

The programs for A029513, there is no canonical definition to state claims against.
-/

/-! ## A029513.P2685686342926857603

`A061949(n+1)-A184955(A061945(n+1))`
-/

namespace A029513.P2685686342926857603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061949 (n + 1) - A184955 (A061945 (n + 1)).toNat

end

end A029513.P2685686342926857603

/-! ## A029513.P1468444495527822300

`A061949(n+1)-A184955(A216694(n+1))`
-/

namespace A029513.P1468444495527822300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061949 (n + 1) - A184955 (A216694 (n + 1)).toNat

end

end A029513.P1468444495527822300

/-! ## A029513.P14722851890145643768

`A061949(n+1)-A093829(A000099(3*n+5))`
-/

namespace A029513.P14722851890145643768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061949 (n + 1) - A093829 (A000099 (3 * n + 5)).toNat

end

end A029513.P14722851890145643768

/-!
# A029515: Numbers k such that k divides the (right) concatenation of all numbers <= k written in base 22 (most significant digit on right).

The programs for A029515, there is no canonical definition to state claims against.
-/

/-! ## A029515.P2627218747717187574

`A258266(A061951(n+1))%A258267(n+1)`
-/

namespace A029515.P2627218747717187574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258266 (A061951 (n + 1)).toNat) (A258267 (n + 1))

end

end A029515.P2627218747717187574

/-!
# A029516: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 23 (most significant digit on right).

The programs for A029516, there is no canonical definition to state claims against.
-/

/-! ## A029516.P10606124619277500452

`A066202(A227383(n+1))`
-/

namespace A029516.P10606124619277500452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A227383 (n + 1)).toNat

end

end A029516.P10606124619277500452

/-!
# A029520: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 3 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029520, there is no canonical definition to state claims against.
-/

/-! ## A029520.P7719998540113736806

`A000040(A333778(a(n-1)))` with `a(0)=1, a(1)=4`
-/

namespace A029520.P7719998540113736806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A000040 (A333778 (a (n - 1)).toNat).toNat

end

end A029520.P7719998540113736806

/-! ## A029520.P9440042438593575539

`∪[A061201(n+1), A245177(A245141(n))]`
-/

namespace A029520.P9440042438593575539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245177 (A245141 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A029520.P9440042438593575539

/-!
# A029522: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 5 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029522, there is no canonical definition to state claims against.
-/

/-! ## A029522.P11937625491513270401

`A349137(A157702(3*n+1))+A082325(2*n)`
-/

namespace A029522.P11937625491513270401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A157702 (3 * n + 1)).toNat + A082325 (2 * n)

end

end A029522.P11937625491513270401

/-!
# A029524: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 7 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029524, there is no canonical definition to state claims against.
-/

/-! ## A029524.P7800603126492255638

`A307730(record[A143506(3*n+4)])`
-/

namespace A029524.P7800603126492255638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143506 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029524.P7800603126492255638

/-!
# A029525: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 8 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029525, there is no canonical definition to state claims against.
-/

/-! ## A029525.P7861258512091797306

`record[A025581(A141046(n))+1-n]`
-/

namespace A029525.P7861258512091797306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A141046 n).toNat + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029525.P7861258512091797306

/-!
# A029527: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 10 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029527, there is no canonical definition to state claims against.
-/

/-! ## A029527.P10376760278696044008

`A065515(A355164(n))`
-/

namespace A029527.P10376760278696044008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A355164 n).toNat

end

end A029527.P10376760278696044008

/-! ## A029527.P5717972641863223588

`record[A276147(A333681(n))]`
-/

namespace A029527.P5717972641863223588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (A333681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029527.P5717972641863223588

/-!
# A029528: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 11 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029528, there is no canonical definition to state claims against.
-/

/-! ## A029528.P5707401536470350753

`A003602(A090018(n)*A246340(n+1))`
-/

namespace A029528.P5707401536470350753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A090018 n * A246340 (n + 1)).toNat

end

end A029528.P5707401536470350753

/-!
# A029531: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 14 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029531, there is no canonical definition to state claims against.
-/

/-! ## A029531.P15202720962627233127

`ceil(ratio[A002061(A218653(n))])`
-/

namespace A029531.P15202720962627233127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A218653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A029531.P15202720962627233127

/-!
# A029532: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 15 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029532, there is no canonical definition to state claims against.
-/

/-! ## A029532.P5419902597419026513

`record[A289772(A289774(xor(1, n)))]`
-/

namespace A029532.P5419902597419026513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289772 (A289774 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029532.P5419902597419026513

/-!
# A029533: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 16 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029533, there is no canonical definition to state claims against.
-/

/-! ## A029533.P18210168916776120993

`record[gcd(A147811(3*n+5), A239931(n+1))]`
-/

namespace A029533.P18210168916776120993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147811 (3 * n + 5)) (A239931 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029533.P18210168916776120993

/-!
# A029537: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 20 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029537, there is no canonical definition to state claims against.
-/

/-! ## A029537.P3650286251145835422

`A173928(A092283(n+1)*A207872(n+1))`
-/

namespace A029537.P3650286251145835422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173928 (A092283 (n + 1) * A207872 (n + 1)).toNat

end

end A029537.P3650286251145835422

/-!
# A029540: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 23 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029540, there is no canonical definition to state claims against.
-/

/-! ## A029540.P13698985234732709864

`∑[A101296(∑[A022595(n)])]`
-/

namespace A029540.P13698985234732709864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029540.P13698985234732709864

/-!
# A029542: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 25 (most significant digit on right and removing all least significant zeros before concatenation).

The programs for A029542, there is no canonical definition to state claims against.
-/

/-! ## A029542.P12740843068667117745

`A310154(A080327(n+1)-4)`
-/

namespace A029542.P12740843068667117745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310154 (A080327 (n + 1) - 4).toNat

end

end A029542.P12740843068667117745

/-! ## A029542.P2668106228147887849

`∑[A097285(A307332(n+1)+A042937(n+4))]`
-/

namespace A029542.P2668106228147887849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A307332 (n + 1) + A042937 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029542.P2668106228147887849

/-!
# A029543: Theta series of 6-dimensional lattice of det 8.

The programs for A029543, there is no canonical definition to state claims against.
-/

/-! ## A029543.P1791226320907944628

`A118965(A081125(n)+A057189(n+1))`
-/

namespace A029543.P1791226320907944628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (A081125 n + A057189 (n + 1)).toNat

end

end A029543.P1791226320907944628

/-!
# A029545: Theta series of 10-dimensional 2-modular lattice of minimal norm 2.

The programs for A029545, there is no canonical definition to state claims against.
-/

/-! ## A029545.P2198666838254011598

`A005563(3*6^n)%(2*5^n)`
-/

namespace A029545.P2198666838254011598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 (3 * 6 ^ n)) (2 * 5 ^ n : ℤ)

end

end A029545.P2198666838254011598

/-!
# A029546: Expansion of 1/( (1-x)*(1-34*x+x^2) ).

The programs for A029546, the canonical program `A029546.P10011827868666644042` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029546 has offset 0).

The definition of A029546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029546.P10011827868666644042

`A075528(n+1)/3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029546

/-- `A075528(n+1)/3` -/
def P10011827868666644042.Spec : Prop :=
  ∀ n, P10011827868666644042.a n = (A029546 n : ℚ)

end A029546

/-! ## A029546.P7318690968197542799

`A029549(n+1)/6`
-/

namespace A029546.P7318690968197542799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029549 (n + 1) : ℚ) / 6

end

end A029546.P7318690968197542799

namespace A029546

/-- `A029549(n+1)/6` -/
def P7318690968197542799.Spec : Prop :=
  ∀ n, P7318690968197542799.a n = (A029546 n : ℚ)

end A029546

/-! ## A029546.P16772749923348439114

`∑[34*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=34`
-/

namespace A029546.P16772749923348439114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P16772749923348439114

namespace A029546

/-- `∑[34*a(n-1)-a(n-2)]` -/
def P16772749923348439114.Spec : Prop :=
  ∀ n, P16772749923348439114.a n = A029546 n

end A029546

/-! ## A029546.P14503940222886142484

`∑[A029547(n)]`
-/

namespace A029546.P14503940222886142484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P14503940222886142484

namespace A029546

/-- `∑[A029547(n)]` -/
def P14503940222886142484.Spec : Prop :=
  ∀ n, P14503940222886142484.a n = A029546 n

end A029546

/-! ## A029546.P15369338990765502937

`A305539(n+2)`
-/

namespace A029546.P15369338990765502937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305539 (n + 2)

end

end A029546.P15369338990765502937

namespace A029546

/-- `A305539(n+2)` -/
def P15369338990765502937.Spec : Prop :=
  ∀ n, P15369338990765502937.a n = A029546 n

end A029546

/-! ## A029546.P12685464354089581190

`∑[∑[A077420(n)]]`
-/

namespace A029546.P12685464354089581190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P12685464354089581190

namespace A029546

/-- `∑[∑[A077420(n)]]` -/
def P12685464354089581190.Spec : Prop :=
  ∀ n, P12685464354089581190.a n = A029546 n

end A029546

/-! ## A029546.P6057531101557704575

`∑[A091761(n+1)]`
-/

namespace A029546.P6057531101557704575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P6057531101557704575

namespace A029546

/-- `∑[A091761(n+1)]` -/
def P6057531101557704575.Spec : Prop :=
  ∀ n, P6057531101557704575.a n = A029546 n

end A029546

/-! ## A029546.P14368946372255517971

`∑[∑[A041027(2*n)]]`
-/

namespace A029546.P14368946372255517971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041027 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P14368946372255517971

namespace A029546

/-- `∑[∑[A041027(2*n)]]` -/
def P14368946372255517971.Spec : Prop :=
  ∀ n, P14368946372255517971.a n = A029546 n

end A029546

/-! ## A029546.P17848664564446258698

`∑[∑[A041127(2*n)]]`
-/

namespace A029546.P17848664564446258698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041127 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P17848664564446258698

namespace A029546

/-- `∑[∑[A041127(2*n)]]` -/
def P17848664564446258698.Spec : Prop :=
  ∀ n, P17848664564446258698.a n = A029546 n

end A029546

/-! ## A029546.P16036505284529344482

`∑[∑[A041543(2*n)]]`
-/

namespace A029546.P16036505284529344482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041543 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029546.P16036505284529344482

namespace A029546

/-- `∑[∑[A041543(2*n)]]` -/
def P16036505284529344482.Spec : Prop :=
  ∀ n, P16036505284529344482.a n = A029546 n

end A029546

/-!
# A029547: Expansion of g.f. 1/(1 - 34*x + x^2).

The programs for A029547, the canonical program `A029547.P13783711769758723897` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029547 has offset 0).

The definition of A029547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029547.P13783711769758723897

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029547

/-- `34*a(n-1)-a(n-2)` -/
def P13783711769758723897.Spec : Prop :=
  ∀ n, P13783711769758723897.a n = A029547 n

theorem P13783711769758723897.correct : P13783711769758723897.Spec := by
  intro n
  simp only [A029547]

end A029547

/-! ## A029547.P3395885352130196746

`sqrt(2)/48*((1+sqrt(2))^(4*n+4)-(1-sqrt(2))^(4*n+4))`
-/

namespace A029547.P3395885352130196746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) / 48 * ((1 + Real.sqrt (2 : ℝ)) ^ (4 * n + 4) - (1 - Real.sqrt (2 : ℝ)) ^ (4 * n + 4))

end

end A029547.P3395885352130196746

namespace A029547

/-- `sqrt(2)/48*((1+sqrt(2))^(4*n+4)-(1-sqrt(2))^(4*n+4))` -/
def P3395885352130196746.Spec : Prop :=
  ∀ n, P3395885352130196746.a n = (A029547 n : ℝ)

end A029547

/-! ## A029547.P15607082433584424566

`sqrt((A056771(n+1)²-1)/2)/12`
-/

namespace A029547.P15607082433584424566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056771 (n + 1) ^ 2 - 1 : ℚ) / 2 : ℝ) / 12

end

end A029547.P15607082433584424566

namespace A029547

/-- `sqrt((A056771(n+1)²-1)/2)/12` -/
def P15607082433584424566.Spec : Prop :=
  ∀ n, P15607082433584424566.a n = (A029547 n : ℝ)

end A029547

/-! ## A029547.P14355369061976536644

`∑[A077420(n)]`
-/

namespace A029547.P14355369061976536644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029547.P14355369061976536644

namespace A029547

/-- `∑[A077420(n)]` -/
def P14355369061976536644.Spec : Prop :=
  ∀ n, P14355369061976536644.a n = A029547 n

end A029547

/-! ## A029547.P16786486777284350638

`A091761(n+1)`
-/

namespace A029547.P16786486777284350638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091761 (n + 1)

end

end A029547.P16786486777284350638

namespace A029547

/-- `A091761(n+1)` -/
def P16786486777284350638.Spec : Prop :=
  ∀ n, P16786486777284350638.a n = A029547 n

end A029547

/-! ## A029547.P6016590010340719044

`A041543(Δ[n²])`
-/

namespace A029547.P6016590010340719044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029547.P6016590010340719044

namespace A029547

/-- `A041543(Δ[n²])` -/
def P6016590010340719044.Spec : Prop :=
  ∀ n, P6016590010340719044.a n = A029547 n

end A029547

/-! ## A029547.P4473729652288355730

`Δ[A305539(n+1)]`
-/

namespace A029547.P4473729652288355730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029547.P4473729652288355730

namespace A029547

/-- `Δ[A305539(n+1)]` -/
def P4473729652288355730.Spec : Prop :=
  ∀ n, P4473729652288355730.a n = A029547 n

end A029547

/-! ## A029547.P17317192427187391105

`∑[A041027(2*n)]`
-/

namespace A029547.P17317192427187391105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041027 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029547.P17317192427187391105

namespace A029547

/-- `∑[A041027(2*n)]` -/
def P17317192427187391105.Spec : Prop :=
  ∀ n, P17317192427187391105.a n = A029547 n

end A029547

/-! ## A029547.P17647700230895459062

`∑[A041127(2*n)]`
-/

namespace A029547.P17647700230895459062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041127 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029547.P17647700230895459062

namespace A029547

/-- `∑[A041127(2*n)]` -/
def P17647700230895459062.Spec : Prop :=
  ∀ n, P17647700230895459062.a n = A029547 n

end A029547

/-!
# A029548: Expansion of 1/(1 - 32*x + x^2).

The programs for A029548, the canonical program `A029548.P9105531807229221009` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029548 has offset 0).

The definition of A029548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029548.P9105531807229221009

`32*a(n-1)-a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029548

/-- `32*a(n-1)-a(n-2)` -/
def P9105531807229221009.Spec : Prop :=
  ∀ n, P9105531807229221009.a n = A029548 n

theorem P9105531807229221009.correct : P9105531807229221009.Spec := by
  intro n
  simp only [A029548]

end A029548

/-! ## A029548.P1176871521962021015

`∑[A159674(n)]`
-/

namespace A029548.P1176871521962021015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029548.P1176871521962021015

namespace A029548

/-- `∑[A159674(n)]` -/
def P1176871521962021015.Spec : Prop :=
  ∀ n, P1176871521962021015.a n = A029548 n

end A029548

/-! ## A029548.P15357957599556827199

`A041479(Δ[n²])`
-/

namespace A029548.P15357957599556827199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A029548.P15357957599556827199

namespace A029548

/-- `A041479(Δ[n²])` -/
def P15357957599556827199.Spec : Prop :=
  ∀ n, P15357957599556827199.a n = A029548 n

end A029548

/-! ## A029548.P1558919602086228414

`∑[A041479(2*n)]`
-/

namespace A029548.P1558919602086228414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029548.P1558919602086228414

namespace A029548

/-- `∑[A041479(2*n)]` -/
def P1558919602086228414.Spec : Prop :=
  ∀ n, P1558919602086228414.a n = A029548 n

end A029548

/-! ## A029548.P13973423619035086616

`record[A041479(n*n%2)]`
-/

namespace A029548.P13973423619035086616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029548.P13973423619035086616

namespace A029548

/-- `record[A041479(n*n%2)]` -/
def P13973423619035086616.Spec : Prop :=
  ∀ n, P13973423619035086616.a n = A029548 n

end A029548

/-! ## A029548.P6719099522112468640

`A159675(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A029548.P6719099522112468640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159675 (n + 1) - a (n - 1)

end

end A029548.P6719099522112468640

namespace A029548

/-- `A159675(n+1)-a(n-1)` -/
def P6719099522112468640.Spec : Prop :=
  ∀ n, P6719099522112468640.a n = A029548 n

end A029548

/-! ## A029548.P15738192973457400764

`A322888(n)+16*a(n-1)` with `a(0)=1`
-/

namespace A029548.P15738192973457400764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322888 n + 16 * a (n - 1)

end

end A029548.P15738192973457400764

namespace A029548

/-- `A322888(n)+16*a(n-1)` -/
def P15738192973457400764.Spec : Prop :=
  ∀ n, P15738192973457400764.a n = A029548 n

end A029548

/-! ## A029548.P13029297527641740969

`33*a(n-1)-A159675(n)` with `a(0)=1`
-/

namespace A029548.P13029297527641740969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  33 * a (n - 1) - A159675 n

end

end A029548.P13029297527641740969

namespace A029548

/-- `33*a(n-1)-A159675(n)` -/
def P13029297527641740969.Spec : Prop :=
  ∀ n, P13029297527641740969.a n = A029548 n

end A029548

/-! ## A029548.P14052474452240443505

`record[A041479(A006369(n))]`
-/

namespace A029548.P14052474452240443505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029548.P14052474452240443505

namespace A029548

/-- `record[A041479(A006369(n))]` -/
def P14052474452240443505.Spec : Prop :=
  ∀ n, P14052474452240443505.a n = A029548 n

end A029548

/-!
# A029549: a(n + 3) = 35*a(n + 2) - 35*a(n + 1) + a(n), with a(0) = 0, a(1) = 6, a(2) = 210.

The programs for A029549, the canonical program `A029549.P2226111609078348210` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029549 has offset 0).

The definition of A029549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029549.P8532246294820328934

`2*A075528(n)`
-/

namespace A029549.P8532246294820328934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075528 n

end

end A029549.P8532246294820328934

namespace A029549

/-- `2*A075528(n)` -/
def P8532246294820328934.Spec : Prop :=
  ∀ n, P8532246294820328934.a n = A029549 n

end A029549

/-! ## A029549.P3325458560577668526

`A096979(2*n)`
-/

namespace A029549.P3325458560577668526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096979 (2 * n)

end

end A029549.P3325458560577668526

namespace A029549

/-- `A096979(2*n)` -/
def P3325458560577668526.Spec : Prop :=
  ∀ n, P3325458560577668526.a n = A029549 n

end A029549

/-! ## A029549.P2226111609078348210

`a(n-1)+A001109(2*n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029549

/-- `a(n-1)+A001109(2*n)` -/
def P2226111609078348210.Spec : Prop :=
  ∀ n, P2226111609078348210.a n = A029549 n

theorem P2226111609078348210.correct : P2226111609078348210.Spec := by
  intro n
  simp only [A029549]

end A029549

/-! ## A029549.P5876524837596368721

`1/2*A001652(n)*A046090(n)`
-/

namespace A029549.P5876524837596368721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001652 n : ℚ) * (A046090 n : ℚ)

end

end A029549.P5876524837596368721

namespace A029549

/-- `1/2*A001652(n)*A046090(n)` -/
def P5876524837596368721.Spec : Prop :=
  ∀ n, P5876524837596368721.a n = (A029549 n : ℚ)

end A029549

/-! ## A029549.P7272832925412973642

`1/2*A084159(n)*A046729(n)`
-/

namespace A029549.P7272832925412973642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A084159 n : ℚ) * (A046729 n : ℚ)

end

end A029549.P7272832925412973642

namespace A029549

/-- `1/2*A084159(n)*A046729(n)` -/
def P7272832925412973642.Spec : Prop :=
  ∀ n, P7272832925412973642.a n = (A029549 n : ℚ)

end A029549

/-! ## A029549.P3398574846724338228

`floor((sqrt(2)+1)^(4*n+2)/32)`
-/

namespace A029549.P3398574846724338228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) + 1) ^ (4 * n + 2) / 32⌋

end

end A029549.P3398574846724338228

namespace A029549

/-- `floor((sqrt(2)+1)^(4*n+2)/32)` -/
def P3398574846724338228.Spec : Prop :=
  ∀ n, P3398574846724338228.a n = A029549 n

end A029549

/-! ## A029549.P16858735522061834072

`(cosh((4*n+2)*log(1+sqrt(2)))-3)/16`
-/

namespace A029549.P16858735522061834072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.cosh ((4 * n + 2 : ℝ) * Real.log (1 + Real.sqrt (2 : ℝ))) - 3) / 16

end

end A029549.P16858735522061834072

namespace A029549

/-- `(cosh((4*n+2)*log(1+sqrt(2)))-3)/16` -/
def P16858735522061834072.Spec : Prop :=
  ∀ n, P16858735522061834072.a n = (A029549 n : ℝ)

end A029549

/-!
# A029552: Expansion of phi(x) / f(-x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A029552, there is no canonical definition to state claims against.
-/

/-! ## A029552.P511718603930587837

`record[A143161(n)]`
-/

namespace A029552.P511718603930587837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029552.P511718603930587837

/-! ## A029552.P8847101006271925260

`A143161(4*n)`
-/

namespace A029552.P8847101006271925260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143161 (4 * n)

end

end A029552.P8847101006271925260

/-! ## A029552.P310587303579885621

`A225853(4*n)`
-/

namespace A029552.P310587303579885621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225853 (4 * n)

end

end A029552.P310587303579885621

/-! ## A029552.P3254425903679307382

`record[Δ[A225853(n)]]`
-/

namespace A029552.P3254425903679307382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225853 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029552.P3254425903679307382

/-! ## A029552.P17528062598072913688

`record[A225853(n+1)-A225853(n)]`
-/

namespace A029552.P17528062598072913688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225853 (n + 1) - A225853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029552.P17528062598072913688

/-! ## A029552.P9207693763974588829

`gcd(A000038(n), A225853(A016813(n)-1))`
-/

namespace A029552.P9207693763974588829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225853 (A016813 n - 1).toNat)

end

end A029552.P9207693763974588829

/-!
# A029571: Number of permutations of an n-set containing a 4-cycle.

The programs for A029571, there is no canonical definition to state claims against.
-/

/-! ## A029571.P7796245166645945627

`6*A029587(n)`
-/

namespace A029571.P7796245166645945627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A029587 n

end

end A029571.P7796245166645945627

/-! ## A029571.P8447226683718539541

`A000166(n)+A002467(n)-A000138(n)`
-/

namespace A029571.P8447226683718539541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A002467 n - A000138 n)

end

end A029571.P8447226683718539541

/-! ## A029571.P3278961273058161907

`A000266(n)+A027616(n)-A000138(n)`
-/

namespace A029571.P3278961273058161907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000266 n + (A027616 n - A000138 n)

end

end A029571.P3278961273058161907

/-! ## A029571.P9496746649465376661

`n!-A000138(n)`
-/

namespace A029571.P9496746649465376661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000138 n

end

end A029571.P9496746649465376661

/-! ## A029571.P4843460018544811003

`A000142(n)-A000138(n)`
-/

namespace A029571.P4843460018544811003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000138 n

end

end A029571.P4843460018544811003

/-! ## A029571.P5129923668136616658

`abs(A133942(n))-A000138(n)`
-/

namespace A029571.P5129923668136616658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A000138 n

end

end A029571.P5129923668136616658

/-! ## A029571.P14391876371973140510

`A094587(∑[n])-A000138(n)`
-/

namespace A029571.P14391876371973140510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j) - A000138 n

end

end A029571.P14391876371973140510

/-! ## A029571.P7613979267774447267

`A098361(∑[n])-A000138(n)`
-/

namespace A029571.P7613979267774447267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (∑ j ∈ Finset.range (n + 1), f1 j) - A000138 n

end

end A029571.P7613979267774447267

/-! ## A029571.P11292050969322404838

`Δ[A003422(n)]-A000138(n)`
-/

namespace A029571.P11292050969322404838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000138 n

end

end A029571.P11292050969322404838

/-! ## A029571.P8024602016525999443

`∏[A028310(n)]-A000138(n)`
-/

namespace A029571.P8024602016525999443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000138 n

end

end A029571.P8024602016525999443

/-!
# A029572: Number of permutations of an n-set containing a 5-cycle.

The programs for A029572, there is no canonical definition to state claims against.
-/

/-! ## A029572.P10105771789326555399

`n!-A060725(n)`
-/

namespace A029572.P10105771789326555399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A060725 n

end

end A029572.P10105771789326555399

/-! ## A029572.P13387544050950913782

`A000142(n)-A060725(n)`
-/

namespace A029572.P13387544050950913782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A060725 n

end

end A029572.P13387544050950913782

/-! ## A029572.P18172101784759156768

`abs(A133942(n))-A060725(n)`
-/

namespace A029572.P18172101784759156768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A060725 n

end

end A029572.P18172101784759156768

/-! ## A029572.P9774418888142030835

`Δ[A003422(n)]-A060725(n)`
-/

namespace A029572.P9774418888142030835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060725 n

end

end A029572.P9774418888142030835

/-!
# A029573: Number of permutations of an n-set containing a 6-cycle.

The programs for A029573, there is no canonical definition to state claims against.
-/

/-! ## A029573.P7289912453818384549

`n!-A060726(n)`
-/

namespace A029573.P7289912453818384549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A060726 n

end

end A029573.P7289912453818384549

/-! ## A029573.P6277256141680553125

`A000142(n)-A060726(n)`
-/

namespace A029573.P6277256141680553125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A060726 n

end

end A029573.P6277256141680553125

/-! ## A029573.P18343251989064117612

`A028310(n)!%A060726(n)`
-/

namespace A029573.P18343251989064117612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A028310 n).toNat : ℤ) (A060726 n)

end

end A029573.P18343251989064117612

/-! ## A029573.P5620358824420591365

`Δ[A003422(n)]-A060726(n)`
-/

namespace A029573.P5620358824420591365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060726 n

end

end A029573.P5620358824420591365

/-!
# A029574: Number of permutations of an n-set containing a 7-cycle.

The programs for A029574, there is no canonical definition to state claims against.
-/

/-! ## A029574.P10834352758894377917

`n!-A060727(n)`
-/

namespace A029574.P10834352758894377917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A060727 n

end

end A029574.P10834352758894377917

/-! ## A029574.P13119513346668491039

`A000142(n)-A060727(n)`
-/

namespace A029574.P13119513346668491039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A060727 n

end

end A029574.P13119513346668491039

/-! ## A029574.P221865334611276095

`n!%A060727(A028310(n))`
-/

namespace A029574.P221865334611276095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A060727 (A028310 n).toNat)

end

end A029574.P221865334611276095

/-! ## A029574.P6515529082262341671

`Δ[A003422(n)]-A060727(n)`
-/

namespace A029574.P6515529082262341671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060727 n

end

end A029574.P6515529082262341671

/-! ## A029574.P8161242508068353138

`∏[A007318(∑[n]+1)]-A060727(n)`
-/

namespace A029574.P8161242508068353138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A060727 n

end

end A029574.P8161242508068353138

/-! ## A029574.P14054162368964540578

`∏[val(A000040(n+1), 2)+n]-A060727(n)`
-/

namespace A029574.P14054162368964540578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A060727 n

end

end A029574.P14054162368964540578

/-!
# A029575: Number of permutations of an n-set containing an 8-cycle.

The programs for A029575, there is no canonical definition to state claims against.
-/

/-! ## A029575.P16048187642807833003

`A053504(n)-A053502(A062003(n))`
-/

namespace A029575.P16048187642807833003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053504 n - A053502 (A062003 n).toNat

end

end A029575.P16048187642807833003

/-! ## A029575.P10354042755543083877

`A053390(A001333(n))*A061140(n)`
-/

namespace A029575.P10354042755543083877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053390 (A001333 n).toNat * A061140 n

end

end A029575.P10354042755543083877

/-! ## A029575.P16740041715170692305

`A053504(A062003(n))%A053502(n)`
-/

namespace A029575.P16740041715170692305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053504 (A062003 n).toNat) (A053502 n)

end

end A029575.P16740041715170692305

/-! ## A029575.P7443049293158033746

`A061140(n)*A320278(A140335(n+1))`
-/

namespace A029575.P7443049293158033746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061140 n * A320278 (A140335 (n + 1)).toNat

end

end A029575.P7443049293158033746

/-! ## A029575.P2847720918037212078

`A005361(A052924(n))*A061140(n)`
-/

namespace A029575.P2847720918037212078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A052924 n).toNat * A061140 n

end

end A029575.P2847720918037212078

/-!
# A029576: Number of permutations of an n-set containing a 9-cycle.

The programs for A029576, there is no canonical definition to state claims against.
-/

/-! ## A029576.P4721442242905535607

`floor(C(n, floor(n/9))!/9)`
-/

namespace A029576.P4721442242905535607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (Nat.choose n ⌊(n : ℚ) / 9⌋.toNat) : ℚ) / 9⌋

end

end A029576.P4721442242905535607

/-! ## A029576.P2680887890085879644

`A061123(a(n-2)+n)` with `a(0)=0, a(1)=0`
-/

namespace A029576.P2680887890085879644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A061123 (a (n - 2) + (n : ℤ)).toNat

end

end A029576.P2680887890085879644

/-! ## A029576.P16656294333114895543

`A061123(n^A055640(n))`
-/

namespace A029576.P16656294333114895543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061123 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A029576.P16656294333114895543

/-! ## A029576.P7983690695779147100

`A061123(n^A120041(n))`
-/

namespace A029576.P7983690695779147100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061123 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A120041 n : ℤ))).toNat

end

end A029576.P7983690695779147100

/-! ## A029576.P11125319182591681939

`A061123(C(n, A120041(n)))`
-/

namespace A029576.P11125319182591681939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061123 (Nat.choose n (A120041 n).toNat)

end

end A029576.P11125319182591681939

/-!
# A029577: Number of permutations of an n-set containing a 10-cycle.

The programs for A029577, there is no canonical definition to state claims against.
-/

/-! ## A029577.P12193639176314644919

`∑[∑[A284206(A250266(n))]]`
-/

namespace A029577.P12193639176314644919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284206 (A250266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029577.P12193639176314644919

/-! ## A029577.P7721076496462587354

`A062919(n)%A062003(n)!`
-/

namespace A029577.P7721076496462587354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062919 n) (Nat.factorial (A062003 n).toNat : ℤ)

end

end A029577.P7721076496462587354

/-! ## A029577.P10212354669427559742

`A344676(A088468(n))%n!`
-/

namespace A029577.P10212354669427559742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344676 (A088468 n).toNat) (Nat.factorial n : ℤ)

end

end A029577.P10212354669427559742

/-! ## A029577.P15082052707769415629

`lcm(n, A292717(A056473(n+1)))`
-/

namespace A029577.P15082052707769415629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A292717 (A056473 (n + 1)).toNat)

end

end A029577.P15082052707769415629

/-! ## A029577.P10498078633661161005

`Δ[A053501(A004874(n+1))]/10`
-/

namespace A029577.P10498078633661161005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 (A004874 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 10

end

end A029577.P10498078633661161005

/-!
# A029578: The natural numbers interleaved with the even numbers.

The programs for A029578, the canonical program `A029578.P13296947064408646033` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029578 has offset 0).

The definition of A029578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029578.P13296947064408646033

`floor(n/2)*C(2, n%2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029578

/-- `floor(n/2)*C(2, n%2)` -/
def P13296947064408646033.Spec : Prop :=
  ∀ n, P13296947064408646033.a n = A029578 n

theorem P13296947064408646033.correct : P13296947064408646033.Spec := by
  intro n
  simp only [A029578]

end A029578

/-! ## A029578.P3848565476502902684

`floor(a(n-1)*a(n-2)/a(n-3))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=4, a(6)=3`
-/

namespace A029578.P3848565476502902684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 2, 4, 3] fun n a =>
  ⌊(a (n - 1) * a (n - 2) : ℚ) / (a (n - 3) : ℚ)⌋

end

end A029578.P3848565476502902684

namespace A029578

/-- `floor(a(n-1)*a(n-2)/a(n-3))` -/
def P3848565476502902684.Spec : Prop :=
  ∀ n, P3848565476502902684.a n = A029578 n

end A029578

/-! ## A029578.P9707541834625243030

`ceil((n-1)/gcd(2, n))`
-/

namespace A029578.P9707541834625243030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉

end

end A029578.P9707541834625243030

namespace A029578

/-- `ceil((n-1)/gcd(2, n))` -/
def P9707541834625243030.Spec : Prop :=
  ∀ n, P9707541834625243030.a n = A029578 n

end A029578

/-! ## A029578.P3731600226765248416

`lcm(2, n)/2-n%2`
-/

namespace A029578.P3731600226765248416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2 - ((n % 2 : ℕ) : ℚ)

end

end A029578.P3731600226765248416

namespace A029578

/-- `lcm(2, n)/2-n%2` -/
def P3731600226765248416.Spec : Prop :=
  ∀ n, P3731600226765248416.a n = (A029578 n : ℚ)

end A029578

/-! ## A029578.P1181247107224517453

`n-gcd(n², floor(n/2))`
-/

namespace A029578.P1181247107224517453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.gcd (n ^ 2 : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ)

end

end A029578.P1181247107224517453

namespace A029578

/-- `n-gcd(n², floor(n/2))` -/
def P1181247107224517453.Spec : Prop :=
  ∀ n, P1181247107224517453.a n = A029578 n

end A029578

/-! ## A029578.P13196603784104660506

`1-(n-2)/or(n, -2)`
-/

namespace A029578.P13196603784104660506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)

end

end A029578.P13196603784104660506

namespace A029578

/-- `1-(n-2)/or(n, -2)` -/
def P13196603784104660506.Spec : Prop :=
  ∀ n, P13196603784104660506.a n = (A029578 n : ℚ)

end A029578

/-! ## A029578.P14100409390582055479

`ceil((n-1)/(2-and(1, n)))`
-/

namespace A029578.P14100409390582055479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)⌉

end

end A029578.P14100409390582055479

namespace A029578

/-- `ceil((n-1)/(2-and(1, n)))` -/
def P14100409390582055479.Spec : Prop :=
  ∀ n, P14100409390582055479.a n = A029578 n

end A029578

/-! ## A029578.P2260117863888089765

`floor(n-n^(-1)^n/2)`
-/

namespace A029578.P2260117863888089765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ) / 2⌋

end

end A029578.P2260117863888089765

namespace A029578

/-- `floor(n-n^(-1)^n/2)` -/
def P2260117863888089765.Spec : Prop :=
  ∀ n, P2260117863888089765.a n = A029578 n

end A029578

/-! ## A029578.P17137313701760522315

`(n-2)/(2-and(1, n))+1`
-/

namespace A029578.P17137313701760522315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ) + 1

end

end A029578.P17137313701760522315

namespace A029578

/-- `(n-2)/(2-and(1, n))+1` -/
def P17137313701760522315.Spec : Prop :=
  ∀ n, P17137313701760522315.a n = (A029578 n : ℚ)

end A029578

/-! ## A029578.P2985187733082023482

`1-(n-2)/(and(1, n)-2)`
-/

namespace A029578.P2985187733082023482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - 2 : ℚ) / ((Nat.land 1 n : ℤ) - 2 : ℚ)

end

end A029578.P2985187733082023482

namespace A029578

/-- `1-(n-2)/(and(1, n)-2)` -/
def P2985187733082023482.Spec : Prop :=
  ∀ n, P2985187733082023482.a n = (A029578 n : ℚ)

end A029578

/-! ## A029578.P3446163360886565562

`and(1, n)+a(n-2)+1` with `a(0)=0, a(1)=0`
-/

namespace A029578.P3446163360886565562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.land 1 n + (a (n - 2) + 1)

end

end A029578.P3446163360886565562

namespace A029578

/-- `and(1, n)+a(n-2)+1` -/
def P3446163360886565562.Spec : Prop :=
  ∀ n, (P3446163360886565562.a n : ℤ) = A029578 n

end A029578

/-! ## A029578.P8785737320669204306

`(1-(2-n)%2)*floor(n/2)`
-/

namespace A029578.P8785737320669204306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (2 - (n : ℤ)) 2) * ⌊(n : ℚ) / 2⌋

end

end A029578.P8785737320669204306

namespace A029578

/-- `(1-(2-n)%2)*floor(n/2)` -/
def P8785737320669204306.Spec : Prop :=
  ∀ n, P8785737320669204306.a n = A029578 n

end A029578

/-! ## A029578.P9837499443080761483

`and(2*n, -3)/gcd(4, 2*n)`
-/

namespace A029578.P9837499443080761483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n : ℤ) (-3) : ℚ) / (Nat.gcd 4 (2 * n) : ℚ)

end

end A029578.P9837499443080761483

namespace A029578

/-- `and(2*n, -3)/gcd(4, 2*n)` -/
def P9837499443080761483.Spec : Prop :=
  ∀ n, P9837499443080761483.a n = (A029578 n : ℚ)

end A029578

/-! ## A029578.P4448818671045412228

`gcd(n+1, n-1)*floor(n/2)`
-/

namespace A029578.P4448818671045412228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ) * ⌊(n : ℚ) / 2⌋

end

end A029578.P4448818671045412228

namespace A029578

/-- `gcd(n+1, n-1)*floor(n/2)` -/
def P4448818671045412228.Spec : Prop :=
  ∀ n, P4448818671045412228.a n = A029578 n

end A029578

/-! ## A029578.P13516000478173692645

`ceil((n-1)/(or(1, n)-(n-1)))`
-/

namespace A029578.P13516000478173692645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)⌉

end

end A029578.P13516000478173692645

namespace A029578

/-- `ceil((n-1)/(or(1, n)-(n-1)))` -/
def P13516000478173692645.Spec : Prop :=
  ∀ n, P13516000478173692645.a n = A029578 n

end A029578

/-! ## A029578.P17162760589080477680

`n-floor(n/(n-a(n-1)))` with `a(0)=0`
-/

namespace A029578.P17162760589080477680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(n : ℚ) / ((n : ℤ) - a (n - 1) : ℚ)⌋

end

end A029578.P17162760589080477680

namespace A029578

/-- `n-floor(n/(n-a(n-1)))` -/
def P17162760589080477680.Spec : Prop :=
  ∀ n, P17162760589080477680.a n = A029578 n

end A029578

/-! ## A029578.P9371794234605149455

`∑[a(n-2)-(-1)^n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A029578.P9371794234605149455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029578.P9371794234605149455

namespace A029578

/-- `∑[a(n-2)-(-1)^n]` -/
def P9371794234605149455.Spec : Prop :=
  ∀ n, P9371794234605149455.a n = A029578 n

end A029578

/-! ## A029578.P7777325807895651031

`a(n-2)-or(n+1, -2)` with `a(0)=0, a(1)=0`
-/

namespace A029578.P7777325807895651031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - Int.lor (n + 1 : ℤ) (-2)

end

end A029578.P7777325807895651031

namespace A029578

/-- `a(n-2)-or(n+1, -2)` -/
def P7777325807895651031.Spec : Prop :=
  ∀ n, P7777325807895651031.a n = A029578 n

end A029578

/-!
# A029579: a(2*n) = n+1, a(2*n-1) = 2*n-1.

The programs for A029579, the canonical program `A029579.P18035164306793945485` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029579 has offset 0).

The definition of A029579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029579.P18035164306793945485

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029579

/-- `2*a(n-2)-a(n-4)` -/
def P18035164306793945485.Spec : Prop :=
  ∀ n, P18035164306793945485.a n = A029579 n

theorem P18035164306793945485.correct : P18035164306793945485.Spec := by
  intro n
  simp only [A029579]

end A029579

/-! ## A029579.P7235753053133005109

`(3*n+2+(2-n)*(-1)^n)/4`
-/

namespace A029579.P7235753053133005109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + (2 + (2 - (n : ℤ)) * (-1) ^ n) : ℚ) / 4

end

end A029579.P7235753053133005109

namespace A029579

/-- `(3*n+2+(2-n)*(-1)^n)/4` -/
def P7235753053133005109.Spec : Prop :=
  ∀ n, P7235753053133005109.a n = (A029579 n : ℚ)

end A029579

/-! ## A029579.P11890103792512743102

`(n-2)/gcd(2, n)+2`
-/

namespace A029579.P11890103792512743102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ) + 2

end

end A029579.P11890103792512743102

namespace A029579

/-- `(n-2)/gcd(2, n)+2` -/
def P11890103792512743102.Spec : Prop :=
  ∀ n, P11890103792512743102.a n = (A029579 n : ℚ)

end A029579

/-! ## A029579.P5332313275153847830

`2-(n-2)/or(n, -2)`
-/

namespace A029579.P5332313275153847830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - ((n : ℤ) - 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)

end

end A029579.P5332313275153847830

namespace A029579

/-- `2-(n-2)/or(n, -2)` -/
def P5332313275153847830.Spec : Prop :=
  ∀ n, P5332313275153847830.a n = (A029579 n : ℚ)

end A029579

/-! ## A029579.P471393953376256872

`ceil((n^(n%2)+n)/2)`
-/

namespace A029579.P471393953376256872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ (n % 2) + n : ℚ) / 2⌉

end

end A029579.P471393953376256872

namespace A029579

/-- `ceil((n^(n%2)+n)/2)` -/
def P471393953376256872.Spec : Prop :=
  ∀ n, P471393953376256872.a n = A029579 n

end A029579

/-! ## A029579.P2926120482038512604

`(n-2)/(2-and(1, n))+2`
-/

namespace A029579.P2926120482038512604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ) + 2

end

end A029579.P2926120482038512604

namespace A029579

/-- `(n-2)/(2-and(1, n))+2` -/
def P2926120482038512604.Spec : Prop :=
  ∀ n, P2926120482038512604.a n = (A029579 n : ℚ)

end A029579

/-! ## A029579.P8050564704466500420

`2-(n-2)/(and(1, n)-2)`
-/

namespace A029579.P8050564704466500420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - ((n : ℤ) - 2 : ℚ) / ((Nat.land 1 n : ℤ) - 2 : ℚ)

end

end A029579.P8050564704466500420

namespace A029579

/-- `2-(n-2)/(and(1, n)-2)` -/
def P8050564704466500420.Spec : Prop :=
  ∀ n, P8050564704466500420.a n = (A029579 n : ℚ)

end A029579

/-! ## A029579.P10394058338265720064

`floor(∑[n]/a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029579.P10394058338265720064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A029579.P10394058338265720064

namespace A029579

/-- `floor(∑[n]/a(n-1))` -/
def P10394058338265720064.Spec : Prop :=
  ∀ n, P10394058338265720064.a n = A029579 n

end A029579

/-! ## A029579.P5007436356184585970

`round(∑[n]/a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A029579.P5007436356184585970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ))

end

end A029579.P5007436356184585970

namespace A029579

/-- `round(∑[n]/a(n-1))` -/
def P5007436356184585970.Spec : Prop :=
  ∀ n, P5007436356184585970.a n = A029579 n

end A029579

/-! ## A029579.P1742649826920744049

`ceil(n²/(2*a(n-1)))` with `a(0)=1`
-/

namespace A029579.P1742649826920744049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n ^ 2 : ℚ) / (2 * a (n - 1) : ℚ)⌉

end

end A029579.P1742649826920744049

namespace A029579

/-- `ceil(n²/(2*a(n-1)))` -/
def P1742649826920744049.Spec : Prop :=
  ∀ n, P1742649826920744049.a n = A029579 n

end A029579

/-! ## A029579.P11102287625719052645

`1-(gcd(n², floor(n/2))-n)`
-/

namespace A029579.P11102287625719052645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Int.gcd (n ^ 2 : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ) - (n : ℤ))

end

end A029579.P11102287625719052645

namespace A029579

/-- `1-(gcd(n², floor(n/2))-n)` -/
def P11102287625719052645.Spec : Prop :=
  ∀ n, P11102287625719052645.a n = A029579 n

end A029579

/-! ## A029579.P14920409908788470083

`and(1, n)+a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A029579.P14920409908788470083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land 1 n + (a (n - 2) + 1)

end

end A029579.P14920409908788470083

namespace A029579

/-- `and(1, n)+a(n-2)+1` -/
def P14920409908788470083.Spec : Prop :=
  ∀ n, (P14920409908788470083.a n : ℤ) = A029579 n

end A029579

/-! ## A029579.P6623522562189658844

`n-floor(a(n-1)-n/2)` with `a(0)=1`
-/

namespace A029579.P6623522562189658844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) - (n : ℚ) / 2⌋

end

end A029579.P6623522562189658844

namespace A029579

/-- `n-floor(a(n-1)-n/2)` -/
def P6623522562189658844.Spec : Prop :=
  ∀ n, P6623522562189658844.a n = A029579 n

end A029579

/-! ## A029579.P18315983046902450567

`∑[and(1, n)]-(a(n-1)-n)` with `a(0)=1`
-/

namespace A029579.P18315983046902450567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) - (n : ℤ))

end

end A029579.P18315983046902450567

namespace A029579

/-- `∑[and(1, n)]-(a(n-1)-n)` -/
def P18315983046902450567.Spec : Prop :=
  ∀ n, P18315983046902450567.a n = A029579 n

end A029579

/-! ## A029579.P13283927900564225222

`∑[a(n-2)-(-1)^n]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029579.P13283927900564225222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029579.P13283927900564225222

namespace A029579

/-- `∑[a(n-2)-(-1)^n]` -/
def P13283927900564225222.Spec : Prop :=
  ∀ n, P13283927900564225222.a n = A029579 n

end A029579

/-! ## A029579.P17962416523788695179

`a(n-2)-or(n+1, -2)` with `a(0)=1, a(1)=1`
-/

namespace A029579.P17962416523788695179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - Int.lor (n + 1 : ℤ) (-2)

end

end A029579.P17962416523788695179

namespace A029579

/-- `a(n-2)-or(n+1, -2)` -/
def P17962416523788695179.Spec : Prop :=
  ∀ n, P17962416523788695179.a n = A029579 n

end A029579

/-! ## A029579.P18049464518791183469

`a((2*n)%4)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029579.P18049464518791183469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (2 * n % 4) + a (n - 2)

end

end A029579.P18049464518791183469

namespace A029579

/-- `a((2*n)%4)+a(n-2)` -/
def P18049464518791183469.Spec : Prop :=
  ∀ n, (P18049464518791183469.a n : ℤ) = A029579 n

end A029579

/-! ## A029579.P10895156339694733600

`comp[a(n-1)+3]-a(n-1)` with `a(0)=1`
-/

namespace A029579.P10895156339694733600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A029579.P10895156339694733600

namespace A029579

/-- `comp[a(n-1)+3]-a(n-1)` -/
def P10895156339694733600.Spec : Prop :=
  ∀ n, P10895156339694733600.a n = A029579 n

end A029579

/-! ## A029579.P15326994460392187985

`(n+2)%2+a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A029579.P15326994460392187985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 2) % 2 + (a (n - 2) + 1)

end

end A029579.P15326994460392187985

namespace A029579

/-- `(n+2)%2+a(n-2)+1` -/
def P15326994460392187985.Spec : Prop :=
  ∀ n, (P15326994460392187985.a n : ℤ) = A029579 n

end A029579

/-!
# A029580: a(0) = 1; for n > 0, a(n) = [ A*a(n-1)+B ]/p^r, where p^r is the highest power of p dividing [ A*a(n)+B ] and p=2, A=2.00013, B=3.0.

The programs for A029580, there is no canonical definition to state claims against.
-/

/-! ## A029580.P14623343980730682869

`A093544(∏[∑[A256434(n)]])`
-/

namespace A029580.P14623343980730682869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A029580.P14623343980730682869

/-! ## A029580.P5658098713013459645

`A140139(∑[gcd((-2)^n, A047758(n+1))])`
-/

namespace A029580.P5658098713013459645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((-2) ^ n) (A047758 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029580.P5658098713013459645

/-! ## A029580.P15857624646903233512

`A133090(A283001(n)+A126646(n))`
-/

namespace A029580.P15857624646903233512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (A283001 n + A126646 n).toNat

end

end A029580.P15857624646903233512

/-! ## A029580.P15738722796765282475

`A006369(A033484(n)/A322494(n))`
-/

namespace A029580.P15738722796765282475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (SequenceMachineLib.roundAway ((A033484 n : ℚ) / (A322494 n : ℚ))).toNat

end

end A029580.P15738722796765282475

/-! ## A029580.P11280019304568034950

`A006369(A033484(n)/A333159(n))`
-/

namespace A029580.P11280019304568034950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (SequenceMachineLib.roundAway ((A033484 n : ℚ) / (A333159 n : ℚ))).toNat

end

end A029580.P11280019304568034950

/-!
# A029581: Numbers in which all digits are composite.

The programs for A029581, there is no canonical definition to state claims against.
-/

/-! ## A029581.P15539030157112278216

`A001744(A023721(n+1)+1)`
-/

namespace A029581.P15539030157112278216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A023721 (n + 1) + 1).toNat

end

end A029581.P15539030157112278216

/-! ## A029581.P11487048704402353712

`∩[A001744(n+1), A202268(n+1)]`
-/

namespace A029581.P11487048704402353712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P11487048704402353712

/-! ## A029581.P5350606839918669392

`∩[A202268(n+1), A276138(n+1)]`
-/

namespace A029581.P5350606839918669392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P5350606839918669392

/-! ## A029581.P10112612586895192875

`record[A222221(A202268(n+1))]`
-/

namespace A029581.P10112612586895192875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A202268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029581.P10112612586895192875

/-! ## A029581.P5329674275624292925

`record[A004719(A001744(n+2))]`
-/

namespace A029581.P5329674275624292925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A001744 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029581.P5329674275624292925

/-! ## A029581.P6579708218520998670

`record[A004176(A202268(n+2))]`
-/

namespace A029581.P6579708218520998670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A202268 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029581.P6579708218520998670

/-! ## A029581.P13665571424375435389

`filter[A001744(n+1), A168046(#)]`
-/

namespace A029581.P13665571424375435389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A029581.P13665571424375435389

/-! ## A029581.P421876109201651080

`∩[A001744(n+1), A037344(n+1)]`
-/

namespace A029581.P421876109201651080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P421876109201651080

/-! ## A029581.P6839412970737912917

`∩[A001744(n+1), A039112(n+1)]`
-/

namespace A029581.P6839412970737912917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P6839412970737912917

/-! ## A029581.P2661162151093053673

`∩[A001744(n+1), A039113(n+1)]`
-/

namespace A029581.P2661162151093053673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P2661162151093053673

/-! ## A029581.P11711342327019066893

`∩[A001744(n+1), A039114(n+1)]`
-/

namespace A029581.P11711342327019066893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P11711342327019066893

/-! ## A029581.P17351139575630304166

`∩[A001744(n+1), A039116(n+1)]`
-/

namespace A029581.P17351139575630304166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P17351139575630304166

/-! ## A029581.P10936431901842065247

`∩[A001744(n+1), A039118(n+1)]`
-/

namespace A029581.P10936431901842065247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P10936431901842065247

/-! ## A029581.P4285636500938127060

`∩[A001744(n+1), A052382(n+1)]`
-/

namespace A029581.P4285636500938127060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P4285636500938127060

/-! ## A029581.P17084521499515280493

`∩[A001744(n+1), A062998(n+1)]`
-/

namespace A029581.P17084521499515280493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P17084521499515280493

/-! ## A029581.P15107348759695963443

`∩[A037344(n+1), A084984(n+1)]`
-/

namespace A029581.P15107348759695963443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P15107348759695963443

/-! ## A029581.P5060051155470559815

`∩[A037344(n+1), A202268(n+1)]`
-/

namespace A029581.P5060051155470559815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P5060051155470559815

/-! ## A029581.P2526206070894605186

`∩[A039112(n+1), A202268(n+1)]`
-/

namespace A029581.P2526206070894605186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P2526206070894605186

/-! ## A029581.P7915600745427939549

`∩[A039120(n+1), A202268(n+1)]`
-/

namespace A029581.P7915600745427939549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P7915600745427939549

/-! ## A029581.P17087496041567175733

`∩[A039121(n+1), A202268(n+1)]`
-/

namespace A029581.P17087496041567175733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A029581.P17087496041567175733

/-!
# A029582: E.g.f. sin(x) + cos(x) + tan(x).

The programs for A029582, there is no canonical definition to state claims against.
-/

/-! ## A029582.P9905792911597649826

`A009006(n)-A062157(A000096(n))`
-/

namespace A029582.P9905792911597649826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n - A062157 (A000096 n).toNat

end

end A029582.P9905792911597649826

/-! ## A029582.P11893922415845106531

`A009006(n)-A062157(A014682(n))`
-/

namespace A029582.P11893922415845106531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n - A062157 (A014682 n).toNat

end

end A029582.P11893922415845106531

/-! ## A029582.P15864761251699455061

`A009006(n)-A062157(A316966(n))`
-/

namespace A029582.P15864761251699455061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n - A062157 (A316966 n).toNat

end

end A029582.P15864761251699455061

/-! ## A029582.P11448482536495574703

`abs(A155585(n))-A062157(A000096(n))`
-/

namespace A029582.P11448482536495574703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155585 n| - A062157 (A000096 n).toNat

end

end A029582.P11448482536495574703

/-! ## A029582.P3520383085726863065

`abs(A155585(n))-A062157(A316966(n))`
-/

namespace A029582.P3520383085726863065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155585 n| - A062157 (A316966 n).toNat

end

end A029582.P3520383085726863065

/-! ## A029582.P9335338021947977432

`A057077(n)+A000035(n)*A000111(n)`
-/

namespace A029582.P9335338021947977432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + A000035 n * A000111 n

end

end A029582.P9335338021947977432

/-! ## A029582.P16094569274060430914

`A057077(n)+A000035(n)*A009006(n)`
-/

namespace A029582.P16094569274060430914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + A000035 n * A009006 n

end

end A029582.P16094569274060430914

/-! ## A029582.P4613380401197722805

`A057077(n)+A009006(n)*A062157(n)`
-/

namespace A029582.P4613380401197722805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + A009006 n * A062157 n

end

end A029582.P4613380401197722805

/-! ## A029582.P15647001554816614446

`A009006(n)-A062157(n)*A087960(n)`
-/

namespace A029582.P15647001554816614446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n - A062157 n * A087960 n

end

end A029582.P15647001554816614446

/-!
# A029583: Expansion of sin x + cos x + tan x + sec x.

The programs for A029583, there is no canonical definition to state claims against.
-/

/-! ## A029583.P16382583425616899516

`A000111(n)+1-and(2, n)`
-/

namespace A029583.P16382583425616899516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (1 - (Nat.land 2 n : ℤ))

end

end A029583.P16382583425616899516

/-! ## A029583.P17874219449891643875

`abs(A346838(n))+1-and(2, n)`
-/

namespace A029583.P17874219449891643875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n| + (1 - (Nat.land 2 n : ℤ))

end

end A029583.P17874219449891643875

/-! ## A029583.P7996294553026496598

`A109449(∑[n])+1-and(2, n)`
-/

namespace A029583.P7996294553026496598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) + (1 - (Nat.land 2 n : ℤ))

end

end A029583.P7996294553026496598

/-! ## A029583.P16697879324743910044

`abs(A163982(n)+floor(acot(n))-1)`
-/

namespace A029583.P16697879324743910044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163982 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)|

end

end A029583.P16697879324743910044

/-! ## A029583.P9960037929889076670

`abs(A247453(∑[n]))+1-and(2, n)`
-/

namespace A029583.P9960037929889076670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| + (1 - (Nat.land 2 n : ℤ))

end

end A029583.P9960037929889076670

/-! ## A029583.P17555162741457125094

`A229892(∑[n]+1)+1-and(2, n)`
-/

namespace A029583.P17555162741457125094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (1 - (Nat.land 2 n : ℤ))

end

end A029583.P17555162741457125094

/-! ## A029583.P9394765352395831520

`A057077(n)+A000111(n)`
-/

namespace A029583.P9394765352395831520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + A000111 n

end

end A029583.P9394765352395831520

/-! ## A029583.P11278007410534404423

`A057077(n)+abs(A346838(n))`
-/

namespace A029583.P11278007410534404423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + |A346838 n|

end

end A029583.P11278007410534404423

/-! ## A029583.P17742613169397982433

`A109449(∑[n])+A057077(n)`
-/

namespace A029583.P17742613169397982433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) + A057077 n

end

end A029583.P17742613169397982433

/-! ## A029583.P12166985463954474970

`A000111(n)-A118828(2*(n+1))`
-/

namespace A029583.P12166985463954474970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A118828 (2 * (n + 1))

end

end A029583.P12166985463954474970

/-!
# A029584: Expansion of cos x + tan x + sec x.

The programs for A029584, there is no canonical definition to state claims against.
-/

/-! ## A029584.P2857641924006499194

`A000111(n)+∑[(-1)^∑[n]]`
-/

namespace A029584.P2857641924006499194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029584.P2857641924006499194

/-! ## A029584.P12451691615490859787

`A056594(n)+A000111(n)`
-/

namespace A029584.P12451691615490859787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + A000111 n

end

end A029584.P12451691615490859787

/-! ## A029584.P699099139718740732

`A056594(n)+abs(A346838(n))`
-/

namespace A029584.P699099139718740732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + |A346838 n|

end

end A029584.P699099139718740732

/-! ## A029584.P11995634703429660820

`A053120(∑[n])+A000111(n)`
-/

namespace A029584.P11995634703429660820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (∑ j ∈ Finset.range (n + 1), f1 j) + A000111 n

end

end A029584.P11995634703429660820

/-! ## A029584.P18126430797460279735

`A109449(∑[n])+A056594(n)`
-/

namespace A029584.P18126430797460279735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) + A056594 n

end

end A029584.P18126430797460279735

/-! ## A029584.P2221603609650822238

`A117569(n+1)+A000111(n)`
-/

namespace A029584.P2221603609650822238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (n + 1) + A000111 n

end

end A029584.P2221603609650822238

/-! ## A029584.P12684186257694273013

`A000111(n)+1-A007877(n)`
-/

namespace A029584.P12684186257694273013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + 1 - A007877 n

end

end A029584.P12684186257694273013

/-! ## A029584.P8954730217113706004

`A118828(n²+6)+A000111(n)`
-/

namespace A029584.P8954730217113706004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (n ^ 2 + 6) + A000111 n

end

end A029584.P8954730217113706004

/-! ## A029584.P1899303536848478371

`A056594(n)+A008282(A000124(n))`
-/

namespace A029584.P1899303536848478371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + A008282 (A000124 n).toNat

end

end A029584.P1899303536848478371

/-!
# A029585: E.g.f. 1/(1+sin(x)+sin(x)^2).

The programs for A029585, there is no canonical definition to state claims against.
-/

/-! ## A029585.P12642417983664086798

`(-1)^n*A002969(n)`
-/

namespace A029585.P12642417983664086798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002969 n

end

end A029585.P12642417983664086798

/-! ## A029585.P1931989315146925581

`A002969(n)*A033999(n)`
-/

namespace A029585.P1931989315146925581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002969 n * A033999 n

end

end A029585.P1931989315146925581

/-! ## A029585.P1646901562139306321

`A002969(n)/A033999(A007094(n))`
-/

namespace A029585.P1646901562139306321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002969 n : ℚ) / (A033999 (A007094 n).toNat : ℚ)

end

end A029585.P1646901562139306321

/-! ## A029585.P18178441423643862398

`A002969(n)/round(A033999(n)/A053164(n+1))`
-/

namespace A029585.P18178441423643862398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002969 n : ℚ) / (SequenceMachineLib.roundAway ((A033999 n : ℚ) / (A053164 (n + 1) : ℚ)) : ℚ)

end

end A029585.P18178441423643862398

/-! ## A029585.P11760669459226167589

`A002969(n)/A033999(A050040(n+4))`
-/

namespace A029585.P11760669459226167589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002969 n : ℚ) / (A033999 (A050040 (n + 4)).toNat : ℚ)

end

end A029585.P11760669459226167589

/-!
# A029587: a(n) = A029571(n) / 6.

The programs for A029587, there is no canonical definition to state claims against.
-/

/-! ## A029587.P6460809061067201768

`A029571(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A029587.P6460809061067201768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029571 n : ℚ) / 6

end

end A029587.P6460809061067201768

/-! ## A029587.P8128644328789754431

`(A000166(n)+A002467(n)-A000138(n))/6`
-/

namespace A029587.P8128644328789754431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n + (A002467 n - A000138 n) : ℚ) / 6

end

end A029587.P8128644328789754431

/-! ## A029587.P10192011984671110790

`(A000266(n)+A027616(n)-A000138(n))/6`
-/

namespace A029587.P10192011984671110790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000266 n + (A027616 n - A000138 n) : ℚ) / 6

end

end A029587.P10192011984671110790

/-! ## A029587.P13448897350703099048

`(A000142(n)-A000138(n))/6`
-/

namespace A029587.P13448897350703099048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n - A000138 n : ℚ) / 6

end

end A029587.P13448897350703099048

/-! ## A029587.P7227931216099541080

`(abs(A133942(n))-A000138(n))/6`
-/

namespace A029587.P7227931216099541080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A133942 n| - A000138 n : ℚ) / 6

end

end A029587.P7227931216099541080

/-! ## A029587.P11100444742801000896

`(A094587(∑[n])-A000138(n))/6`
-/

namespace A029587.P11100444742801000896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (∑ j ∈ Finset.range (n + 1), f1 j) - A000138 n : ℚ) / 6

end

end A029587.P11100444742801000896

/-! ## A029587.P2684543340436841761

`(A098361(∑[n])-A000138(n))/6`
-/

namespace A029587.P2684543340436841761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 (∑ j ∈ Finset.range (n + 1), f1 j) - A000138 n : ℚ) / 6

end

end A029587.P2684543340436841761

/-! ## A029587.P1420642786809398987

`(Δ[A003422(n)]-A000138(n))/6`
-/

namespace A029587.P1420642786809398987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A000138 n : ℚ) / 6

end

end A029587.P1420642786809398987

/-!
# A029588: a(n) = A029572(n) / 24.

The programs for A029588, there is no canonical definition to state claims against.
-/

/-! ## A029588.P1732732280681736913

`A029572(n)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A029588.P1732732280681736913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029572 n : ℚ) / 24

end

end A029588.P1732732280681736913

/-! ## A029588.P13908921960272274101

`(n!-A060725(n))/24`
-/

namespace A029588.P13908921960272274101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A060725 n : ℚ) / 24

end

end A029588.P13908921960272274101

/-! ## A029588.P1707490998326310544

`(A000142(n)-A060725(n))/24`
-/

namespace A029588.P1707490998326310544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n - A060725 n : ℚ) / 24

end

end A029588.P1707490998326310544

/-! ## A029588.P16253144130243081207

`(abs(A133942(n))-A060725(n))/24`
-/

namespace A029588.P16253144130243081207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A133942 n| - A060725 n : ℚ) / 24

end

end A029588.P16253144130243081207

/-! ## A029588.P7043070630570997512

`(Δ[A003422(n)]-A060725(n))/24`
-/

namespace A029588.P7043070630570997512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A060725 n : ℚ) / 24

end

end A029588.P7043070630570997512

/-!
# A029589: Expansion of (1+sin(x)+sin(x)^2)/(1-sin(x)+sin(x)^2).

The programs for A029589, there is no canonical definition to state claims against.
-/

/-! ## A029589.P17476681386980081886

`2*(n+1)-A217503(A000522(n))`
-/

namespace A029589.P17476681386980081886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A217503 (A000522 n).toNat

end

end A029589.P17476681386980081886

/-! ## A029589.P14656842189035878352

`A246679(n+1)-A067138(A349882(n))`
-/

namespace A029589.P14656842189035878352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246679 (n + 1) - A067138 (A349882 n).toNat

end

end A029589.P14656842189035878352

/-!
# A029592: Theta series of 6-dimensional 11-modular odd lattice of minimal norm 4.

The programs for A029592, there is no canonical definition to state claims against.
-/

/-! ## A029592.P10691197042726635204

`A004185(A047865(n)/A263159(n))`
-/

namespace A029592.P10691197042726635204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.roundAway ((A047865 n : ℚ) / (A263159 n : ℚ))).toNat

end

end A029592.P10691197042726635204

/-!
# A029594: Theta series of quadratic form with Gram matrix [ 1, 0, 0; 0, 2, 0; 0, 0, 3 ].

The programs for A029594, there is no canonical definition to state claims against.
-/

/-! ## A029594.P9276632418298980533

`A029672(2*n)`
-/

namespace A029594.P9276632418298980533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029672 (2 * n)

end

end A029594.P9276632418298980533

/-! ## A029594.P15610622955713436438

`A029672(A004277(n))+A000007(n)`
-/

namespace A029594.P15610622955713436438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029672 (A004277 n).toNat + A000007 n

end

end A029594.P15610622955713436438

/-! ## A029594.P7667723626395026300

`-A001489(A029672(record[A014681(n)]))`
-/

namespace A029594.P7667723626395026300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A029672 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029594.P7667723626395026300

/-! ## A029594.P10111383763646348672

`A029672(A005843(n))%A000124(n+4)`
-/

namespace A029594.P10111383763646348672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029672 (A005843 n).toNat) (A000124 (n + 4))

end

end A029594.P10111383763646348672

/-! ## A029594.P645587248413083711

`A029672(record[A014681(n)])%A018252(n+2)`
-/

namespace A029594.P645587248413083711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029672 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A018252 (n + 2))

end

end A029594.P645587248413083711

/-! ## A029594.P17951890950066619333

`A029672(record[A153733(n)])%A020742(n)`
-/

namespace A029594.P17951890950066619333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029672 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A020742 n)

end

end A029594.P17951890950066619333

/-! ## A029594.P3228043855483693495

`-A001489(A029672(record[A018838(n)]))`
-/

namespace A029594.P3228043855483693495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A029672 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029594.P3228043855483693495

/-! ## A029594.P9273031839556899352

`A029672(n+n)/A003989(∑[n]+1)`
-/

namespace A029594.P9273031839556899352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029672 (n + n) : ℚ) / (A003989 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A029594.P9273031839556899352

/-!
# A029595: Theta series of quadratic form (or lattice) with Gram matrix [ 1, 0, 0; 0, 2, 1; 0, 1, 3 ].

The programs for A029595, there is no canonical definition to state claims against.
-/

/-! ## A029595.P9792884784872026114

`2*A029682(n)-A029673(A005843(n))`
-/

namespace A029595.P9792884784872026114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029682 n - A029673 (A005843 n).toNat

end

end A029595.P9792884784872026114

/-! ## A029595.P8959336582944847383

`A005843(A029682(n))-A029673(A005843(n))`
-/

namespace A029595.P8959336582944847383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A029682 n).toNat - A029673 (A005843 n).toNat

end

end A029595.P8959336582944847383

/-!
# A029596: Numbers represented by quadratic form with Gram matrix [ 4, 2, 2; 2, 4, 1; 2, 1, 6 ], divided by 2.

The programs for A029596, there is no canonical definition to state claims against.
-/

/-! ## A029596.P10578446335241103419

`lt[0, A029680(n)]`
-/

namespace A029596.P10578446335241103419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029596.P10578446335241103419

/-! ## A029596.P9605020995958710634

`eq[2, A040001(2*A029680(n))]`
-/

namespace A029596.P9605020995958710634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * A029680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029596.P9605020995958710634

/-! ## A029596.P16959451548502903238

`eq[1, gcd(A020484(n), A029680(n))]`
-/

namespace A029596.P16959451548502903238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020484 n) (A029680 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029596.P16959451548502903238

/-! ## A029596.P11587932223704468489

`eq[2, A020639(A029680(A029680(n))+2)]`
-/

namespace A029596.P11587932223704468489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029680 (A029680 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029596.P11587932223704468489

/-! ## A029596.P15596397822106628595

`eq[A000038(n+1), A000038(A029680(n))]`
-/

namespace A029596.P15596397822106628595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029596.P15596397822106628595

/-! ## A029596.P10516240291941790960

`eq[n*A000038(n), A000038(A029680(n))]`
-/

namespace A029596.P10516240291941790960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029596.P10516240291941790960

/-! ## A029596.P12084858885261113729

`lt[0, A320239(2*n)]`
-/

namespace A029596.P12084858885261113729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320239 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029596.P12084858885261113729

/-! ## A029596.P4391027160279226221

`eq[0, A000038(A029680(n)²)]`
-/

namespace A029596.P4391027160279226221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029680 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029596.P4391027160279226221

/-! ## A029596.P16701638282310572383

`eq[0, A029681(A029680(n)²)]`
-/

namespace A029596.P16701638282310572383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A029680 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029596.P16701638282310572383

/-! ## A029596.P1892394112526357736

`eq[2, A000122(A029680(n)²)]`
-/

namespace A029596.P1892394112526357736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A029680 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029596.P1892394112526357736

/-!
# A029597: Numbers represented by quadratic form with Gram matrix [ 3, 1, 1; 1, 2, 1; 1, 1, 3 ].

The programs for A029597, there is no canonical definition to state claims against.
-/

/-! ## A029597.P2548285561038533907

`lt[0, A029672(n)]`
-/

namespace A029597.P2548285561038533907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029597.P2548285561038533907

/-! ## A029597.P440921269617490371

`eq[1, A060576(A029672(n)+1)]`
-/

namespace A029597.P440921269617490371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A029672 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029597.P440921269617490371

/-! ## A029597.P275147613734582941

`eq[A000038(n), A130706(A029672(n))]`
-/

namespace A029597.P275147613734582941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A029672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P275147613734582941

/-! ## A029597.P2218462738006600557

`eq[A036987(2*n), A036987(A029672(n))]`
-/

namespace A029597.P2218462738006600557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A029672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P2218462738006600557

/-! ## A029597.P5438641306905123343

`eq[A054977(A029672(n)), A060576(n)]`
-/

namespace A029597.P5438641306905123343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P5438641306905123343

/-! ## A029597.P10489746109672128143

`eq[A036987(A014452(n)), A208274(n)]`
-/

namespace A029597.P10489746109672128143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A014452 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P10489746109672128143

/-! ## A029597.P2365638120338197848

`eq[A036987(A014452(n)), A208604(n)]`
-/

namespace A029597.P2365638120338197848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A014452 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P2365638120338197848

/-! ## A029597.P3647911911966143549

`eq[A036987(A029672(n)), A208274(n)]`
-/

namespace A029597.P3647911911966143549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A029672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P3647911911966143549

/-! ## A029597.P11983707119077896579

`eq[A000038(n+1), A000038(A029672(n))]`
-/

namespace A029597.P11983707119077896579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P11983707119077896579

/-! ## A029597.P1537988758499588497

`eq[2*A130706(n), A130706(A029672(n))]`
-/

namespace A029597.P1537988758499588497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A029672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P1537988758499588497

/-! ## A029597.P3455634360986468773

`eq[A130706(n+1), A130706(A029672(n))]`
-/

namespace A029597.P3455634360986468773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A029672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029597.P3455634360986468773

/-! ## A029597.P3153058935130532882

`lt[0, A169783(3*n)]`
-/

namespace A029597.P3153058935130532882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029597.P3153058935130532882

/-! ## A029597.P13201505179331977521

`lt[A329290(n), A329309(A329290(3*n))]`
-/

namespace A029597.P13201505179331977521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329309 (A329290 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A029597.P13201505179331977521

/-! ## A029597.P16311010993441932220

`eq[0, A000038(A029672(n)²)]`
-/

namespace A029597.P16311010993441932220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029672 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029597.P16311010993441932220

/-! ## A029597.P9740680547594297047

`eq[0, A029681(A029672(n)²)]`
-/

namespace A029597.P9740680547594297047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A029672 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029597.P9740680547594297047

/-! ## A029597.P15574196226354570975

`eq[2, A000122(A029672(n)²)]`
-/

namespace A029597.P15574196226354570975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A029672 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029597.P15574196226354570975

