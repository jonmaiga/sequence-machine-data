import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A038900: Primes p such that 26 is not a square mod p.

The programs for A038900, there is no canonical definition to state claims against.
-/

/-! ## A038900.P18248718687799579860

`p?[comp[A035262(n+1)]]`
-/

namespace A038900.P18248718687799579860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038900.P18248718687799579860

/-! ## A038900.P1051001558313583828

`∩[A000040(n+1), comp[A035262(n+1)]]`
-/

namespace A038900.P1051001558313583828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038900.P1051001558313583828

/-! ## A038900.P15397947430362735769

`∩[A008578(n+1), comp[A035262(n+1)]]`
-/

namespace A038900.P15397947430362735769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038900.P15397947430362735769

/-! ## A038900.P1092087409043248779

`p?[eq[1, A035208(n+1)+1]+1]`
-/

namespace A038900.P1092087409043248779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035208 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038900.P1092087409043248779

/-! ## A038900.P11717348449454167586

`eq[A000005(n+1), A000038(A035208(n+1))]+1`
-/

namespace A038900.P11717348449454167586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A035208 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038900.P11717348449454167586

/-!
# A038901: Primes p such that 29 is a square mod p.

The programs for A038901, there is no canonical definition to state claims against.
-/

/-! ## A038901.P1782390792471632242

`∪[A033219(n+1), A191022(n+1)]`
-/

namespace A038901.P1782390792471632242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P1782390792471632242

/-! ## A038901.P3772769154170194018

`∪[A139507(n+1), A191022(n+1)]`
-/

namespace A038901.P3772769154170194018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P3772769154170194018

/-! ## A038901.P3738646765788149875

`p?[A035264(n+1)]`
-/

namespace A038901.P3738646765788149875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038901.P3738646765788149875

/-! ## A038901.P8927645482703055034

`p?[record[A035264(A324347(n))]]`
-/

namespace A038901.P8927645482703055034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038901.P8927645482703055034

/-! ## A038901.P5648017173997617710

`p?[record[A035264(A349315(n))]]`
-/

namespace A038901.P5648017173997617710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038901.P5648017173997617710

/-! ## A038901.P10011934000010273471

`record[A006530(A035264(n+3))]`
-/

namespace A038901.P10011934000010273471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035264 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038901.P10011934000010273471

/-! ## A038901.P16179095575390871122

`filter[A035264(n+1), A010051(#)]`
-/

namespace A038901.P16179095575390871122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038901.P16179095575390871122

/-! ## A038901.P5655462949551091209

`filter[A035264(n+2), A380467(#)]`
-/

namespace A038901.P5655462949551091209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038901.P5655462949551091209

/-! ## A038901.P1284002292727867233

`∩[A000040(n+1), A035264(n+1)]`
-/

namespace A038901.P1284002292727867233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P1284002292727867233

/-! ## A038901.P15969287064398335755

`∩[A035264(n+1), A045344(n+1)]`
-/

namespace A038901.P15969287064398335755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P15969287064398335755

/-! ## A038901.P5896756762051552965

`∩[A035264(n+1), A065091(n+1)]`
-/

namespace A038901.P5896756762051552965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P5896756762051552965

/-! ## A038901.P2285242421041269181

`∩[A035264(n+1), A085118(n+1)]`
-/

namespace A038901.P2285242421041269181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P2285242421041269181

/-! ## A038901.P17006672383562054738

`∩[A035264(n+1), A106118(n+1)]`
-/

namespace A038901.P17006672383562054738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P17006672383562054738

/-! ## A038901.P4500532528612355464

`∩[A035264(n+1), A108719(n+1)]`
-/

namespace A038901.P4500532528612355464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P4500532528612355464

/-! ## A038901.P18286288688478680656

`∩[A035264(n+1), A116974(n+1)]`
-/

namespace A038901.P18286288688478680656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P18286288688478680656

/-! ## A038901.P6451717933214508974

`∩[A035264(n+1), A182986(n+1)]`
-/

namespace A038901.P6451717933214508974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P6451717933214508974

/-! ## A038901.P7165430370959959384

`∩[A035264(n+1), A215848(n+1)]`
-/

namespace A038901.P7165430370959959384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038901.P7165430370959959384

/-! ## A038901.P9497616613690970457

`p?[record[A035264(A133310(n))]]`
-/

namespace A038901.P9497616613690970457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038901.P9497616613690970457

/-! ## A038901.P14035468946004420971

`filter[A035264(n+1), A171387(#)]`
-/

namespace A038901.P14035468946004420971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A038901.P14035468946004420971

/-! ## A038901.P6397865215029360029

`filter[A035264(n+2), A080339(#)]`
-/

namespace A038901.P6397865215029360029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038901.P6397865215029360029

/-!
# A038902: Primes p such that 29 is not a square mod p.

The programs for A038902, there is no canonical definition to state claims against.
-/

/-! ## A038902.P18045274535894670480

`p?[comp[A038901(n+1)]]`
-/

namespace A038902.P18045274535894670480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038902.P18045274535894670480

/-! ## A038902.P11805017713694633948

`eq[(A011587(n)+2)², A210442(n)]`
-/

namespace A038902.P11805017713694633948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011587 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P11805017713694633948

/-! ## A038902.P18413646364695562777

`eq[A011587(n)+2, A284289(n)²]`
-/

namespace A038902.P18413646364695562777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P18413646364695562777

/-! ## A038902.P11329759298688725544

`eq[A011587(n)+2, A053989(n+1)²]`
-/

namespace A038902.P11329759298688725544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P11329759298688725544

/-! ## A038902.P7215685328312379962

`eq[A011587(n)+2, A231734(n+1)²]`
-/

namespace A038902.P7215685328312379962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P7215685328312379962

/-! ## A038902.P9590889213208075452

`eq[A011587(n)+2, A231820(n+1)²]`
-/

namespace A038902.P9590889213208075452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P9590889213208075452

/-! ## A038902.P11470482802394637713

`eq[A011587(n)+2, A211110(n)²]`
-/

namespace A038902.P11470482802394637713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P11470482802394637713

/-! ## A038902.P6982828616326396243

`eq[A011587(2*n), A072721(n)]`
-/

namespace A038902.P6982828616326396243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P6982828616326396243

/-! ## A038902.P13303214749426003427

`eq[A011587(2*n), A210442(n)]`
-/

namespace A038902.P13303214749426003427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P13303214749426003427

/-! ## A038902.P1014797283969024422

`eq[A011587(2*n), A211110(n)]`
-/

namespace A038902.P1014797283969024422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P1014797283969024422

/-! ## A038902.P1653061484688614538

`eq[A072721(n), A186305(2*n)]`
-/

namespace A038902.P1653061484688614538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186305 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P1653061484688614538

/-! ## A038902.P13544936334664003997

`eq[A011587(2*n), A284289(n)]`
-/

namespace A038902.P13544936334664003997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P13544936334664003997

/-! ## A038902.P9731234255831208234

`eq[A011587(2*n), A322968(n)]`
-/

namespace A038902.P9731234255831208234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P9731234255831208234

/-! ## A038902.P14042678837528845556

`eq[A011587(2*n), A053989(n+1)]`
-/

namespace A038902.P14042678837528845556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P14042678837528845556

/-! ## A038902.P5821853599037096637

`eq[A011587(2*n), A231820(n+1)]`
-/

namespace A038902.P5821853599037096637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P5821853599037096637

/-! ## A038902.P8123935961343769329

`eq[A011587(2*n), A117545(n+1)]`
-/

namespace A038902.P8123935961343769329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P8123935961343769329

/-! ## A038902.P15099182914319135188

`eq[A011587(n)+2, A117545(n+1)²]`
-/

namespace A038902.P15099182914319135188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038902.P15099182914319135188

/-!
# A038903: 30 is a square mod p.

The programs for A038903, there is no canonical definition to state claims against.
-/

/-! ## A038903.P6081092619734160742

`∪[A097959(n+1), A208361(n+1)]`
-/

namespace A038903.P6081092619734160742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038903.P6081092619734160742

/-! ## A038903.P8265997198086100396

`eq[A003415(n), A019426(A314362(n)+1)]`
-/

namespace A038903.P8265997198086100396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A314362 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P8265997198086100396

/-! ## A038903.P10317241060757609156

`eq[A019426(A314362(n)+1), A032741(n)]`
-/

namespace A038903.P10317241060757609156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A314362 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P10317241060757609156

/-! ## A038903.P17215858038138677657

`eq[A000035(A314362(n)), A032741(n)]`
-/

namespace A038903.P17215858038138677657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P17215858038138677657

/-! ## A038903.P8306278052428186867

`eq[A005128(n), A176059(A314362(n))]`
-/

namespace A038903.P8306278052428186867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A314362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P8306278052428186867

/-! ## A038903.P3374139466527007121

`eq[A007012(n), A176059(A314362(n))]`
-/

namespace A038903.P3374139466527007121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A314362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P3374139466527007121

/-! ## A038903.P12411425748095518101

`eq[A176059(A314362(n)), A319410(n)]`
-/

namespace A038903.P12411425748095518101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P12411425748095518101

/-! ## A038903.P12394375753885010982

`eq[A176059(A314362(n)), A322366(n)]`
-/

namespace A038903.P12394375753885010982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P12394375753885010982

/-! ## A038903.P7265243594252875629

`eq[A007920(n), A193356(A314362(n)+1)]`
-/

namespace A038903.P7265243594252875629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A314362 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P7265243594252875629

/-! ## A038903.P4287127917703196993

`eq[A000035(A314362(n)), A231820(n+1)]`
-/

namespace A038903.P4287127917703196993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038903.P4287127917703196993

/-!
# A038904: Primes p such that 30 is not a square mod p.

The programs for A038904, there is no canonical definition to state claims against.
-/

/-! ## A038904.P8275158286135502571

`p?[eq[-A226162(n), A322796(n)]-30]`
-/

namespace A038904.P8275158286135502571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226162 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038904.P8275158286135502571

/-! ## A038904.P14044120113200258260

`eq[2, A319410(n)+A035212(A028310(n))]`
-/

namespace A038904.P14044120113200258260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n + A035212 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038904.P14044120113200258260

/-! ## A038904.P12281090241330185199

`p?[eq[A109017(n), A226162(2*n)]]`
-/

namespace A038904.P12281090241330185199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038904.P12281090241330185199

/-! ## A038904.P15954331586719233037

`eq[A003415(n), A019426(A314362(n))]`
-/

namespace A038904.P15954331586719233037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A314362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P15954331586719233037

/-! ## A038904.P13928313648493311611

`eq[A019426(A314362(n)), A032741(n)]`
-/

namespace A038904.P13928313648493311611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P13928313648493311611

/-! ## A038904.P5267790134093341916

`eq[A019426(A314362(n)), A226378(n)]`
-/

namespace A038904.P5267790134093341916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P5267790134093341916

/-! ## A038904.P1326086867220592808

`eq[A019426(A314362(n)), A341945(n+2)]`
-/

namespace A038904.P1326086867220592808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A314362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P1326086867220592808

/-! ## A038904.P2206162713443178352

`eq[2, A319410(n)+A035212(A008574(n))]`
-/

namespace A038904.P2206162713443178352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n + A035212 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038904.P2206162713443178352

/-! ## A038904.P15943565100727982041

`eq[A007920(n), A193356(A314362(n))]`
-/

namespace A038904.P15943565100727982041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A314362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P15943565100727982041

/-! ## A038904.P12252430262578618296

`eq[A068346(n), A193356(A314362(n))]`
-/

namespace A038904.P12252430262578618296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A314362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P12252430262578618296

/-! ## A038904.P10199094394331387491

`eq[A005128(n), A176059(A314362(n)+1)]`
-/

namespace A038904.P10199094394331387491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A314362 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P10199094394331387491

/-! ## A038904.P3075889101764156821

`eq[A176059(A314362(n)+1), A319410(n)]`
-/

namespace A038904.P3075889101764156821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A314362 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038904.P3075889101764156821

/-! ## A038904.P14930987655321842000

`eq[1, A231820(n+1)+A000035(A314362(n))]`
-/

namespace A038904.P14930987655321842000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) + A000035 (A314362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038904.P14930987655321842000

/-!
# A038905: 31 is a square mod p.

The programs for A038905, there is no canonical definition to state claims against.
-/

/-! ## A038905.P15085555379667527658

`p?[(n+1)*A004525(A035213(n+1))]`
-/

namespace A038905.P15085555379667527658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004525 (A035213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038905.P15085555379667527658

/-! ## A038905.P12469475253636242236

`eq[A001065(n+1), A004525(A035213(n+1))]+1`
-/

namespace A038905.P12469475253636242236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A035213 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038905.P12469475253636242236

/-! ## A038905.P3378604974577511003

`eq[A004525(A035213(n+1)), A277127(n+1)]+1`
-/

namespace A038905.P3378604974577511003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A035213 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038905.P3378604974577511003

/-! ## A038905.P2830186061861590430

`eq[A001222(n+1)², A004525(A035213(n+1))]+1`
-/

namespace A038905.P2830186061861590430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A035213 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038905.P2830186061861590430

/-! ## A038905.P12957719174985406566

`eq[n*A004525(A035213(n+1)), A049559(n+1)]+1`
-/

namespace A038905.P12957719174985406566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004525 (A035213 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038905.P12957719174985406566

/-!
# A038906: Primes p such that 31 is not a square mod p.

The programs for A038906, there is no canonical definition to state claims against.
-/

/-! ## A038906.P787437441813297748

`p?[eq[1, A033307(A035213(n+1))]+1]`
-/

namespace A038906.P787437441813297748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A035213 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038906.P787437441813297748

/-! ## A038906.P3084707458910427420

`eq[A086130(n+1)+A035213(n+1), A187680(n+1)]+1`
-/

namespace A038906.P3084707458910427420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086130 (n + 1) + A035213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038906.P3084707458910427420

/-! ## A038906.P6885488571543507187

`eq[A035213(A022144(n)), A072480(n)]`
-/

namespace A038906.P6885488571543507187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035213 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038906.P6885488571543507187

/-! ## A038906.P18188871779924794693

`eq[A035213(A022144(n))+1, A003415(n)]`
-/

namespace A038906.P18188871779924794693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035213 (A022144 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038906.P18188871779924794693

/-! ## A038906.P4620037068138642324

`A000040(lt[A366572(3*(n+1)), A103237(n)])`
-/

namespace A038906.P4620037068138642324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366572 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038906.P4620037068138642324

/-!
# A038907: Primes p such that 33 is a square mod p.

The programs for A038907, there is no canonical definition to state claims against.
-/

/-! ## A038907.P16255368981350501983

`∪[A141176(n+1), A141177(n+1)]`
-/

namespace A038907.P16255368981350501983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038907.P16255368981350501983

/-! ## A038907.P10395371613370380842

`p?[∪[A243184(n+1), A243185(n+1)]]`
-/

namespace A038907.P10395371613370380842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243184 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038907.P10395371613370380842

/-! ## A038907.P12205136823515826178

`p?[A328674(2*(n+1))-A002264(n+2)]`
-/

namespace A038907.P12205136823515826178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (2 * (n + 1)) - A002264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038907.P12205136823515826178

/-! ## A038907.P17369259138492335391

`p?[lt[0, A347211(2*n+3)]]`
-/

namespace A038907.P17369259138492335391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347211 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038907.P17369259138492335391

/-! ## A038907.P10563656590192867438

`record[A217581(A000217(n+3)+n)]`
-/

namespace A038907.P10563656590192867438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A000217 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038907.P10563656590192867438

/-!
# A038908: Primes p such that 33 is not a square mod p.

The programs for A038908, the canonical program `A038908.P2259766501861335261` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038908 has offset 1).

The definition of A038908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038908.P9987913410894189858

`eq[A260148(n), A391502(n)]`
-/

namespace A038908.P9987913410894189858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038908.P9987913410894189858

namespace A038908

/-- `eq[A260148(n), A391502(n)]` -/
def P9987913410894189858.Spec : Prop :=
  ∀ n, (P9987913410894189858.a n : ℤ) = A038908 (n + 1)

end A038908

/-! ## A038908.P2944285527393567525

`p?[(n+1)*A015896(A035215(n+1))]`
-/

namespace A038908.P2944285527393567525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015896 (A035215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038908.P2944285527393567525

namespace A038908

/-- `p?[(n+1)*A015896(A035215(n+1))]` -/
def P2944285527393567525.Spec : Prop :=
  ∀ n, P2944285527393567525.a n = A038908 (n + 1)

end A038908

/-! ## A038908.P2259766501861335261

`eq[A016035(n+1), A035215(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038908

/-- `eq[A016035(n+1), A035215(n+1)]+1` -/
def P2259766501861335261.Spec : Prop :=
  ∀ n, (P2259766501861335261.a n : ℤ) = A038908 (n + 1)

theorem P2259766501861335261.correct : P2259766501861335261.Spec := by
  intro n
  simp only [A038908, Nat.add_sub_cancel]

end A038908

/-! ## A038908.P2001433314194820368

`A065475(eq[A016035(n+1), A035215(n+1)])`
-/

namespace A038908.P2001433314194820368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038908.P2001433314194820368

namespace A038908

/-- `A065475(eq[A016035(n+1), A035215(n+1)])` -/
def P2001433314194820368.Spec : Prop :=
  ∀ n, P2001433314194820368.a n = A038908 (n + 1)

end A038908

/-! ## A038908.P5284733016204096225

`eq[A035215(A022144(n)), A072480(n)]`
-/

namespace A038908.P5284733016204096225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038908.P5284733016204096225

namespace A038908

/-- `eq[A035215(A022144(n)), A072480(n)]` -/
def P5284733016204096225.Spec : Prop :=
  ∀ n, (P5284733016204096225.a n : ℤ) = A038908 (n + 1)

end A038908

/-! ## A038908.P4078917614012401665

`eq[A035215(A022144(n))², A086134(n)]`
-/

namespace A038908.P4078917614012401665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (A022144 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038908.P4078917614012401665

namespace A038908

/-- `eq[A035215(A022144(n))², A086134(n)]` -/
def P4078917614012401665.Spec : Prop :=
  ∀ n, (P4078917614012401665.a n : ℤ) = A038908 (n + 1)

end A038908

/-!
# A038909: Primes p such that 34 is a square mod p.

The programs for A038909, there is no canonical definition to state claims against.
-/

/-! ## A038909.P4302696201194086457

`∪[A176585(n+1), A191025(n+1)]`
-/

namespace A038909.P4302696201194086457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038909.P4302696201194086457

/-! ## A038909.P5533128563035632734

`∪[A178806(n+1), A191025(n+1)]`
-/

namespace A038909.P5533128563035632734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038909.P5533128563035632734

/-! ## A038909.P12989232409544995582

`record[A084126(A340387(n+1))]`
-/

namespace A038909.P12989232409544995582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (A340387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038909.P12989232409544995582

/-! ## A038909.P13739509690591711075

`A000040(floor(log(A143880(n+2))))`
-/

namespace A038909.P13739509690591711075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊Real.log (A143880 (n + 2) : ℝ)⌋.toNat

end

end A038909.P13739509690591711075

/-! ## A038909.P7912162738314707320

`A000040(floor(log(A143885(n+2))))`
-/

namespace A038909.P7912162738314707320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊Real.log (A143885 (n + 2) : ℝ)⌋.toNat

end

end A038909.P7912162738314707320

/-!
# A038910: Primes p such that 34 is not a square mod p.

The programs for A038910, there is no canonical definition to state claims against.
-/

/-! ## A038910.P6632235327498161710

`p?[lt[A305615(n)+1, A139457(n+1)]]`
-/

namespace A038910.P6632235327498161710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038910.P6632235327498161710

/-! ## A038910.P17806772153121059492

`A000040(A239308(3*n+4)+n)`
-/

namespace A038910.P17806772153121059492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A239308 (3 * n + 4) + (n : ℤ)).toNat

end

end A038910.P17806772153121059492

/-! ## A038910.P2895202669366545136

`A000040(lt[A016945(n), A180047(2*(n+2))])`
-/

namespace A038910.P2895202669366545136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180047 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038910.P2895202669366545136

/-! ## A038910.P1839249107489045168

`A038618(lt[A051387(n+1), A304249(2*(n+2))])`
-/

namespace A038910.P1839249107489045168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304249 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038910.P1839249107489045168

/-! ## A038910.P16134757671978748993

`A000040(lt[A246296(n+1), A246257(2*(n+2))])`
-/

namespace A038910.P16134757671978748993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246257 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038910.P16134757671978748993

/-!
# A038911: Primes p such that 35 is a square mod p.

The programs for A038911, there is no canonical definition to state claims against.
-/

/-! ## A038911.P8441167274944317068

`p?[A035266(n+1)]`
-/

namespace A038911.P8441167274944317068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038911.P8441167274944317068

/-! ## A038911.P6620074367853847137

`record[A006530(A035266(n+3))]`
-/

namespace A038911.P6620074367853847137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035266 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038911.P6620074367853847137

/-! ## A038911.P8201083069748569774

`filter[A035266(n+1), A010051(#)]`
-/

namespace A038911.P8201083069748569774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038911.P8201083069748569774

/-! ## A038911.P4767949919467030211

`filter[A035266(n+2), A380467(#)]`
-/

namespace A038911.P4767949919467030211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038911.P4767949919467030211

/-! ## A038911.P5123560724922244203

`∩[A000040(n+1), A035266(n+1)]`
-/

namespace A038911.P5123560724922244203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P5123560724922244203

/-! ## A038911.P109733918193489581

`∩[A035266(n+1), A045344(n+1)]`
-/

namespace A038911.P109733918193489581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P109733918193489581

/-! ## A038911.P15480069818599774323

`∩[A035266(n+1), A065091(n+1)]`
-/

namespace A038911.P15480069818599774323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P15480069818599774323

/-! ## A038911.P17342752168860816890

`∩[A035266(n+1), A085118(n+1)]`
-/

namespace A038911.P17342752168860816890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P17342752168860816890

/-! ## A038911.P17347239481528198489

`∩[A035266(n+1), A108719(n+1)]`
-/

namespace A038911.P17347239481528198489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P17347239481528198489

/-! ## A038911.P9592022878556061315

`∩[A035266(n+1), A116974(n+1)]`
-/

namespace A038911.P9592022878556061315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P9592022878556061315

/-! ## A038911.P14779221656554169590

`∩[A035266(n+1), A182986(n+1)]`
-/

namespace A038911.P14779221656554169590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P14779221656554169590

/-! ## A038911.P4346677178399899159

`∩[A035266(n+1), A215848(n+1)]`
-/

namespace A038911.P4346677178399899159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P4346677178399899159

/-! ## A038911.P10478449075369185325

`p?[record[A035266(A133310(n))]]`
-/

namespace A038911.P10478449075369185325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038911.P10478449075369185325

/-! ## A038911.P539755925011743393

`p?[record[A035266(A052938(n))]]`
-/

namespace A038911.P539755925011743393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038911.P539755925011743393

/-! ## A038911.P6106770788340680302

`p?[comp[A038912(n+1)]]`
-/

namespace A038911.P6106770788340680302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038911.P6106770788340680302

/-! ## A038911.P1282248847000230659

`filter[A035266(n+1), A171387(#)]`
-/

namespace A038911.P1282248847000230659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A038911.P1282248847000230659

/-! ## A038911.P4841450782501701853

`filter[A035266(n+2), A080339(#)]`
-/

namespace A038911.P4841450782501701853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038911.P4841450782501701853

/-! ## A038911.P13884577507393267861

`filter[A035266(n+2), A080545(#)]`
-/

namespace A038911.P13884577507393267861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A038911.P13884577507393267861

/-! ## A038911.P4737501483334136062

`p?[record[A035266(A065648(n))]]`
-/

namespace A038911.P4737501483334136062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038911.P4737501483334136062

/-! ## A038911.P4387180601514542210

`∩[A035266(n+1), A240960(n+1)]`
-/

namespace A038911.P4387180601514542210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038911.P4387180601514542210

/-!
# A038912: Primes p such that 35 is not a square mod p.

The programs for A038912, the canonical program `A038912.P15475987441087132189` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038912 has offset 1).

The definition of A038912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038912.P16143399004809964393

`eq[A035217(n+1)+1, A319684(n+1)]+1`
-/

namespace A038912.P16143399004809964393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035217 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038912.P16143399004809964393

namespace A038912

/-- `eq[A035217(n+1)+1, A319684(n+1)]+1` -/
def P16143399004809964393.Spec : Prop :=
  ∀ n, (P16143399004809964393.a n : ℤ) = A038912 (n + 1)

end A038912

/-! ## A038912.P15475987441087132189

`p?[eq[A175629(n), A226162(2*n)]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038912

/-- `p?[eq[A175629(n), A226162(2*n)]]` -/
def P15475987441087132189.Spec : Prop :=
  ∀ n, (P15475987441087132189.a n : ℤ) = A038912 (n + 1)

theorem P15475987441087132189.correct : P15475987441087132189.Spec := by
  intro n
  simp only [A038912, Nat.add_sub_cancel]

end A038912

/-! ## A038912.P10925385539516533382

`record[A014963((A035217(n+1)+1)*A056192(n+1))]`
-/

namespace A038912.P10925385539516533382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((A035217 (n + 1) + 1) * A056192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038912.P10925385539516533382

namespace A038912

/-- `record[A014963((A035217(n+1)+1)*A056192(n+1))]` -/
def P10925385539516533382.Spec : Prop :=
  ∀ n, P10925385539516533382.a n = A038912 (n + 1)

end A038912

/-!
# A038913: Primes p such that 37 is a square mod p.

The programs for A038913, there is no canonical definition to state claims against.
-/

/-! ## A038913.P3086553973462745161

`∪[A033225(n+1), A191027(n+1)]`
-/

namespace A038913.P3086553973462745161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P3086553973462745161

/-! ## A038913.P1621454747460051231

`p?[A035267(n+1)]`
-/

namespace A038913.P1621454747460051231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038913.P1621454747460051231

/-! ## A038913.P6406886505091526104

`p?[record[A035267(A324347(n))]]`
-/

namespace A038913.P6406886505091526104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038913.P6406886505091526104

/-! ## A038913.P12359750455503429262

`record[A006530(A035267(n+2))]`
-/

namespace A038913.P12359750455503429262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035267 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038913.P12359750455503429262

/-! ## A038913.P187054935040626919

`filter[A035267(n+1), A010051(#)]`
-/

namespace A038913.P187054935040626919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038913.P187054935040626919

/-! ## A038913.P11927438786159713581

`filter[A035267(n+2), A380467(#)]`
-/

namespace A038913.P11927438786159713581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038913.P11927438786159713581

/-! ## A038913.P16950707192674779807

`∩[A000040(n+1), A035267(n+1)]`
-/

namespace A038913.P16950707192674779807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P16950707192674779807

/-! ## A038913.P10818791370886531080

`∩[A004139(n+1), A035267(n+1)]`
-/

namespace A038913.P10818791370886531080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P10818791370886531080

/-! ## A038913.P11543119466802677674

`∩[A035267(n+1), A045319(n+1)]`
-/

namespace A038913.P11543119466802677674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P11543119466802677674

/-! ## A038913.P5446049266724550133

`∩[A035267(n+1), A065091(n+1)]`
-/

namespace A038913.P5446049266724550133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P5446049266724550133

/-! ## A038913.P1793812555578088418

`∩[A035267(n+1), A085118(n+1)]`
-/

namespace A038913.P1793812555578088418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P1793812555578088418

/-! ## A038913.P3509130032844159866

`∩[A035267(n+1), A116974(n+1)]`
-/

namespace A038913.P3509130032844159866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P3509130032844159866

/-! ## A038913.P10718145360381973804

`∩[A035267(n+1), A182986(n+1)]`
-/

namespace A038913.P10718145360381973804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P10718145360381973804

/-! ## A038913.P17855975661081377704

`∩[A035267(n+1), A197636(n+1)]`
-/

namespace A038913.P17855975661081377704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P17855975661081377704

/-! ## A038913.P5475671155685506109

`∩[A035267(n+1), A327906(n+1)]`
-/

namespace A038913.P5475671155685506109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P5475671155685506109

/-! ## A038913.P2859468652373628288

`p?[record[A035267(A133310(n))]]`
-/

namespace A038913.P2859468652373628288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038913.P2859468652373628288

/-! ## A038913.P3963988415194300073

`filter[A035267(n+2), A080339(#)]`
-/

namespace A038913.P3963988415194300073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038913.P3963988415194300073

/-! ## A038913.P3147844668224608698

`filter[A035267(n+2), A080545(#)]`
-/

namespace A038913.P3147844668224608698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A038913.P3147844668224608698

/-! ## A038913.P5312299338868061987

`p?[record[A035267(A065648(n))]]`
-/

namespace A038913.P5312299338868061987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038913.P5312299338868061987

/-! ## A038913.P12819491674310042465

`∩[A035267(n+1), A240960(n+1)]`
-/

namespace A038913.P12819491674310042465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038913.P12819491674310042465

/-!
# A038914: Primes p such that 37 is not a square mod p.

The programs for A038914, there is no canonical definition to state claims against.
-/

/-! ## A038914.P8880417700259589365

`p?[comp[A038913(n+1)]]`
-/

namespace A038914.P8880417700259589365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038914.P8880417700259589365

/-! ## A038914.P6398141021048478614

`eq[(A011589(n)+2)², A210442(n)]`
-/

namespace A038914.P6398141021048478614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011589 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P6398141021048478614

/-! ## A038914.P5793178905399130545

`eq[A011589(n)+2, A284289(n)²]`
-/

namespace A038914.P5793178905399130545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P5793178905399130545

/-! ## A038914.P4391047171654231155

`eq[A011589(n)+2, A053989(n+1)²]`
-/

namespace A038914.P4391047171654231155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P4391047171654231155

/-! ## A038914.P9921111872384112752

`eq[A011589(n)+2, A231734(n+1)²]`
-/

namespace A038914.P9921111872384112752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P9921111872384112752

/-! ## A038914.P8876784398966625695

`eq[A011589(n)+2, A231820(n+1)²]`
-/

namespace A038914.P8876784398966625695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P8876784398966625695

/-! ## A038914.P17726011960394958328

`eq[A011589(n)+2, A211110(n)²]`
-/

namespace A038914.P17726011960394958328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P17726011960394958328

/-! ## A038914.P14253075532666791557

`eq[A011589(2*n), A072721(n)]`
-/

namespace A038914.P14253075532666791557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P14253075532666791557

/-! ## A038914.P9042200559389884907

`eq[A011589(2*n), A210442(n)]`
-/

namespace A038914.P9042200559389884907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P9042200559389884907

/-! ## A038914.P1630341176213198366

`eq[A011589(2*n), A211110(n)]`
-/

namespace A038914.P1630341176213198366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P1630341176213198366

/-! ## A038914.P10334090148790808217

`eq[A011589(2*n), A284289(n)]`
-/

namespace A038914.P10334090148790808217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P10334090148790808217

/-! ## A038914.P14446480858898294885

`eq[A011589(2*n), A322968(n)]`
-/

namespace A038914.P14446480858898294885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P14446480858898294885

/-! ## A038914.P8504094185353582236

`eq[A011589(2*n), A053989(n+1)]`
-/

namespace A038914.P8504094185353582236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P8504094185353582236

/-! ## A038914.P15289077639803981396

`eq[A011589(2*n), A231820(n+1)]`
-/

namespace A038914.P15289077639803981396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P15289077639803981396

/-! ## A038914.P7561244713648115634

`eq[A011589(2*n), A117545(n+1)]`
-/

namespace A038914.P7561244713648115634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P7561244713648115634

/-! ## A038914.P12446857030383942856

`eq[A011589(n)+2, A117545(n+1)²]`
-/

namespace A038914.P12446857030383942856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038914.P12446857030383942856

/-!
# A038915: Primes p such that 38 is a square mod p.

The programs for A038915, there is no canonical definition to state claims against.
-/

/-! ## A038915.P17941550491252963840

`p?[A035268(n+1)]`
-/

namespace A038915.P17941550491252963840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038915.P17941550491252963840

/-! ## A038915.P13248698387911595529

`p?[record[A035268(A324347(n))]]`
-/

namespace A038915.P13248698387911595529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038915.P13248698387911595529

/-! ## A038915.P13806405546206878431

`p?[record[A035268(A328399(n))]]`
-/

namespace A038915.P13806405546206878431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038915.P13806405546206878431

/-! ## A038915.P9138863448652922425

`p?[record[A035268(A349315(n))]]`
-/

namespace A038915.P9138863448652922425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038915.P9138863448652922425

/-! ## A038915.P14592851801613328678

`filter[A035268(n+1), A010051(#)]`
-/

namespace A038915.P14592851801613328678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038915.P14592851801613328678

/-! ## A038915.P965416543942712887

`∩[A000040(n+1), A035268(n+1)]`
-/

namespace A038915.P965416543942712887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038915.P965416543942712887

/-! ## A038915.P426926729209216359

`∩[A035268(n+1), A045319(n+1)]`
-/

namespace A038915.P426926729209216359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038915.P426926729209216359

/-! ## A038915.P18224302754097781865

`∩[A035268(n+1), A045344(n+1)]`
-/

namespace A038915.P18224302754097781865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038915.P18224302754097781865

/-! ## A038915.P6648036552907918673

`∩[A035268(n+1), A116974(n+1)]`
-/

namespace A038915.P6648036552907918673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038915.P6648036552907918673

/-! ## A038915.P2979065785006813260

`∩[A035268(n+1), A182986(n+1)]`
-/

namespace A038915.P2979065785006813260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038915.P2979065785006813260

/-! ## A038915.P2602503912415669893

`p?[record[A035268(A133310(n))]]`
-/

namespace A038915.P2602503912415669893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038915.P2602503912415669893

/-! ## A038915.P8917734584702280346

`record[p?[A035268(A052938(n))]]`
-/

namespace A038915.P8917734584702280346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038915.P8917734584702280346

/-! ## A038915.P7611376316083755658

`p?[comp[A038916(n+1)]]`
-/

namespace A038915.P7611376316083755658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038916 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038915.P7611376316083755658

/-! ## A038915.P12537708454739555178

`filter[A035268(n+2), A080339(#)]`
-/

namespace A038915.P12537708454739555178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038915.P12537708454739555178

/-! ## A038915.P4606645831977977884

`∩[A035268(n+1), A240960(n+1)]`
-/

namespace A038915.P4606645831977977884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038915.P4606645831977977884

/-!
# A038916: Primes p such that 38 is not a square mod p.

The programs for A038916, there is no canonical definition to state claims against.
-/

/-! ## A038916.P15364417521537992313

`p?[comp[A035268(n+1)]]`
-/

namespace A038916.P15364417521537992313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038916.P15364417521537992313

/-! ## A038916.P6841945822692325773

`∩[A000040(n+1), comp[A035268(n+1)]]`
-/

namespace A038916.P6841945822692325773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035268 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038916.P6841945822692325773

/-! ## A038916.P14741471966542514624

`p?[lt[A035220(n+1), 1]+1]`
-/

namespace A038916.P14741471966542514624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035220 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038916.P14741471966542514624

/-! ## A038916.P13738172972975279563

`lt[A035220(gcd(A007956(n+1)+n, n+1)), 1]+1`
-/

namespace A038916.P13738172972975279563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035220 (Int.gcd (A007956 (n + 1) + (n : ℤ)) (n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A038916.P13738172972975279563

/-! ## A038916.P7737641042932354987

`A000040(lt[A104457(n+2), A195141(3*(n+1))])`
-/

namespace A038916.P7737641042932354987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195141 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038916.P7737641042932354987

/-!
# A038917: Primes p such that 39 is a square mod p.

The programs for A038917, the canonical program `A038917.P6060502532703074723` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038917 has offset 1).

The definition of A038917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038917.P6060502532703074723

`p?[comp[A038918(n+1)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038917

/-- `p?[comp[A038918(n+1)]]` -/
def P6060502532703074723.Spec : Prop :=
  ∀ n, (P6060502532703074723.a n : ℤ) = A038917 (n + 1)

theorem P6060502532703074723.correct : P6060502532703074723.Spec := by
  intro n
  simp only [A038917, Nat.add_sub_cancel]

end A038917

/-! ## A038917.P17382992130123414264

`p?[(n+1)*A004525(A035221(n+1))]`
-/

namespace A038917.P17382992130123414264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004525 (A035221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038917.P17382992130123414264

namespace A038917

/-- `p?[(n+1)*A004525(A035221(n+1))]` -/
def P17382992130123414264.Spec : Prop :=
  ∀ n, P17382992130123414264.a n = A038917 (n + 1)

end A038917

/-! ## A038917.P13766350806686290899

`p?[n+1-A239261(A035151(n+1)+n)]`
-/

namespace A038917.P13766350806686290899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A239261 (A035151 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038917.P13766350806686290899

namespace A038917

/-- `p?[n+1-A239261(A035151(n+1)+n)]` -/
def P13766350806686290899.Spec : Prop :=
  ∀ n, P13766350806686290899.a n = A038917 (n + 1)

end A038917

/-! ## A038917.P6877815139122777882

`∏{p}[A387687(n)^3, #]`
-/

namespace A038917.P6877815139122777882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387687 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A038917.P6877815139122777882

namespace A038917

/-- `∏{p}[A387687(n)^3, #]` -/
def P6877815139122777882.Spec : Prop :=
  ∀ n, (P6877815139122777882.a n : ℤ) = A038917 (n + 1)

end A038917

/-!
# A038918: Primes p such that 39 is not a square mod p.

The programs for A038918, the canonical program `A038918.P6317659458986366672` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038918 has offset 1).

The definition of A038918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038918.P6317659458986366672

`p?[eq[and(2, n), A035151(n+1)]+1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038918

/-- `p?[eq[and(2, n), A035151(n+1)]+1]` -/
def P6317659458986366672.Spec : Prop :=
  ∀ n, (P6317659458986366672.a n : ℤ) = A038918 (n + 1)

theorem P6317659458986366672.correct : P6317659458986366672.Spec := by
  intro n
  simp only [A038918, Nat.add_sub_cancel]

end A038918

/-! ## A038918.P15801397547924476908

`eq[A035221(n+1), A048050(n+1)]+1`
-/

namespace A038918.P15801397547924476908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038918.P15801397547924476908

namespace A038918

/-- `eq[A035221(n+1), A048050(n+1)]+1` -/
def P15801397547924476908.Spec : Prop :=
  ∀ n, (P15801397547924476908.a n : ℤ) = A038918 (n + 1)

end A038918

/-! ## A038918.P1441249745237027654

`lt[A035221(n+1), A010051(n+1)]+1`
-/

namespace A038918.P1441249745237027654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A038918.P1441249745237027654

namespace A038918

/-- `lt[A035221(n+1), A010051(n+1)]+1` -/
def P1441249745237027654.Spec : Prop :=
  ∀ n, (P1441249745237027654.a n : ℤ) = A038918 (n + 1)

end A038918

/-! ## A038918.P4605064705802500849

`A086507(eq[A035221(n+1), A048050(n+1)])`
-/

namespace A038918.P4605064705802500849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038918.P4605064705802500849

namespace A038918

/-- `A086507(eq[A035221(n+1), A048050(n+1)])` -/
def P4605064705802500849.Spec : Prop :=
  ∀ n, P4605064705802500849.a n = A038918 (n + 1)

end A038918

/-! ## A038918.P1932155560070447880

`A086507(lt[A035221(n+1), A010051(n+1)])`
-/

namespace A038918.P1932155560070447880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038918.P1932155560070447880

namespace A038918

/-- `A086507(lt[A035221(n+1), A010051(n+1)])` -/
def P1932155560070447880.Spec : Prop :=
  ∀ n, P1932155560070447880.a n = A038918 (n + 1)

end A038918

/-!
# A038919: Primes p such that 41 is a square mod p.

The programs for A038919, there is no canonical definition to state claims against.
-/

/-! ## A038919.P17447493497539494725

`∪[A033228(n+1), A191030(n+1)]`
-/

namespace A038919.P17447493497539494725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P17447493497539494725

/-! ## A038919.P9601426768501065616

`∪[A107194(n+1), A191030(n+1)]`
-/

namespace A038919.P9601426768501065616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P9601426768501065616

/-! ## A038919.P466113095838925556

`p?[A035269(n+1)]`
-/

namespace A038919.P466113095838925556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038919.P466113095838925556

/-! ## A038919.P4767761347161267393

`p?[record[A035269(A349315(n))]]`
-/

namespace A038919.P4767761347161267393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038919.P4767761347161267393

/-! ## A038919.P8254858124790343945

`record[A006530(A035269(n+2))]`
-/

namespace A038919.P8254858124790343945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035269 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038919.P8254858124790343945

/-! ## A038919.P3823133401414707538

`record[A020639(A035269(n+3))]`
-/

namespace A038919.P3823133401414707538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035269 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038919.P3823133401414707538

/-! ## A038919.P3653513786053381101

`filter[A035269(n+1), A010051(#)]`
-/

namespace A038919.P3653513786053381101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038919.P3653513786053381101

/-! ## A038919.P7579009033902128605

`∩[A000040(n+1), A035269(n+1)]`
-/

namespace A038919.P7579009033902128605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P7579009033902128605

/-! ## A038919.P402548734610565834

`∩[A035269(n+1), A045344(n+1)]`
-/

namespace A038919.P402548734610565834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P402548734610565834

/-! ## A038919.P6890570307342620198

`∩[A035269(n+1), A116974(n+1)]`
-/

namespace A038919.P6890570307342620198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P6890570307342620198

/-! ## A038919.P8100210808755758678

`∩[A035269(n+1), A182986(n+1)]`
-/

namespace A038919.P8100210808755758678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P8100210808755758678

/-! ## A038919.P14493093399163171117

`filter[A035269(n+2), A080339(#)]`
-/

namespace A038919.P14493093399163171117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038919.P14493093399163171117

/-! ## A038919.P8601854368318741234

`∩[A035269(n+1), A240960(n+1)]`
-/

namespace A038919.P8601854368318741234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038919.P8601854368318741234

/-!
# A038920: Primes p such that 41 is not a square mod p.

The programs for A038920, there is no canonical definition to state claims against.
-/

/-! ## A038920.P4589178087346877409

`p?[comp[A038919(n+1)]]`
-/

namespace A038920.P4589178087346877409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038920.P4589178087346877409

/-! ## A038920.P15179948091664026787

`eq[A011590(n), A260148(n)]`
-/

namespace A038920.P15179948091664026787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P15179948091664026787

/-! ## A038920.P4717285813712824589

`eq[(A011590(n)+2)², A211110(n)]`
-/

namespace A038920.P4717285813712824589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011590 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P4717285813712824589

/-! ## A038920.P4179304194768180358

`eq[A011590(n)+2, A284289(n)²]`
-/

namespace A038920.P4179304194768180358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P4179304194768180358

/-! ## A038920.P14837019337890586912

`eq[A011590(n)+2, A053989(n+1)²]`
-/

namespace A038920.P14837019337890586912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P14837019337890586912

/-! ## A038920.P14711830044817445504

`eq[A011590(n)+2, A231734(n+1)²]`
-/

namespace A038920.P14711830044817445504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P14711830044817445504

/-! ## A038920.P12634854437350296735

`eq[A011590(n)+2, A231820(n+1)²]`
-/

namespace A038920.P12634854437350296735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P12634854437350296735

/-! ## A038920.P12629073568665825741

`eq[A011590(n)+2, A210442(n)²]`
-/

namespace A038920.P12629073568665825741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P12629073568665825741

/-! ## A038920.P10030396362811628700

`eq[A011590(n)+2, A117545(n+1)²]`
-/

namespace A038920.P10030396362811628700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P10030396362811628700

/-! ## A038920.P9449227443631664672

`eq[A011590(n)+2, A331885(n)²]`
-/

namespace A038920.P9449227443631664672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038920.P9449227443631664672

/-!
# A038921: Primes p such that 42 is a square mod p.

The programs for A038921, there is no canonical definition to state claims against.
-/

/-! ## A038921.P6163410039227187993

`p?[comp[A038922(n+1)]]`
-/

namespace A038921.P6163410039227187993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038922 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038921.P6163410039227187993

/-! ## A038921.P4395261577115058121

`∩[A000040(n+1), comp[A038922(n+1)]]`
-/

namespace A038921.P4395261577115058121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038922 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038921.P4395261577115058121

/-! ## A038921.P417589082189367643

`record[p?[A237284(A000124(n))]]`
-/

namespace A038921.P417589082189367643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237284 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038921.P417589082189367643

/-! ## A038921.P18422763896268176383

`p?[∑[A051903(A341063(n+1))]]`
-/

namespace A038921.P18422763896268176383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A341063 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038921.P18422763896268176383

/-! ## A038921.P2971381471468081600

`p?[∑[A056813(A286280(n+2))]]`
-/

namespace A038921.P2971381471468081600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A286280 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038921.P2971381471468081600

/-!
# A038922: Primes p such that 42 is not a square mod p.

The programs for A038922, there is no canonical definition to state claims against.
-/

/-! ## A038922.P16440788810840534971

`p?[eq[A109265(n), A192006(n)]]`
-/

namespace A038922.P16440788810840534971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038922.P16440788810840534971

/-! ## A038922.P15560523278204524293

`p?[gcd(A035224(n+1), A089026(n+1))]`
-/

namespace A038922.P15560523278204524293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035224 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038922.P15560523278204524293

/-! ## A038922.P18268061891967482140

`eq[A035224(n+1), A326185(n+1)]+1`
-/

namespace A038922.P18268061891967482140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038922.P18268061891967482140

/-! ## A038922.P7599111569476375714

`eq[A322366(n)+A192006(n), 2*n%3]`
-/

namespace A038922.P7599111569476375714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n + A192006 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A038922.P7599111569476375714

/-! ## A038922.P9422527264089094439

`A109613(eq[A035224(n+1), A326185(n+1)])`
-/

namespace A038922.P9422527264089094439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038922.P9422527264089094439

/-!
# A038923: Primes p such that 43 is a square mod p.

The programs for A038923, there is no canonical definition to state claims against.
-/

/-! ## A038923.P13658502318427615374

`p?[A035270(n+1)]`
-/

namespace A038923.P13658502318427615374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038923.P13658502318427615374

/-! ## A038923.P5834789089970548656

`record[A006530(A035270(n+2))]`
-/

namespace A038923.P5834789089970548656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035270 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038923.P5834789089970548656

/-! ## A038923.P1885751618949172092

`filter[A035270(n+1), A010051(#)]`
-/

namespace A038923.P1885751618949172092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038923.P1885751618949172092

/-! ## A038923.P8814338228755382034

`filter[A035270(n+2), A380467(#)]`
-/

namespace A038923.P8814338228755382034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038923.P8814338228755382034

/-! ## A038923.P17695199480188243541

`∩[A000040(n+1), A035270(n+1)]`
-/

namespace A038923.P17695199480188243541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P17695199480188243541

/-! ## A038923.P13415322441418223925

`∩[A004139(n+1), A035270(n+1)]`
-/

namespace A038923.P13415322441418223925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P13415322441418223925

/-! ## A038923.P8714837076854678249

`∩[A035270(n+1), A045319(n+1)]`
-/

namespace A038923.P8714837076854678249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P8714837076854678249

/-! ## A038923.P2089416635391466066

`∩[A035270(n+1), A065091(n+1)]`
-/

namespace A038923.P2089416635391466066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P2089416635391466066

/-! ## A038923.P16205106211990510912

`∩[A035270(n+1), A085118(n+1)]`
-/

namespace A038923.P16205106211990510912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P16205106211990510912

/-! ## A038923.P10171257640147898306

`∩[A035270(n+1), A116974(n+1)]`
-/

namespace A038923.P10171257640147898306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P10171257640147898306

/-! ## A038923.P9618295331773391303

`∩[A035270(n+1), A182986(n+1)]`
-/

namespace A038923.P9618295331773391303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P9618295331773391303

/-! ## A038923.P4425842891162578305

`∩[A008578(n+1), A035270(n+2)]`
-/

namespace A038923.P4425842891162578305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P4425842891162578305

/-! ## A038923.P11655093134670235973

`∩[A035270(n+1), A327906(n+1)]`
-/

namespace A038923.P11655093134670235973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P11655093134670235973

/-! ## A038923.P688149679766437925

`p?[record[A035270(A133310(n))]]`
-/

namespace A038923.P688149679766437925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038923.P688149679766437925

/-! ## A038923.P7757607418772713776

`record[p?[A035270(A052938(n))]]`
-/

namespace A038923.P7757607418772713776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038923.P7757607418772713776

/-! ## A038923.P16098364214397694900

`p?[A000034(n)*A035270(A052938(n))]`
-/

namespace A038923.P16098364214397694900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A035270 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038923.P16098364214397694900

/-! ## A038923.P3443336275029640421

`filter[A035270(n+2), A080339(#)]`
-/

namespace A038923.P3443336275029640421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038923.P3443336275029640421

/-! ## A038923.P9033130477073252583

`filter[A035270(n+2), A080545(#)]`
-/

namespace A038923.P9033130477073252583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A038923.P9033130477073252583

/-! ## A038923.P633201224166357161

`A280488(p?[A035270(2*n-(n-1))])`
-/

namespace A038923.P633201224166357161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280488 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A038923.P633201224166357161

/-! ## A038923.P12535940472166108406

`∩[A035270(n+1), A230606(n+1)]`
-/

namespace A038923.P12535940472166108406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038923.P12535940472166108406

/-!
# A038924: Primes p such that 43 is not a square mod p.

The programs for A038924, there is no canonical definition to state claims against.
-/

/-! ## A038924.P10301471488684087584

`p?[comp[A035270(n+1)]]`
-/

namespace A038924.P10301471488684087584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038924.P10301471488684087584

/-! ## A038924.P13899762921658033832

`∩[A000040(n+1), comp[A035270(n+1)]]`
-/

namespace A038924.P13899762921658033832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038924.P13899762921658033832

/-! ## A038924.P17912380778172508230

`∩[A008578(n+1), comp[A035270(n+1)]]`
-/

namespace A038924.P17912380778172508230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038924.P17912380778172508230

/-! ## A038924.P4823056137003347693

`∩[comp[A035270(n+1)], A045344(n+1)]`
-/

namespace A038924.P4823056137003347693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035270 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A038924.P4823056137003347693

/-! ## A038924.P2697364826814161874

`p?[lt[A035225(n+1), 1]+1]`
-/

namespace A038924.P2697364826814161874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035225 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038924.P2697364826814161874

/-!
# A038925: Primes p such that 46 is a square mod p.

The programs for A038925, there is no canonical definition to state claims against.
-/

/-! ## A038925.P1212279489949254737

`p?[A094604(n)-A035194(n+1)]`
-/

namespace A038925.P1212279489949254737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 n - A035194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038925.P1212279489949254737

/-! ## A038925.P7843327675280898505

`p?[A275513(record[A182114(n)])]`
-/

namespace A038925.P7843327675280898505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275513 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038925.P7843327675280898505

/-! ## A038925.P14591763520782448966

`p?[∑[A162246(A137822(n+1))]]`
-/

namespace A038925.P14591763520782448966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (A137822 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038925.P14591763520782448966

/-! ## A038925.P18198974432499717742

`∩[A181172(n+1), A206718(n+1)]`
-/

namespace A038925.P18198974432499717742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038925.P18198974432499717742

/-!
# A038926: Primes p such that 46 is not a square mod p.

The programs for A038926, there is no canonical definition to state claims against.
-/

/-! ## A038926.P16467801227319513614

`p?[eq[2, A001221(A248944(n+1))]]`
-/

namespace A038926.P16467801227319513614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A248944 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038926.P16467801227319513614

/-! ## A038926.P17770365979671351353

`p?[A000040(n+5)*A008958(n)]`
-/

namespace A038926.P17770365979671351353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5) * A008958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038926.P17770365979671351353

/-! ## A038926.P10615876756285587260

`p?[A000040(n+5)*A015113(n)]`
-/

namespace A038926.P10615876756285587260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5) * A015113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038926.P10615876756285587260

/-! ## A038926.P7489045616975120705

`p?[A000040(n+5)*A022174(n)]`
-/

namespace A038926.P7489045616975120705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5) * A022174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038926.P7489045616975120705

/-! ## A038926.P15927834680797394978

`p?[A000040(n+5)*A155491(n)]`
-/

namespace A038926.P15927834680797394978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5) * A155491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038926.P15927834680797394978

/-!
# A038927: Primes p such that 47 is a square mod p.

The programs for A038927, there is no canonical definition to state claims against.
-/

/-! ## A038927.P14026814052291281722

`p?[A035271(n+1)]`
-/

namespace A038927.P14026814052291281722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038927.P14026814052291281722

/-! ## A038927.P18350516781023699274

`p?[record[A035271(A324347(n))]]`
-/

namespace A038927.P18350516781023699274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038927.P18350516781023699274

/-! ## A038927.P6652185966885129513

`p?[record[A035271(A349315(n))]]`
-/

namespace A038927.P6652185966885129513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038927.P6652185966885129513

/-! ## A038927.P5505862794221593843

`filter[A035271(n+1), A010051(#)]`
-/

namespace A038927.P5505862794221593843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038927.P5505862794221593843

/-! ## A038927.P8049562288369513043

`∩[A000040(n+1), A035271(n+1)]`
-/

namespace A038927.P8049562288369513043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038927.P8049562288369513043

/-! ## A038927.P16115912348412478584

`∩[A035271(n+1), A045319(n+1)]`
-/

namespace A038927.P16115912348412478584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038927.P16115912348412478584

/-! ## A038927.P2329964509919910152

`∩[A035271(n+1), A045344(n+1)]`
-/

namespace A038927.P2329964509919910152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038927.P2329964509919910152

/-! ## A038927.P12188444286847109372

`∩[A035271(n+1), A116974(n+1)]`
-/

namespace A038927.P12188444286847109372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038927.P12188444286847109372

/-! ## A038927.P3094806447788045872

`∩[A035271(n+1), A182986(n+1)]`
-/

namespace A038927.P3094806447788045872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038927.P3094806447788045872

/-! ## A038927.P10339886578683134482

`p?[record[A035271(A133310(n))]]`
-/

namespace A038927.P10339886578683134482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038927.P10339886578683134482

/-! ## A038927.P16750535682637322179

`record[p?[A035271(A052938(n))]]`
-/

namespace A038927.P16750535682637322179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038927.P16750535682637322179

/-! ## A038927.P15093813722424649769

`p?[comp[A038928(n+1)]]`
-/

namespace A038927.P15093813722424649769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038927.P15093813722424649769

/-! ## A038927.P9527184040589920000

`filter[A035271(n+2), A080339(#)]`
-/

namespace A038927.P9527184040589920000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038927.P9527184040589920000

/-! ## A038927.P11477269040002495907

`p?[record[A035271(A263111(n))]]`
-/

namespace A038927.P11477269040002495907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038927.P11477269040002495907

/-! ## A038927.P10874736225582916662

`∩[A035271(n+1), A240960(n+1)]`
-/

namespace A038927.P10874736225582916662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038927.P10874736225582916662

/-! ## A038927.P17984391345222743892

`p?[(n+1)*A000045(A035229(n+1))]`
-/

namespace A038927.P17984391345222743892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (A035229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038927.P17984391345222743892

/-!
# A038928: Primes p such that 47 is not a square mod p.

The programs for A038928, there is no canonical definition to state claims against.
-/

/-! ## A038928.P10347066875156884402

`p?[comp[A035271(n+1)]]`
-/

namespace A038928.P10347066875156884402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038928.P10347066875156884402

/-! ## A038928.P7111011091174143297

`∩[A000040(n+1), comp[A035271(n+1)]]`
-/

namespace A038928.P7111011091174143297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035271 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038928.P7111011091174143297

/-! ## A038928.P14709180690236745639

`p?[eq[A035229(n+1), A076544(n+1)]+1]`
-/

namespace A038928.P14709180690236745639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038928.P14709180690236745639

/-! ## A038928.P2964252168634547470

`eq[A035229(A093178(n)), A277894(n)]`
-/

namespace A038928.P2964252168634547470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038928.P2964252168634547470

/-! ## A038928.P11649134322110332752

`eq[A035229(2*(n+1)), A277894(n+1)]+1`
-/

namespace A038928.P11649134322110332752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038928.P11649134322110332752

/-! ## A038928.P16837368326973313800

`eq[A035229(A004277(n)), A277894(n)]`
-/

namespace A038928.P16837368326973313800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038928.P16837368326973313800

/-!
# A038929: Primes p such that 51 is a square mod p.

The programs for A038929, there is no canonical definition to state claims against.
-/

/-! ## A038929.P6564106758554492196

`p?[comp[A038930(n+1)]]`
-/

namespace A038929.P6564106758554492196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038930 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038929.P6564106758554492196

/-! ## A038929.P1795128881815462779

`p?[lt[A127387(n), A123493(n)]]`
-/

namespace A038929.P1795128881815462779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127387 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123493 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038929.P1795128881815462779

/-! ## A038929.P1264711006422025641

`A094802(A024372(n+2))`
-/

namespace A038929.P1264711006422025641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A024372 (n + 2)).toNat

end

end A038929.P1264711006422025641

/-! ## A038929.P13216574644115692154

`filter[A002267(n+1), A267179(#)]`
-/

namespace A038929.P13216574644115692154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267179 (f1 j).toNat = 1) n)

end

end A038929.P13216574644115692154

/-!
# A038930: Primes p such that 51 is not a square mod p.

The programs for A038930, there is no canonical definition to state claims against.
-/

/-! ## A038930.P17793480396910255322

`p?[A331995(A331916(n+1))%(2^n)]`
-/

namespace A038930.P17793480396910255322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331995 (A331916 (n + 1)).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038930.P17793480396910255322

/-!
# A038931: Primes p such that 53 is a square mod p.

The programs for A038931, there is no canonical definition to state claims against.
-/

/-! ## A038931.P2297252516745747757

`∪[A033234(n+1), A191035(n+1)]`
-/

namespace A038931.P2297252516745747757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P2297252516745747757

/-! ## A038931.P5103179993852064146

`p?[A243191(n+1)]`
-/

namespace A038931.P5103179993852064146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038931.P5103179993852064146

/-! ## A038931.P731683107833141189

`record[A006530(A243191(n+4))]`
-/

namespace A038931.P731683107833141189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243191 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038931.P731683107833141189

/-! ## A038931.P11961079823423576567

`filter[A243191(n+2), A010051(#)]`
-/

namespace A038931.P11961079823423576567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038931.P11961079823423576567

/-! ## A038931.P8243703647429587118

`filter[A243191(n+3), A380467(#)]`
-/

namespace A038931.P8243703647429587118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038931.P8243703647429587118

/-! ## A038931.P17697304049558388029

`∩[A000040(n+1), A243191(n+1)]`
-/

namespace A038931.P17697304049558388029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P17697304049558388029

/-! ## A038931.P13460190938188176814

`∩[A004139(n+1), A243191(n+1)]`
-/

namespace A038931.P13460190938188176814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P13460190938188176814

/-! ## A038931.P12578865997948845362

`∩[A045319(n+1), A243191(n+1)]`
-/

namespace A038931.P12578865997948845362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P12578865997948845362

/-! ## A038931.P13836379720115308199

`∩[A045344(n+1), A243191(n+1)]`
-/

namespace A038931.P13836379720115308199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P13836379720115308199

/-! ## A038931.P343201017736630709

`∩[A065091(n+1), A243191(n+1)]`
-/

namespace A038931.P343201017736630709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P343201017736630709

/-! ## A038931.P9128163665876586027

`∩[A085118(n+1), A243191(n+1)]`
-/

namespace A038931.P9128163665876586027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P9128163665876586027

/-! ## A038931.P9643492851571809781

`∩[A116974(n+1), A243191(n+1)]`
-/

namespace A038931.P9643492851571809781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P9643492851571809781

/-! ## A038931.P16837234461448098924

`∩[A215848(n+1), A243191(n+1)]`
-/

namespace A038931.P16837234461448098924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P16837234461448098924

/-! ## A038931.P1604319226587049357

`∩[A243191(n+1), A351398(n+1)]`
-/

namespace A038931.P1604319226587049357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P1604319226587049357

/-! ## A038931.P14818238885156141318

`∩[A243191(n+1), A327906(n+1)]`
-/

namespace A038931.P14818238885156141318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038931.P14818238885156141318

/-! ## A038931.P14811540152794804733

`p?[comp[A038932(n+1)]]`
-/

namespace A038931.P14811540152794804733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038932 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038931.P14811540152794804733

/-! ## A038931.P10335065672311567906

`p?[n*or(1, A011593(n))]`
-/

namespace A038931.P10335065672311567906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (A011593 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038931.P10335065672311567906

/-! ## A038931.P12848420766104191032

`p?[or(A011593(n), A093178(n))]`
-/

namespace A038931.P12848420766104191032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011593 n) (A093178 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038931.P12848420766104191032

/-! ## A038931.P1761338033233305602

`filter[A243191(n+2), A171387(#)]`
-/

namespace A038931.P1761338033233305602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A038931.P1761338033233305602

/-! ## A038931.P13042180681119165442

`filter[A243191(n+3), A080339(#)]`
-/

namespace A038931.P13042180681119165442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038931.P13042180681119165442

/-!
# A038932: Primes p such that 53 is not a square mod p.

The programs for A038932, there is no canonical definition to state claims against.
-/

/-! ## A038932.P10066222228161474184

`eq[(A011593(n)+2)², A210442(n)]`
-/

namespace A038932.P10066222228161474184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011593 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P10066222228161474184

/-! ## A038932.P16376513436269428316

`eq[A011593(n)+2, A284289(n)²]`
-/

namespace A038932.P16376513436269428316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P16376513436269428316

/-! ## A038932.P12343832624810868965

`eq[A011593(n)+2, A053989(n+1)²]`
-/

namespace A038932.P12343832624810868965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P12343832624810868965

/-! ## A038932.P3865719800465487278

`eq[A011593(n)+2, A231734(n+1)²]`
-/

namespace A038932.P3865719800465487278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P3865719800465487278

/-! ## A038932.P2322731919393233961

`eq[A011593(n)+2, A231820(n+1)²]`
-/

namespace A038932.P2322731919393233961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P2322731919393233961

/-! ## A038932.P3268610712339159980

`eq[A011593(n)+2, A211110(n)²]`
-/

namespace A038932.P3268610712339159980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P3268610712339159980

/-! ## A038932.P16581008277108227725

`p?[n*A011593(2*n)]`
-/

namespace A038932.P16581008277108227725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011593 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038932.P16581008277108227725

/-! ## A038932.P12342870554056829703

`eq[A011593(2*n), A072721(n)]`
-/

namespace A038932.P12342870554056829703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P12342870554056829703

/-! ## A038932.P11693698741814826982

`eq[A011593(2*n), A210442(n)]`
-/

namespace A038932.P11693698741814826982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P11693698741814826982

/-! ## A038932.P4542222591188274

`eq[A011593(2*n), A211110(n)]`
-/

namespace A038932.P4542222591188274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P4542222591188274

/-! ## A038932.P16131760280063929168

`eq[A011593(2*n), A284289(n)]`
-/

namespace A038932.P16131760280063929168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P16131760280063929168

/-! ## A038932.P49422446064171581

`eq[A011593(2*n), A322968(n)]`
-/

namespace A038932.P49422446064171581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P49422446064171581

/-! ## A038932.P16898269668765625775

`eq[A011593(2*n), A053989(n+1)]`
-/

namespace A038932.P16898269668765625775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P16898269668765625775

/-! ## A038932.P14356674358912276889

`eq[A011593(2*n), A231820(n+1)]`
-/

namespace A038932.P14356674358912276889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P14356674358912276889

/-! ## A038932.P1859264265759060048

`eq[A011593(2*n), A117545(n+1)]`
-/

namespace A038932.P1859264265759060048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P1859264265759060048

/-! ## A038932.P14826525007256564764

`eq[A011593(n)+2, A117545(n+1)²]`
-/

namespace A038932.P14826525007256564764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038932.P14826525007256564764

/-!
# A038933: Primes p such that 55 is a square mod p.

The programs for A038933, there is no canonical definition to state claims against.
-/

/-! ## A038933.P8876334273443924116

`p?[comp[A038934(n+1)]]`
-/

namespace A038933.P8876334273443924116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038934 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038933.P8876334273443924116

/-! ## A038933.P5266881768218338269

`A154363(∑[A319072(n+1)!])`
-/

namespace A038933.P5266881768218338269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A319072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038933.P5266881768218338269

/-! ## A038933.P4984070718973756137

`A154363(∑[A331738(n+1)!])`
-/

namespace A038933.P4984070718973756137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331738 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038933.P4984070718973756137

/-! ## A038933.P14940568626910678910

`A000040(lt[A270831(n+1), A196388(n+1)])`
-/

namespace A038933.P14940568626910678910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038933.P14940568626910678910

/-! ## A038933.P441828795557490039

`filter[A126148(n+1), A133011(#)]`
-/

namespace A038933.P441828795557490039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A038933.P441828795557490039

/-!
# A038934: Primes p such that 55 is not a square mod p.

The programs for A038934, there is no canonical definition to state claims against.
-/

/-! ## A038934.P7055256080822790898

`p?[∏{d}[A205559(n+2), #]]`
-/

namespace A038934.P7055256080822790898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205559 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038934.P7055256080822790898

/-! ## A038934.P11522745287870997207

`A000040(lt[7, A037940(n+1)])`
-/

namespace A038934.P11522745287870997207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038934.P11522745287870997207

/-!
# A038935: Primes p such that 57 is a square mod p.

The programs for A038935, there is no canonical definition to state claims against.
-/

/-! ## A038935.P1169580884932500646

`∪[A141192(n+1), A141193(n+1)]`
-/

namespace A038935.P1169580884932500646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038935.P1169580884932500646

/-! ## A038935.P5217330720960278143

`p?[or(n, -(n*A257075(n)*A011585(n)))]`
-/

namespace A038935.P5217330720960278143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-((n : ℤ) * A257075 n * A011585 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038935.P5217330720960278143

/-! ## A038935.P6263788047959455870

`p?[eq[0, A290531(2*n+3)]]`
-/

namespace A038935.P6263788047959455870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038935.P6263788047959455870

/-! ## A038935.P8558481302324868764

`p?[(A290531(2*n+5)+1)*(n+1)]`
-/

namespace A038935.P8558481302324868764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290531 (2 * n + 5) + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038935.P8558481302324868764

/-! ## A038935.P5541412975529503193

`p?[eq[1, A008683(A162309(n+1))]]`
-/

namespace A038935.P5541412975529503193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162309 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038935.P5541412975529503193

/-!
# A038936: Primes p such that 57 is not a square mod p.

The programs for A038936, the canonical program `A038936.P8125062723505700244` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038936 has offset 1).

The definition of A038936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038936.P8125062723505700244

`p?[n*A011585(n)*A257075(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038936

/-- `p?[n*A011585(n)*A257075(n)]` -/
def P8125062723505700244.Spec : Prop :=
  ∀ n, P8125062723505700244.a n = A038936 (n + 1)

theorem P8125062723505700244.correct : P8125062723505700244.Spec := by
  intro n
  simp only [A038936, Nat.add_sub_cancel]

end A038936

/-! ## A038936.P11659505933760922616

`p?[eq[n%3, A002448(A028641(n)²)]]`
-/

namespace A038936.P11659505933760922616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A028641 n ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038936.P11659505933760922616

namespace A038936

/-- `p?[eq[n%3, A002448(A028641(n)²)]]` -/
def P11659505933760922616.Spec : Prop :=
  ∀ n, (P11659505933760922616.a n : ℤ) = A038936 (n + 1)

end A038936

/-! ## A038936.P3627777695585478898

`eq[n*A257075(n)*A011585(n), A051698(n+1)]`
-/

namespace A038936.P3627777695585478898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257075 n * A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038936.P3627777695585478898

namespace A038936

/-- `eq[n*A257075(n)*A011585(n), A051698(n+1)]` -/
def P3627777695585478898.Spec : Prop :=
  ∀ n, (P3627777695585478898.a n : ℤ) = A038936 (n + 1)

end A038936

/-! ## A038936.P12528338967927020777

`p?[∑[A083021(A225773(n+1))]]`
-/

namespace A038936.P12528338967927020777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083021 (A225773 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038936.P12528338967927020777

namespace A038936

/-- `p?[∑[A083021(A225773(n+1))]]` -/
def P12528338967927020777.Spec : Prop :=
  ∀ n, P12528338967927020777.a n = A038936 (n + 1)

end A038936

/-!
# A038937: Primes p such that 58 is a square mod p.

The programs for A038937, there is no canonical definition to state claims against.
-/

/-! ## A038937.P12437020860320247490

`p?[∑[A288003(A254765(n+1))]]`
-/

namespace A038937.P12437020860320247490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A254765 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038937.P12437020860320247490

/-! ## A038937.P6015261095486979340

`p?[A094163(n+1)-79]`
-/

namespace A038937.P6015261095486979340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094163 (n + 1) - 79

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038937.P6015261095486979340

/-! ## A038937.P16169653264521417059

`p?[eq[1, A341052(n+1)]+1]`
-/

namespace A038937.P16169653264521417059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038937.P16169653264521417059

/-! ## A038937.P5920602642372679657

`A079852(A280094(n+1))`
-/

namespace A038937.P5920602642372679657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079852 (A280094 (n + 1)).toNat

end

end A038937.P5920602642372679657

/-!
# A038938: Primes p such that 58 is not a square mod p.

The programs for A038938, there is no canonical definition to state claims against.
-/

/-! ## A038938.P3810444528336758778

`A087895(lt[A087897(2*n), A087913(3*n+5)])`
-/

namespace A038938.P3810444528336758778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087913 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087895 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038938.P3810444528336758778

/-! ## A038938.P12212266232381359350

`record[p?[A239968(A323602(n+1))]]`
-/

namespace A038938.P12212266232381359350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A323602 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038938.P12212266232381359350

/-! ## A038938.P5040550016617874557

`∩[A045394(n+1), A329978(n+1)]`
-/

namespace A038938.P5040550016617874557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038938.P5040550016617874557

/-! ## A038938.P15658540976711068518

`∩[A045404(n+1), A329978(n+1)]`
-/

namespace A038938.P15658540976711068518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038938.P15658540976711068518

/-!
# A038939: Primes p such that 59 is a square mod p.

The programs for A038939, there is no canonical definition to state claims against.
-/

/-! ## A038939.P5032472889690645986

`p?[lt[0, A200508(A200513(n))]]`
-/

namespace A038939.P5032472889690645986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200508 (A200513 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038939.P5032472889690645986

/-! ## A038939.P13253118663268135073

`p?[lt[A105264(n), A105260(n)]]`
-/

namespace A038939.P13253118663268135073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105264 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105260 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038939.P13253118663268135073

/-! ## A038939.P1584380793717045304

`A000040(lt[8, A366570(3*n+4)])`
-/

namespace A038939.P1584380793717045304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366570 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038939.P1584380793717045304

/-! ## A038939.P17864043585384343375

`A000040(lt[A052490(n+1), A241625(n+1)])`
-/

namespace A038939.P17864043585384343375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038939.P17864043585384343375

/-! ## A038939.P15819835292413015573

`A094802(A314243(n+1))`
-/

namespace A038939.P15819835292413015573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A314243 (n + 1)).toNat

end

end A038939.P15819835292413015573

/-!
# A038941: Primes p such that 61 is a square mod p.

The programs for A038941, there is no canonical definition to state claims against.
-/

/-! ## A038941.P16893192048981382561

`∪[A033239(n+1), A191039(n+1)]`
-/

namespace A038941.P16893192048981382561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P16893192048981382561

/-! ## A038941.P748316557243661187

`∪[A126434(n+1), A191039(n+1)]`
-/

namespace A038941.P748316557243661187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P748316557243661187

/-! ## A038941.P16134909653242871736

`p?[A243654(n+1)]`
-/

namespace A038941.P16134909653242871736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038941.P16134909653242871736

/-! ## A038941.P29248329557278745

`p?[record[A243654(A323889(n))]]`
-/

namespace A038941.P29248329557278745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038941.P29248329557278745

/-! ## A038941.P2554968542291332861

`record[A006530(A243654(n+3))]`
-/

namespace A038941.P2554968542291332861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243654 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038941.P2554968542291332861

/-! ## A038941.P6715321069191134579

`filter[A243654(n+2), A010051(#)]`
-/

namespace A038941.P6715321069191134579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038941.P6715321069191134579

/-! ## A038941.P11542716128545085602

`filter[A243654(n+3), A380467(#)]`
-/

namespace A038941.P11542716128545085602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038941.P11542716128545085602

/-! ## A038941.P10076563118713636331

`∩[A000040(n+1), A243654(n+1)]`
-/

namespace A038941.P10076563118713636331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P10076563118713636331

/-! ## A038941.P10216892331367316111

`∩[A065091(n+1), A243654(n+1)]`
-/

namespace A038941.P10216892331367316111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P10216892331367316111

/-! ## A038941.P4476907608831510751

`∩[A085118(n+1), A243654(n+1)]`
-/

namespace A038941.P4476907608831510751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P4476907608831510751

/-! ## A038941.P2784558408779706497

`∩[A116974(n+1), A243654(n+1)]`
-/

namespace A038941.P2784558408779706497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P2784558408779706497

/-! ## A038941.P13945466782585985707

`∩[A243654(n+1), A327906(n+1)]`
-/

namespace A038941.P13945466782585985707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038941.P13945466782585985707

/-! ## A038941.P16102179947292818343

`p?[record[A243654(A052938(n))]]`
-/

namespace A038941.P16102179947292818343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038941.P16102179947292818343

/-! ## A038941.P1914825074826202507

`p?[n%(A011595(n)+1+n)]`
-/

namespace A038941.P1914825074826202507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A011595 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038941.P1914825074826202507

/-! ## A038941.P8938876637397529265

`filter[A243654(n+3), A080339(#)]`
-/

namespace A038941.P8938876637397529265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038941.P8938876637397529265

/-! ## A038941.P18143035051008690593

`filter[A243654(n+3), A080545(#)]`
-/

namespace A038941.P18143035051008690593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A038941.P18143035051008690593

/-!
# A038942: Primes p such that 61 is not a square mod p.

The programs for A038942, there is no canonical definition to state claims against.
-/

/-! ## A038942.P16390585121765257984

`eq[(A011595(n)+2)², A210442(n)]`
-/

namespace A038942.P16390585121765257984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011595 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P16390585121765257984

/-! ## A038942.P15282974140567913035

`eq[(A011595(n)+2)², A211110(n)]`
-/

namespace A038942.P15282974140567913035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011595 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P15282974140567913035

/-! ## A038942.P8347824260396573721

`eq[A011595(n)+2, A284289(n)²]`
-/

namespace A038942.P8347824260396573721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P8347824260396573721

/-! ## A038942.P18030864032350212454

`eq[A011595(n)+2, A053989(n+1)²]`
-/

namespace A038942.P18030864032350212454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P18030864032350212454

/-! ## A038942.P1824734404437268940

`eq[A011595(n)+2, A231734(n+1)²]`
-/

namespace A038942.P1824734404437268940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P1824734404437268940

/-! ## A038942.P11364729401358940348

`eq[A011595(n)+2, A231820(n+1)²]`
-/

namespace A038942.P11364729401358940348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P11364729401358940348

/-! ## A038942.P11836194470639144503

`p?[n*A011595(2*n)]`
-/

namespace A038942.P11836194470639144503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011595 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038942.P11836194470639144503

/-! ## A038942.P1574610911869601299

`eq[A011595(2*n), A072721(n)]`
-/

namespace A038942.P1574610911869601299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P1574610911869601299

/-! ## A038942.P16852738885648330406

`eq[A011595(2*n), A210442(n)]`
-/

namespace A038942.P16852738885648330406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P16852738885648330406

/-! ## A038942.P13471970863426212507

`eq[A011595(2*n), A211110(n)]`
-/

namespace A038942.P13471970863426212507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P13471970863426212507

/-! ## A038942.P12780968594981568719

`eq[A011595(2*n), A284289(n)]`
-/

namespace A038942.P12780968594981568719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P12780968594981568719

/-! ## A038942.P17872535861461686982

`eq[A011595(2*n), A322968(n)]`
-/

namespace A038942.P17872535861461686982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P17872535861461686982

/-! ## A038942.P15872383064206418733

`eq[A011595(2*n), A053989(n+1)]`
-/

namespace A038942.P15872383064206418733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P15872383064206418733

/-! ## A038942.P3328390547444388637

`eq[A011595(2*n), A231820(n+1)]`
-/

namespace A038942.P3328390547444388637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P3328390547444388637

/-! ## A038942.P9217386264936374984

`eq[A011595(2*n), A117545(n+1)]`
-/

namespace A038942.P9217386264936374984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P9217386264936374984

/-! ## A038942.P6036478500885079141

`eq[A011595(n)+2, A117545(n+1)²]`
-/

namespace A038942.P6036478500885079141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038942.P6036478500885079141

/-!
# A038943: Primes p such that 62 is a square mod p.

The programs for A038943, there is no canonical definition to state claims against.
-/

/-! ## A038943.P14075239271666242286

`p?[comp[A038944(n+1)]]`
-/

namespace A038943.P14075239271666242286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038944 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038943.P14075239271666242286

/-! ## A038943.P2030760618656947976

`p?[lcm(n, A008683(A215818(n+1)))]`
-/

namespace A038943.P2030760618656947976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A008683 (A215818 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038943.P2030760618656947976

/-! ## A038943.P18385843906903076915

`A000040(A247063(n+5)%A319324(n+1))`
-/

namespace A038943.P18385843906903076915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A247063 (n + 5)) (A319324 (n + 1))).toNat

end

end A038943.P18385843906903076915

/-! ## A038943.P4449841811644283573

`eq[A003415(n), A299406(A069916(n))]`
-/

namespace A038943.P4449841811644283573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299406 (A069916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038943.P4449841811644283573

/-!
# A038944: Primes p such that 62 is not a square mod p.

The programs for A038944, there is no canonical definition to state claims against.
-/

/-! ## A038944.P9329533705414159088

`p?[A241082(n+1)+A078268(2*(n+2))]`
-/

namespace A038944.P9329533705414159088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (n + 1) + A078268 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038944.P9329533705414159088

/-! ## A038944.P17224210210021253824

`p?[∑[A227349(A250167(n+1))]]`
-/

namespace A038944.P17224210210021253824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A250167 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038944.P17224210210021253824

/-! ## A038944.P11011157907771144963

`p?[A344291(∑[A123320(2*(n+2))])]`
-/

namespace A038944.P11011157907771144963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123320 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038944.P11011157907771144963

/-! ## A038944.P1595180909108667311

`p?[A129304(2*n+3)%A129305(2*(n+2))]`
-/

namespace A038944.P1595180909108667311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129304 (2 * n + 3)) (A129305 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038944.P1595180909108667311

/-! ## A038944.P10752537437810626271

`A000040(eq[A327126(n), A358724(n+1)]+1)`
-/

namespace A038944.P10752537437810626271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A038944.P10752537437810626271

/-!
# A038945: Primes p such that 65 is a square mod p.

The programs for A038945, there is no canonical definition to state claims against.
-/

/-! ## A038945.P10848522128463511770

`∪[A141111(n+1), A141112(n+1)]`
-/

namespace A038945.P10848522128463511770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038945.P10848522128463511770

/-! ## A038945.P10914397820194478339

`record[gcd(A063905(n+1), A155212(n))]`
-/

namespace A038945.P10914397820194478339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063905 (n + 1)) (A155212 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038945.P10914397820194478339

/-! ## A038945.P6523587785805957271

`p?[A130573(∑[A347224(n+2)])]`
-/

namespace A038945.P6523587785805957271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347224 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038945.P6523587785805957271

/-! ## A038945.P16588742031109878973

`p?[record[A219641(A124219(n+1))]]`
-/

namespace A038945.P16588742031109878973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A124219 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038945.P16588742031109878973

/-! ## A038945.P1676486613644410616

`p?[∑[A001222(A134346(2*n+3))]]`
-/

namespace A038945.P1676486613644410616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134346 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038945.P1676486613644410616

/-!
# A038946: Primes p such that 65 is not a square mod p.

The programs for A038946, there is no canonical definition to state claims against.
-/

/-! ## A038946.P9735461041072635272

`p?[comp[A038945(n+1)]]`
-/

namespace A038946.P9735461041072635272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038946.P9735461041072635272

/-! ## A038946.P10047178881235156339

`p?[A338746(A080037(n))]`
-/

namespace A038946.P10047178881235156339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338746 (A080037 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038946.P10047178881235156339

/-! ## A038946.P15640698861461174125

`p?[∑[A000034(A217844(n+1))]]`
-/

namespace A038946.P15640698861461174125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A217844 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038946.P15640698861461174125

/-! ## A038946.P11636426771132506683

`A065091(record[A326921(3*n+4)])`
-/

namespace A038946.P11636426771132506683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326921 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038946.P11636426771132506683

/-!
# A038947: Primes p such that 66 is a square mod p.

The programs for A038947, there is no canonical definition to state claims against.
-/

/-! ## A038947.P1973920413396791618

`p?[eq[1, Δ[A319161(n+1)]]]`
-/

namespace A038947.P1973920413396791618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319161 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038947.P1973920413396791618

/-! ## A038947.P16331507542397486030

`p?[n*A091042(A243978(n))]`
-/

namespace A038947.P16331507542397486030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091042 (A243978 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038947.P16331507542397486030

/-! ## A038947.P6169169334977308182

`p?[lt[A209438(n), A180078(n)]]`
-/

namespace A038947.P6169169334977308182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180078 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038947.P6169169334977308182

/-! ## A038947.P2685050076401708435

`p?[∑[A345932(A345961(n+5))]]`
-/

namespace A038947.P2685050076401708435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A345961 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038947.P2685050076401708435

/-! ## A038947.P16556245826472780343

`eq[A003415(n), A333381(A328594(n+2))]`
-/

namespace A038947.P16556245826472780343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A328594 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038947.P16556245826472780343

/-!
# A038948: Primes p such that 66 is not a square mod p.

The programs for A038948, there is no canonical definition to state claims against.
-/

/-! ## A038948.P2440768558670839906

`p?[eq[A057078(n+1)+1, A255647(n)]]`
-/

namespace A038948.P2440768558670839906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038948.P2440768558670839906

/-! ## A038948.P2513168936455648619

`p?[lt[A299997(n+1), A299983(n)]]`
-/

namespace A038948.P2513168936455648619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299997 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299983 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038948.P2513168936455648619

/-! ## A038948.P7578184394983420885

`p?[lt[A327343(n+2), A193592(n)]]`
-/

namespace A038948.P7578184394983420885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327343 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038948.P7578184394983420885

/-! ## A038948.P8296348423056614984

`p?[lt[A283431(n+1), A347171(n)]]`
-/

namespace A038948.P8296348423056614984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347171 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038948.P8296348423056614984

/-!
# A038949: Primes p such that 67 is a square mod p.

The programs for A038949, there is no canonical definition to state claims against.
-/

/-! ## A038949.P14063859999556795199

`p?[A195921(2*(n+1))+A004526(n)]`
-/

namespace A038949.P14063859999556795199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195921 (2 * (n + 1)) + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038949.P14063859999556795199

/-! ## A038949.P8479537881682531552

`A241082(A128539(n+2))`
-/

namespace A038949.P8479537881682531552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (A128539 (n + 2)).toNat

end

end A038949.P8479537881682531552

/-!
# A038951: Primes p such that 69 is a square mod p.

The programs for A038951, there is no canonical definition to state claims against.
-/

/-! ## A038951.P14403330054578475117

`record[p?[A023121(A333574(n+1))]]`
-/

namespace A038951.P14403330054578475117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (A333574 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038951.P14403330054578475117

/-! ## A038951.P1389221754268472509

`p?[∑[A341771(A153766(n+1))]]`
-/

namespace A038951.P1389221754268472509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341771 (A153766 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038951.P1389221754268472509

/-! ## A038951.P4751999791096250442

`p?[A088141(∑[A272308(n+1)])]`
-/

namespace A038951.P4751999791096250442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272308 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038951.P4751999791096250442

/-! ## A038951.P4161261939688793863

`∩[A100553(n+1), A130097(n+1)]`
-/

namespace A038951.P4161261939688793863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038951.P4161261939688793863

/-!
# A038952: Primes p such that 69 is not a square mod p.

The programs for A038952, there is no canonical definition to state claims against.
-/

/-! ## A038952.P11166923314327340194

`p?[∑[A083898(A239958(n))]]`
-/

namespace A038952.P11166923314327340194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083898 (A239958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038952.P11166923314327340194

/-! ## A038952.P14938930542717941128

`p?[lt[A000034(n), A092334(n+1)]]`
-/

namespace A038952.P14938930542717941128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038952.P14938930542717941128

/-! ## A038952.P3320747789625140372

`p?[lt[A010160(n), A092334(n+1)]]`
-/

namespace A038952.P3320747789625140372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010160 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038952.P3320747789625140372

/-! ## A038952.P15522067043543100694

`p?[lt[A040892(n), A092334(n+1)]]`
-/

namespace A038952.P15522067043543100694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040892 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038952.P15522067043543100694

/-!
# A038953: Primes p such that 70 is a square mod p.

The programs for A038953, there is no canonical definition to state claims against.
-/

/-! ## A038953.P7423396485399299945

`p?[∑[A326029(A008486(n))]]`
-/

namespace A038953.P7423396485399299945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038953.P7423396485399299945

/-! ## A038953.P12098350706479308424

`filter[A113161(n+2), A385395(#)]`
-/

namespace A038953.P12098350706479308424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113161 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A038953.P12098350706479308424

/-! ## A038953.P1072058509705221308

`record[p?[A056539(A028790(n+1))]]`
-/

namespace A038953.P1072058509705221308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A028790 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038953.P1072058509705221308

/-! ## A038953.P11924251550786965064

`∩[A113161(n+1), A309066(n+1)]`
-/

namespace A038953.P11924251550786965064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038953.P11924251550786965064

/-! ## A038953.P2653123208872546487

`A137847(A060657(n+1))`
-/

namespace A038953.P2653123208872546487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A060657 (n + 1)).toNat

end

end A038953.P2653123208872546487

/-!
# A038954: Primes p such that 70 is not a square mod p.

The programs for A038954, there is no canonical definition to state claims against.
-/

/-! ## A038954.P7281015106323829349

`eq[A226162(n)+A192006(n), A003415(n)]`
-/

namespace A038954.P7281015106323829349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 n + A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038954.P7281015106323829349

/-! ## A038954.P14988572299203442387

`p?[lt[6, A068527(A286374(n))]]`
-/

namespace A038954.P14988572299203442387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A286374 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038954.P14988572299203442387

/-! ## A038954.P9559381428332925221

`p?[A354763(2*n+3)+A141468(n+1)]`
-/

namespace A038954.P9559381428332925221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354763 (2 * n + 3) + A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038954.P9559381428332925221

/-! ## A038954.P1748726737521669145

`p?[eq[0, A083650(A262175(n))]]`
-/

namespace A038954.P1748726737521669145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 (A262175 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038954.P1748726737521669145

/-!
# A038955: Primes p such that 71 is a square mod p.

The programs for A038955, there is no canonical definition to state claims against.
-/

/-! ## A038955.P16575010820752566670

`p?[lt[A220963(n), A065553(n)]]`
-/

namespace A038955.P16575010820752566670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220963 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065553 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038955.P16575010820752566670

/-! ## A038955.P9101446510477220657

`p?[A345921(n+1)%A345913(n+4)]`
-/

namespace A038955.P9101446510477220657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345921 (n + 1)) (A345913 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038955.P9101446510477220657

/-! ## A038955.P15725946328626504334

`p?[eq[A129686(n+2), A131364(2*n)]]`
-/

namespace A038955.P15725946328626504334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129686 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038955.P15725946328626504334

/-! ## A038955.P17024770673382369558

`A008578(lt[A110217(2*(n+1)), A360458(n+1)])`
-/

namespace A038955.P17024770673382369558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110217 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038955.P17024770673382369558

/-! ## A038955.P14533838577196592557

`eq[A030190(A320347(n+2)), A032741(n)]`
-/

namespace A038955.P14533838577196592557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A320347 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038955.P14533838577196592557

/-!
# A038957: Primes p such that 73 is a square mod p.

The programs for A038957, there is no canonical definition to state claims against.
-/

/-! ## A038957.P13272918536002049157

`∪[A033247(n+1), A191045(n+1)]`
-/

namespace A038957.P13272918536002049157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038957.P13272918536002049157

/-! ## A038957.P12818786082894929608

`∪[A087531(n+1), A191045(n+1)]`
-/

namespace A038957.P12818786082894929608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038957.P12818786082894929608

/-! ## A038957.P12159432372779563452

`∪[A162601(n+1), A191045(n+1)]`
-/

namespace A038957.P12159432372779563452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038957.P12159432372779563452

/-! ## A038957.P421803123636704820

`∪[A047979(n+1), A191045(n+1)]^A304042(n+4)!`
-/

namespace A038957.P421803123636704820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ Nat.factorial (A304042 (n + 4)).toNat

end

end A038957.P421803123636704820

/-! ## A038957.P11580342646402301342

`A141750(n+1)%A375296(n+1)²`
-/

namespace A038957.P11580342646402301342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141750 (n + 1)) (A375296 (n + 1) ^ 2)

end

end A038957.P11580342646402301342

/-! ## A038957.P5985082717435950959

`or(A141750(n+1), A225654(A225630(n)))`
-/

namespace A038957.P5985082717435950959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141750 (n + 1)) (A225654 (A225630 n).toNat)

end

end A038957.P5985082717435950959

/-! ## A038957.P2707344855554021306

`A069188(A141750(n+1))`
-/

namespace A038957.P2707344855554021306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069188 (A141750 (n + 1)).toNat

end

end A038957.P2707344855554021306

/-! ## A038957.P7524296403672444356

`∩[A107040(n+1), A141750(n+1)]`
-/

namespace A038957.P7524296403672444356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038957.P7524296403672444356

/-!
# A038958: Primes p such that 73 is not a square mod p.

The programs for A038958, there is no canonical definition to state claims against.
-/

/-! ## A038958.P11791565657076686828

`eq[A011598(n), A260148(n)]`
-/

namespace A038958.P11791565657076686828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P11791565657076686828

/-! ## A038958.P7897621599944592484

`eq[(A011598(n)+2)², A211110(n)]`
-/

namespace A038958.P7897621599944592484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011598 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P7897621599944592484

/-! ## A038958.P16949098543052865554

`eq[A011598(n)+2, A284289(n)²]`
-/

namespace A038958.P16949098543052865554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P16949098543052865554

/-! ## A038958.P4528625245506821302

`eq[A011598(n)+2, A053989(n+1)²]`
-/

namespace A038958.P4528625245506821302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P4528625245506821302

/-! ## A038958.P3286697587892837905

`eq[A011598(n)+2, A231734(n+1)²]`
-/

namespace A038958.P3286697587892837905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P3286697587892837905

/-! ## A038958.P8265910298143705370

`eq[A011598(n)+2, A231820(n+1)²]`
-/

namespace A038958.P8265910298143705370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P8265910298143705370

/-! ## A038958.P7135982937638643719

`eq[A011598(n)+2, A210442(n)²]`
-/

namespace A038958.P7135982937638643719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P7135982937638643719

/-! ## A038958.P8006470944073287690

`eq[A011598(n)+2, A117545(n+1)²]`
-/

namespace A038958.P8006470944073287690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P8006470944073287690

/-! ## A038958.P1026698544955163540

`eq[A011598(n)+2, A331885(n)²]`
-/

namespace A038958.P1026698544955163540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P1026698544955163540

/-! ## A038958.P12064783269906246167

`eq[A011598(n)+2, A239938(n+1)²]`
-/

namespace A038958.P12064783269906246167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038958.P12064783269906246167

/-!
# A038959: Primes p such that 74 is a square mod p.

The programs for A038959, there is no canonical definition to state claims against.
-/

/-! ## A038959.P14319262343319556155

`p?[char[A038960(n+1)]+n]`
-/

namespace A038959.P14319262343319556155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038960 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038959.P14319262343319556155

/-! ## A038959.P9861241382054926029

`p?[lt[A333287(3*n+11), A332427(3*(n+3))]]`
-/

namespace A038959.P9861241382054926029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333287 (3 * n + 11)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332427 (3 * (n + 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038959.P9861241382054926029

/-! ## A038959.P14481392346367552012

`p?[lt[n, A092334(n+1)²²]]`
-/

namespace A038959.P14481392346367552012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092334 (n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038959.P14481392346367552012

/-! ## A038959.P13193749038418833630

`p?[∑[A076558(A250387(n+1))]]`
-/

namespace A038959.P13193749038418833630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076558 (A250387 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038959.P13193749038418833630

/-! ## A038959.P1511462464138635921

`A218123(A303372(n+2))`
-/

namespace A038959.P1511462464138635921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A303372 (n + 2)).toNat

end

end A038959.P1511462464138635921

/-!
# A038960: Primes p such that 74 is not a square mod p.

The programs for A038960, there is no canonical definition to state claims against.
-/

/-! ## A038960.P16398773834732685600

`A019397(n+1)-A185255(2*n)`
-/

namespace A038960.P16398773834732685600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019397 (n + 1) - A185255 (2 * n)

end

end A038960.P16398773834732685600

/-!
# A038961: Primes p such that 77 is a square mod p.

The programs for A038961, there is no canonical definition to state claims against.
-/

/-! ## A038961.P16499569526937838133

`p?[comp[A038962(n+1)]]`
-/

namespace A038961.P16499569526937838133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038962 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038961.P16499569526937838133

/-! ## A038961.P8076625037949952287

`record[p?[abs(9-A028799(n+1))]]`
-/

namespace A038961.P8076625037949952287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A028799 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038961.P8076625037949952287

/-! ## A038961.P6170545384797541183

`A080191(A087087(n+4)%A373108(n))`
-/

namespace A038961.P6170545384797541183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (Int.tmod (A087087 (n + 4)) (A373108 n)).toNat

end

end A038961.P6170545384797541183

/-! ## A038961.P16350530638467969918

`p?[A347735(A347740(n)+3)+A038608(n+6)]`
-/

namespace A038961.P16350530638467969918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347735 (A347740 n + 3).toNat + A038608 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038961.P16350530638467969918

/-!
# A038962: Primes p such that 77 is not a square mod p.

The programs for A038962, there is no canonical definition to state claims against.
-/

/-! ## A038962.P4759100038142358959

`eq[A255647(n)+A192006(n), A053204(n)]`
-/

namespace A038962.P4759100038142358959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n + A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038962.P4759100038142358959

/-! ## A038962.P4877885563773660557

`p?[∑[A209601(A094587(n))]]`
-/

namespace A038962.P4877885563773660557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209601 (A094587 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038962.P4877885563773660557

/-! ## A038962.P2510950950365115770

`p?[∑[A336856(A292765(n+1))]]`
-/

namespace A038962.P2510950950365115770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336856 (A292765 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038962.P2510950950365115770

/-!
# A038963: Primes p such that 78 is a square mod p.

The programs for A038963, there is no canonical definition to state claims against.
-/

/-! ## A038963.P10235197565385079196

`p?[comp[A038964(n+1)]]`
-/

namespace A038963.P10235197565385079196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038964 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038963.P10235197565385079196

/-! ## A038963.P4816249018877096514

`p?[∑[A327407(2*n+1)!]]`
-/

namespace A038963.P4816249018877096514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327407 (2 * n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038963.P4816249018877096514

/-! ## A038963.P10776396890008676001

`A045320(record[A248213(n+1)])`
-/

namespace A038963.P10776396890008676001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038963.P10776396890008676001

/-! ## A038963.P16154064067112786851

`∩[A045320(n+1), A235986(n+1)]`
-/

namespace A038963.P16154064067112786851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038963.P16154064067112786851

/-! ## A038963.P4901359863724785294

`∩[A045320(n+1), A316530(n+1)]`
-/

namespace A038963.P4901359863724785294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038963.P4901359863724785294

/-!
# A038964: Primes p such that 78 is not a square mod p.

The programs for A038964, there is no canonical definition to state claims against.
-/

/-! ## A038964.P11601259322599997034

`p?[lt[A135220(n+5), A135220(n+1)]]`
-/

namespace A038964.P11601259322599997034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135220 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135220 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038964.P11601259322599997034

/-!
# A038965: Primes p such that 79 is a square mod p.

The programs for A038965, there is no canonical definition to state claims against.
-/

/-! ## A038965.P7488987528867599887

`p?[∑[A318360(A318360(8*n+5))]]`
-/

namespace A038965.P7488987528867599887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A318360 (8 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038965.P7488987528867599887

/-! ## A038965.P16479768623605825280

`p?[∑[A000005(A307788(n))]]`
-/

namespace A038965.P16479768623605825280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A307788 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038965.P16479768623605825280

/-! ## A038965.P9974295433413133972

`p?[record[A261904(A285192(n))]]`
-/

namespace A038965.P9974295433413133972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 (A285192 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038965.P9974295433413133972

/-! ## A038965.P2228685274380349134

`p?[∑[A093032(A005940(n+1))]]`
-/

namespace A038965.P2228685274380349134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093032 (A005940 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038965.P2228685274380349134

/-! ## A038965.P16059843562669031191

`p?[∑[A212628(A105306(n+1))]]`
-/

namespace A038965.P16059843562669031191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (A105306 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038965.P16059843562669031191

/-!
# A038966: Primes p such that 79 is not a square mod p.

The programs for A038966, there is no canonical definition to state claims against.
-/

/-! ## A038966.P2490419616697902877

`p?[n*A011599(n)*A087960(n)]`
-/

namespace A038966.P2490419616697902877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011599 n * A087960 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038966.P2490419616697902877

/-! ## A038966.P12422403596547636227

`eq[(A011599(n)+2)*A284289(n)², and(3, n)]`
-/

namespace A038966.P12422403596547636227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011599 n + 2) * A284289 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A038966.P12422403596547636227

/-! ## A038966.P14950209824584624998

`lt[A341702(n)², A011599(n)*A087960(n)]`
-/

namespace A038966.P14950209824584624998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n * A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038966.P14950209824584624998

/-! ## A038966.P1678070597229342965

`A137903(A355656(n+2))`
-/

namespace A038966.P1678070597229342965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137903 (A355656 (n + 2)).toNat

end

end A038966.P1678070597229342965

/-! ## A038966.P17942746661805849431

`A216227(A165412(n+3)-A000007(n))`
-/

namespace A038966.P17942746661805849431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (A165412 (n + 3) - A000007 n).toNat

end

end A038966.P17942746661805849431

/-!
# A038967: Primes p such that 82 is a square mod p.

The programs for A038967, there is no canonical definition to state claims against.
-/

/-! ## A038967.P2902227082668344832

`p?[comp[A038968(n+1)]]`
-/

namespace A038967.P2902227082668344832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038968 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038967.P2902227082668344832

/-! ## A038967.P10936246546916318272

`∩[A000040(n+1), comp[A038968(n+1)]]`
-/

namespace A038967.P10936246546916318272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038968 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038967.P10936246546916318272

/-! ## A038967.P7455693818731252043

`p?[∑[A053989(A057371(n+1))]]`
-/

namespace A038967.P7455693818731252043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A057371 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038967.P7455693818731252043

/-! ## A038967.P8922454606012612842

`p?[A077172(∑[A209918(n+1)])]`
-/

namespace A038967.P8922454606012612842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038967.P8922454606012612842

/-! ## A038967.P7490874700519781979

`record[A037126(A166492(n+2)+A017888(n))]`
-/

namespace A038967.P7490874700519781979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A166492 (n + 2) + A017888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038967.P7490874700519781979

/-!
# A038968: Primes p such that 82 is not a square mod p.

The programs for A038968, there is no canonical definition to state claims against.
-/

/-! ## A038968.P17531512730876342744

`p?[record[A350563(n+1)%A210578(n+1)]]`
-/

namespace A038968.P17531512730876342744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350563 (n + 1)) (A210578 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038968.P17531512730876342744

/-!
# A038969: Primes p such that 83 is a square mod p.

The programs for A038969, there is no canonical definition to state claims against.
-/

/-! ## A038969.P17131340290337877631

`record[A305747(A308874(n+1)+14)]`
-/

namespace A038969.P17131340290337877631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305747 (A308874 (n + 1) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038969.P17131340290337877631

/-! ## A038969.P13258703063172383257

`p?[lt[2, A061358(A308040(n+1))]]`
-/

namespace A038969.P13258703063172383257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A308040 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038969.P13258703063172383257

/-!
# A038970: Primes p such that 83 is not a square mod p.

The programs for A038970, there is no canonical definition to state claims against.
-/

/-! ## A038970.P14450245759412910570

`p?[∑[A110007(A331562(n))]]`
-/

namespace A038970.P14450245759412910570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A331562 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038970.P14450245759412910570

/-! ## A038970.P14683437797361718377

`p?[∑[A285189(A292975(n))]]`
-/

namespace A038970.P14683437797361718377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A292975 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038970.P14683437797361718377

/-! ## A038970.P4059202042181981486

`record[A162361(A213208(n)+3+n)]`
-/

namespace A038970.P4059202042181981486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162361 (A213208 n + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038970.P4059202042181981486

/-! ## A038970.P16153557092787701473

`eq[A003415(n), A156775(A120887(n+1))]`
-/

namespace A038970.P16153557092787701473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156775 (A120887 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038970.P16153557092787701473

/-! ## A038970.P4160526692783178055

`A346153(A212118(n)+A058312(n+1))`
-/

namespace A038970.P4160526692783178055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (A212118 (n + 84) + A058312 (n + 1)).toNat

end

end A038970.P4160526692783178055

/-!
# A038971: Primes p such that 85 is a square mod p.

The programs for A038971, there is no canonical definition to state claims against.
-/

/-! ## A038971.P18105181372194330284

`∪[A141772(n+1), A141773(n+1)]`
-/

namespace A038971.P18105181372194330284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038971.P18105181372194330284

/-! ## A038971.P12455819540478099601

`p?[record[A275300(A123596(n))]]`
-/

namespace A038971.P12455819540478099601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275300 (A123596 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038971.P12455819540478099601

/-! ## A038971.P10171476143397375288

`∩[A110358(n+1), A364354(n+1)]`
-/

namespace A038971.P10171476143397375288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038971.P10171476143397375288

/-! ## A038971.P13838177393140044052

`p?[∑[A007302(A340529(2*n+1))]]`
-/

namespace A038971.P13838177393140044052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A340529 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038971.P13838177393140044052

/-!
# A038972: Primes p such that 85 is not a square mod p.

The programs for A038972, there is no canonical definition to state claims against.
-/

/-! ## A038972.P3291611058403338229

`p?[comp[A038971(n+1)]]`
-/

namespace A038972.P3291611058403338229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038972.P3291611058403338229

/-! ## A038972.P5880257902166854817

`p?[∑[A048685(A135723(n))]]`
-/

namespace A038972.P5880257902166854817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048685 (A135723 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038972.P5880257902166854817

/-! ## A038972.P2787637683364779472

`A000040(lt[A171917(3*n+4), A171932(n+2)])`
-/

namespace A038972.P2787637683364779472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038972.P2787637683364779472

/-! ## A038972.P6249556687229895083

`p?[∑[A175307(A236938(n))]]`
-/

namespace A038972.P6249556687229895083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (A236938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038972.P6249556687229895083

/-! ## A038972.P1845701859807409005

`eq[A032741(n), A355689(A347336(n+1))]`
-/

namespace A038972.P1845701859807409005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A347336 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038972.P1845701859807409005

/-!
# A038973: Primes p such that 86 is a square mod p.

The programs for A038973, there is no canonical definition to state claims against.
-/

/-! ## A038973.P4476676616283593803

`record[p?[A271237(A271211(3*(n+1)))]]`
-/

namespace A038973.P4476676616283593803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271237 (A271211 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038973.P4476676616283593803

/-! ## A038973.P16324769354246793759

`p?[A130108(∑[A072411(n+1)])]`
-/

namespace A038973.P16324769354246793759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130108 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038973.P16324769354246793759

/-! ## A038973.P15146113064457186274

`p?[lt[A099862(n+1), A144290(n+1)]]`
-/

namespace A038973.P15146113064457186274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099862 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144290 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038973.P15146113064457186274

/-! ## A038973.P7051810131106683356

`p?[lt[A187477(n+1), A144290(n+1)]]`
-/

namespace A038973.P7051810131106683356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187477 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144290 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038973.P7051810131106683356

/-! ## A038973.P4965007712346164125

`A218123(A137164(n+1))`
-/

namespace A038973.P4965007712346164125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A137164 (n + 1)).toNat

end

end A038973.P4965007712346164125

/-!
# A038975: Primes p such that 87 is a square mod p.

The programs for A038975, there is no canonical definition to state claims against.
-/

/-! ## A038975.P1030440946459195924

`p?[∑[A230517(∑[n%3]+n^(n²%3))]]`
-/

namespace A038975.P1030440946459195924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230517 (∑ j ∈ Finset.range (n + 1), f3 j + n ^ (n ^ 2 % 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038975.P1030440946459195924

/-! ## A038975.P9702773547092961059

`record[p?[A271099(A006039(n+1))]]`
-/

namespace A038975.P9702773547092961059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271099 (A006039 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038975.P9702773547092961059

/-! ## A038975.P1596834292760232603

`p?[lt[A339557(n), A339539(n+2)]]`
-/

namespace A038975.P1596834292760232603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339557 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339539 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038975.P1596834292760232603

/-! ## A038975.P8912472067247391346

`eq[A023402(2*n+1), A323349(n)]`
-/

namespace A038975.P8912472067247391346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038975.P8912472067247391346

/-! ## A038975.P10268610992891120092

`∩[A028757(n+1), A045311(n+1)]`
-/

namespace A038975.P10268610992891120092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038975.P10268610992891120092

/-!
# A038976: Primes p such that 87 is not a square mod p.

The programs for A038976, there is no canonical definition to state claims against.
-/

/-! ## A038976.P14674047350379085488

`A032742(A019376(n+1)*A019409(n+1))`
-/

namespace A038976.P14674047350379085488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A019376 (n + 1) * A019409 (n + 1)).toNat

end

end A038976.P14674047350379085488

/-!
# A038977: Primes p such that 89 is a square mod p.

The programs for A038977, there is no canonical definition to state claims against.
-/

/-! ## A038977.P1345193522913387481

`∪[A033257(n+1), A191053(n+1)]`
-/

namespace A038977.P1345193522913387481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038977.P1345193522913387481

/-! ## A038977.P784531586433410262

`∪[A087538(n+1), A191053(n+1)]`
-/

namespace A038977.P784531586433410262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038977.P784531586433410262

/-! ## A038977.P8357582205208216494

`∪[A141778(n+1), A191053(n+1)]`
-/

namespace A038977.P8357582205208216494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038977.P8357582205208216494

/-! ## A038977.P1502275606580212522

`A141778(n+1)%A363950(n+1)²`
-/

namespace A038977.P1502275606580212522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141778 (n + 1)) (A363950 (n + 1) ^ 2)

end

end A038977.P1502275606580212522

/-! ## A038977.P10845189583820242266

`A141778(n+1)+A010054(A260809(n+1))`
-/

namespace A038977.P10845189583820242266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141778 (n + 1) + A010054 (A260809 (n + 1)).toNat

end

end A038977.P10845189583820242266

/-! ## A038977.P1846849563712145005

`A141778(n+1)+A000007(A141793(n+1))`
-/

namespace A038977.P1846849563712145005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141778 (n + 1) + A000007 (A141793 (n + 1)).toNat

end

end A038977.P1846849563712145005

/-! ## A038977.P11040637953672512426

`A141778(n+1)+A000007(A191723(n+1))`
-/

namespace A038977.P11040637953672512426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141778 (n + 1) + A000007 (A191723 (n + 1)).toNat

end

end A038977.P11040637953672512426

/-! ## A038977.P15645046701962971060

`A069188(A141778(n+1))`
-/

namespace A038977.P15645046701962971060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069188 (A141778 (n + 1)).toNat

end

end A038977.P15645046701962971060

/-! ## A038977.P13614830436177048391

`∩[A141778(n+1), A259178(n+1)]`
-/

namespace A038977.P13614830436177048391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038977.P13614830436177048391

/-! ## A038977.P8599996869390755863

`∩[A107040(n+1), A141778(n+1)]`
-/

namespace A038977.P8599996869390755863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038977.P8599996869390755863

/-!
# A038978: Primes p such that 89 is not a square mod p.

The programs for A038978, there is no canonical definition to state claims against.
-/

/-! ## A038978.P435506495618292284

`p?[comp[A038977(n+1)]]`
-/

namespace A038978.P435506495618292284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038978.P435506495618292284

/-! ## A038978.P2455051159348517177

`eq[A011601(n), A260148(n)]`
-/

namespace A038978.P2455051159348517177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P2455051159348517177

/-! ## A038978.P4012950905983658599

`eq[(A011601(n)+2)², A211110(n)]`
-/

namespace A038978.P4012950905983658599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011601 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P4012950905983658599

/-! ## A038978.P14575599119457336135

`eq[A011601(n)+2, A284289(n)²]`
-/

namespace A038978.P14575599119457336135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P14575599119457336135

/-! ## A038978.P11987432593255173358

`eq[A011601(n)+2, A053989(n+1)²]`
-/

namespace A038978.P11987432593255173358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P11987432593255173358

/-! ## A038978.P9825325249223654307

`eq[A011601(n)+2, A231734(n+1)²]`
-/

namespace A038978.P9825325249223654307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P9825325249223654307

/-! ## A038978.P14829920280124468477

`eq[A011601(n)+2, A231820(n+1)²]`
-/

namespace A038978.P14829920280124468477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P14829920280124468477

/-! ## A038978.P16314080908190344666

`eq[A011601(n)+2, A210442(n)²]`
-/

namespace A038978.P16314080908190344666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P16314080908190344666

/-! ## A038978.P13086003660409873909

`eq[A011601(n)+2, A117545(n+1)²]`
-/

namespace A038978.P13086003660409873909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P13086003660409873909

/-! ## A038978.P6291746365473955923

`eq[A011601(n)+2, A331885(n)²]`
-/

namespace A038978.P6291746365473955923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038978.P6291746365473955923

/-!
# A038979: Primes p such that 91 is a square mod p.

The programs for A038979, there is no canonical definition to state claims against.
-/

/-! ## A038979.P13276679303795716032

`p?[eq[1, A350866(n+1)+A011722(n)]]`
-/

namespace A038979.P13276679303795716032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 (n + 1) + A011722 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038979.P13276679303795716032

/-! ## A038979.P15632886906221676139

`p?[A195098(2*n+1)+A132292(n+1)]`
-/

namespace A038979.P15632886906221676139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (2 * n + 1) + A132292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038979.P15632886906221676139

/-! ## A038979.P17627655225447028802

`record[A204894(A342515(n))]`
-/

namespace A038979.P17627655225447028802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A342515 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038979.P17627655225447028802

/-! ## A038979.P2320489898780049231

`p?[∑[A349311(A349277(n+5))]]`
-/

namespace A038979.P2320489898780049231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349311 (A349277 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038979.P2320489898780049231

/-! ## A038979.P8843681102765952098

`record[p?[A325142(A031050(n+1))]]`
-/

namespace A038979.P8843681102765952098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A031050 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038979.P8843681102765952098

/-!
# A038980: Primes p such that 91 is not a square mod p.

The programs for A038980, there is no canonical definition to state claims against.
-/

/-! ## A038980.P15539725726021165154

`p?[eq[A011722(n), A350866(n+1)]]`
-/

namespace A038980.P15539725726021165154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011722 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350866 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038980.P15539725726021165154

/-! ## A038980.P13739528836009521968

`A139637(A191074(n+1))`
-/

namespace A038980.P13739528836009521968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A191074 (n + 1)).toNat

end

end A038980.P13739528836009521968

/-! ## A038980.P1961803440163705979

`record[A020639(A190487(n+1)+A190482(n+1))]`
-/

namespace A038980.P1961803440163705979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A190487 (n + 1) + A190482 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038980.P1961803440163705979

/-! ## A038980.P12174044951898903283

`A000040(lt[A196020(3*(n+1)), A333528(3*n+1)])`
-/

namespace A038980.P12174044951898903283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333528 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038980.P12174044951898903283

/-!
# A038981: Primes p such that 93 is a square mod p.

The programs for A038981, there is no canonical definition to state claims against.
-/

/-! ## A038981.P17523644451749382119

`∪[A141338(n+1), A141339(n+1)]`
-/

namespace A038981.P17523644451749382119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038981.P17523644451749382119

/-! ## A038981.P5763161418981445693

`p?[comp[A038982(n+1)]]`
-/

namespace A038981.P5763161418981445693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038981.P5763161418981445693

/-! ## A038981.P7936158362996951309

`A112786(lt[A185214(n), A020639(n+1)])`
-/

namespace A038981.P7936158362996951309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038981.P7936158362996951309

/-! ## A038981.P10552304869783653768

`record[gcd(n, A342659(3*n+5))]`
-/

namespace A038981.P10552304869783653768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A342659 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038981.P10552304869783653768

/-! ## A038981.P16113011213571232519

`A375345(A100800(n+1))`
-/

namespace A038981.P16113011213571232519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375345 (A100800 (n + 1)).toNat

end

end A038981.P16113011213571232519

/-!
# A038982: Primes p such that 93 is not a square mod p.

The programs for A038982, there is no canonical definition to state claims against.
-/

/-! ## A038982.P460483962010970668

`p?[record[gcd(n, A042617(n))]]`
-/

namespace A038982.P460483962010970668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A042617 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038982.P460483962010970668

/-! ## A038982.P10065330547226572696

`A023240(lt[A002117(2*n+1), A147415(n+1)])`
-/

namespace A038982.P10065330547226572696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038982.P10065330547226572696

/-! ## A038982.P5571106691204777521

`p?[∑[A001511(A050028(n+1))]]`
-/

namespace A038982.P5571106691204777521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050028 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038982.P5571106691204777521

/-! ## A038982.P2322675193162289104

`p?[∑[A001511(A050060(n+1))]]`
-/

namespace A038982.P2322675193162289104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050060 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038982.P2322675193162289104

/-!
# A038983: Primes p such that 94 is a square mod p.

The programs for A038983, there is no canonical definition to state claims against.
-/

/-! ## A038983.P6073957287854398195

`p?[lt[A329410(n+4), 32]]`
-/

namespace A038983.P6073957287854398195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329410 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038983.P6073957287854398195

/-! ## A038983.P5171268082376230684

`p?[∑[A124769(A098760(n))]]`
-/

namespace A038983.P5171268082376230684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A098760 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038983.P5171268082376230684

/-! ## A038983.P14140254143344973044

`p?[∑[A193330(A035294(n))]]`
-/

namespace A038983.P14140254143344973044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A035294 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038983.P14140254143344973044

/-! ## A038983.P14466284082774529355

`p?[∑[A004739(A074029(n+1))]]`
-/

namespace A038983.P14466284082774529355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A074029 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038983.P14466284082774529355

/-! ## A038983.P944442713117548294

`p?[∑[A146290(A087811(n+1))]]`
-/

namespace A038983.P944442713117548294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (A087811 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038983.P944442713117548294

/-!
# A038984: Primes p such that 94 is not a square mod p.

The programs for A038984, there is no canonical definition to state claims against.
-/

/-! ## A038984.P16067266363935986298

`filter[A386338(n+2), A182741(#)]`
-/

namespace A038984.P16067266363935986298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182741 (f1 j).toNat = 1) n)

end

end A038984.P16067266363935986298

/-! ## A038984.P14089910983506900798

`filter[A204142(n+3), A182741(#)]`
-/

namespace A038984.P14089910983506900798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182741 (f1 j).toNat = 1) n)

end

end A038984.P14089910983506900798

/-! ## A038984.P6328355525350588931

`p?[eq[A112604(n), A342910(n+1)]]`
-/

namespace A038984.P6328355525350588931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038984.P6328355525350588931

/-! ## A038984.P10094643875718890527

`A000040(lt[1, A105769(3*n+1)])`
-/

namespace A038984.P10094643875718890527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105769 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038984.P10094643875718890527

/-!
# A038985: Primes p such that 95 is a square mod p.

The programs for A038985, there is no canonical definition to state claims against.
-/

/-! ## A038985.P18303323282925602468

`A056813(A222026(n+1)+A014206(A314970(n)))`
-/

namespace A038985.P18303323282925602468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A222026 (n + 1) + A014206 (A314970 n).toNat).toNat

end

end A038985.P18303323282925602468

/-! ## A038985.P1673737135806878619

`record[p?[A307836(n+3)+n]]`
-/

namespace A038985.P1673737135806878619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307836 (n + 3) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038985.P1673737135806878619

/-! ## A038985.P2844475054913504539

`record[A333242(n+1)%A094465(3*n+4)]`
-/

namespace A038985.P2844475054913504539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333242 (n + 1)) (A094465 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038985.P2844475054913504539

/-! ## A038985.P13925526082598592573

`p?[A317544(n)-20]`
-/

namespace A038985.P13925526082598592573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317544 n - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038985.P13925526082598592573

/-! ## A038985.P3769165956925195595

`filter[A028783(n+1), A373338(#)]`
-/

namespace A038985.P3769165956925195595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A038985.P3769165956925195595

/-!
# A038986: Primes p such that 95 is not a square mod p.

The programs for A038986, there is no canonical definition to state claims against.
-/

/-! ## A038986.P8771226610671502210

`p?[xor(A136623(2*(n+1)), A136626(2*(n+1)))]`
-/

namespace A038986.P8771226610671502210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136623 (2 * (n + 1))) (A136626 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038986.P8771226610671502210

/-!
# A038987: Primes p such that 97 is a square mod p.

The programs for A038987, there is no canonical definition to state claims against.
-/

/-! ## A038987.P11298301343121960047

`∪[A033208(n+1), A191058(n+1)]`
-/

namespace A038987.P11298301343121960047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038987.P11298301343121960047

/-! ## A038987.P16068709767846496971

`∪[A087537(n+1), A191058(n+1)]`
-/

namespace A038987.P16068709767846496971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038987.P16068709767846496971

/-! ## A038987.P17422313153684982601

`p?[n%(A011602(n)+1+n)]`
-/

namespace A038987.P17422313153684982601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A011602 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038987.P17422313153684982601

/-! ## A038987.P11082836316725808997

`eq[1, or(A011602(n), A053989(n+1))]`
-/

namespace A038987.P11082836316725808997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011602 n) (A053989 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038987.P11082836316725808997

/-! ## A038987.P16659207187753143422

`eq[or(1, A011602(n)), A231734(n+1)]`
-/

namespace A038987.P16659207187753143422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011602 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038987.P16659207187753143422

/-! ## A038987.P7500319287531593784

`eq[1, or(A011602(n), A231820(n+1))]`
-/

namespace A038987.P7500319287531593784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011602 n) (A231820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038987.P7500319287531593784

/-! ## A038987.P6057478490462782679

`eq[1, or(A011602(n), A117545(n+1))]`
-/

namespace A038987.P6057478490462782679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011602 n) (A117545 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038987.P6057478490462782679

/-! ## A038987.P10005013289834040257

`eq[or(1, A011602(n)), A239938(n+1)]`
-/

namespace A038987.P10005013289834040257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011602 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038987.P10005013289834040257

/-!
# A038988: Primes p such that 97 is not a square mod p.

The programs for A038988, there is no canonical definition to state claims against.
-/

/-! ## A038988.P16812542580644454407

`eq[A011602(n), A260148(n)]`
-/

namespace A038988.P16812542580644454407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P16812542580644454407

/-! ## A038988.P5091489745528177557

`eq[(A011602(n)+2)², A211110(n)]`
-/

namespace A038988.P5091489745528177557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011602 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P5091489745528177557

/-! ## A038988.P8602932613993064580

`eq[A011602(n)+2, A284289(n)²]`
-/

namespace A038988.P8602932613993064580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P8602932613993064580

/-! ## A038988.P1645728341282745869

`eq[A011602(n)+2, A053989(n+1)²]`
-/

namespace A038988.P1645728341282745869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P1645728341282745869

/-! ## A038988.P12891060734151811789

`eq[A011602(n)+2, A231734(n+1)²]`
-/

namespace A038988.P12891060734151811789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P12891060734151811789

/-! ## A038988.P6576996908258924367

`eq[A011602(n)+2, A231820(n+1)²]`
-/

namespace A038988.P6576996908258924367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P6576996908258924367

/-! ## A038988.P5734225061598122677

`eq[A011602(n)+2, A210442(n)²]`
-/

namespace A038988.P5734225061598122677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P5734225061598122677

/-! ## A038988.P1826537891318006879

`eq[A011602(n)+2, A117545(n+1)²]`
-/

namespace A038988.P1826537891318006879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P1826537891318006879

/-! ## A038988.P3715659042749355796

`eq[A011602(n)+2, A331885(n)²]`
-/

namespace A038988.P3715659042749355796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P3715659042749355796

/-! ## A038988.P9688129211452983736

`eq[A011602(n)+2, A239938(n+1)²]`
-/

namespace A038988.P9688129211452983736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038988.P9688129211452983736

/-!
# A038989: Expansion of (1 - x^2 - 2*x^3) / (1 - 2*x - 2*x^2 - 2*x^3 + x^4).

The programs for A038989, the canonical program `A038989.P5516717675846483343` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038989 has offset 0).

The definition of A038989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` (program `A038989.P5516717675846483343`, by `A038989.P5516717675846483343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038989.P5516717675846483343

`ogf((1-x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038989

/-- `ogf((1-x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P5516717675846483343.Spec : Prop :=
  ∀ n, P5516717675846483343.a n = A038989 n

theorem P5516717675846483343.correct : P5516717675846483343.Spec := by
  intro n
  simp only [A038989]

end A038989

/-! ## A038989.P3584729660369376524

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A038989.P3584729660369376524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A038989.P3584729660369376524

namespace A038989

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3584729660369376524.Spec : Prop :=
  ∀ n, P3584729660369376524.a n = A038989 n

end A038989

/-! ## A038989.P3939346644454250130

`3*A138573(n)-A045821(n)`
-/

namespace A038989.P3939346644454250130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138573 n - A045821 n

end

end A038989.P3939346644454250130

namespace A038989

/-- `3*A138573(n)-A045821(n)` -/
def P3939346644454250130.Spec : Prop :=
  ∀ n, P3939346644454250130.a n = A038989 n

end A038989

/-! ## A038989.P16429771047937375863

`4*A138573(n)-A317973(n)`
-/

namespace A038989.P16429771047937375863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138573 n - A317973 n

end

end A038989.P16429771047937375863

namespace A038989

/-- `4*A138573(n)-A317973(n)` -/
def P16429771047937375863.Spec : Prop :=
  ∀ n, P16429771047937375863.a n = A038989 n

end A038989

/-! ## A038989.P1070205429299835575

`A138573(n)+or(1, A138574(n))`
-/

namespace A038989.P1070205429299835575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n + Int.lor 1 (A138574 n)

end

end A038989.P1070205429299835575

namespace A038989

/-- `A138573(n)+or(1, A138574(n))` -/
def P1070205429299835575.Spec : Prop :=
  ∀ n, P1070205429299835575.a n = A038989 n

end A038989

/-! ## A038989.P10460417000608368383

`A192234(n+1)+2*A138573(n)`
-/

namespace A038989.P10460417000608368383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1) + 2 * A138573 n

end

end A038989.P10460417000608368383

namespace A038989

/-- `A192234(n+1)+2*A138573(n)` -/
def P10460417000608368383.Spec : Prop :=
  ∀ n, P10460417000608368383.a n = A038989 n

end A038989

/-! ## A038989.P1476706907925484329

`A206625(2*n+1)+A192234(n)`
-/

namespace A038989.P1476706907925484329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n + 1) + A192234 n

end

end A038989.P1476706907925484329

namespace A038989

/-- `A206625(2*n+1)+A192234(n)` -/
def P1476706907925484329.Spec : Prop :=
  ∀ n, P1476706907925484329.a n = A038989 n

end A038989

/-! ## A038989.P18353663885130697893

`A138573(n+1)-2*A192237(n)`
-/

namespace A038989.P18353663885130697893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 1) - 2 * A192237 n

end

end A038989.P18353663885130697893

namespace A038989

/-- `A138573(n+1)-2*A192237(n)` -/
def P18353663885130697893.Spec : Prop :=
  ∀ n, P18353663885130697893.a n = A038989 n

end A038989

/-! ## A038989.P5893236419397157185

`A138573(n+1)+A138573(n)-A389120(n)`
-/

namespace A038989.P5893236419397157185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 1) + (A138573 n - A389120 n)

end

end A038989.P5893236419397157185

namespace A038989

/-- `A138573(n+1)+A138573(n)-A389120(n)` -/
def P5893236419397157185.Spec : Prop :=
  ∀ n, P5893236419397157185.a n = A038989 n

end A038989

/-! ## A038989.P2919442441270765741

`A192234(n+1)+A317973(n)+A192234(n+1)`
-/

namespace A038989.P2919442441270765741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192234 (n + 1) + (A317973 n + A192234 (n + 1))

end

end A038989.P2919442441270765741

namespace A038989

/-- `A192234(n+1)+A317973(n)+A192234(n+1)` -/
def P2919442441270765741.Spec : Prop :=
  ∀ n, P2919442441270765741.a n = A038989 n

end A038989

/-! ## A038989.P15017768107517165033

`A317976(n)+A138573(n+1)-A192237(n+1)`
-/

namespace A038989.P15017768107517165033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317976 n + A138573 (n + 1) - A192237 (n + 1)

end

end A038989.P15017768107517165033

namespace A038989

/-- `A317976(n)+A138573(n+1)-A192237(n+1)` -/
def P15017768107517165033.Spec : Prop :=
  ∀ n, P15017768107517165033.a n = A038989 n

end A038989

/-! ## A038989.P10557900583303747311

`A138574(n+1)-A387018(n)`
-/

namespace A038989.P10557900583303747311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138574 (n + 1) - A387018 n

end

end A038989.P10557900583303747311

namespace A038989

/-- `A138574(n+1)-A387018(n)` -/
def P10557900583303747311.Spec : Prop :=
  ∀ n, P10557900583303747311.a n = A038989 n

end A038989

/-! ## A038989.P7790091234032133158

`A387018(n+1)-(A389120(n)+A387018(n))`
-/

namespace A038989.P7790091234032133158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387018 (n + 1) - (A389120 n + A387018 n)

end

end A038989.P7790091234032133158

namespace A038989

/-- `A387018(n+1)-(A389120(n)+A387018(n))` -/
def P7790091234032133158.Spec : Prop :=
  ∀ n, P7790091234032133158.a n = A038989 n

end A038989

/-!
# A038990: Expansion of (1-x-x^2+2*x^3) / ((1-x)*(1+x)*(1-3*x+x^2)).

The programs for A038990, the canonical program `A038990.P825621198314392982` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038990 has offset 0).

The definition of A038990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2+2x^3)/(1-3x+3x^3-x^4))` (program `A038990.P825621198314392982`, by `A038990.P825621198314392982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038990.P825621198314392982

`ogf((1-x-x^2+2x^3)/(1-3x+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038990

/-- `ogf((1-x-x^2+2x^3)/(1-3x+3x^3-x^4))` -/
def P825621198314392982.Spec : Prop :=
  ∀ n, P825621198314392982.a n = A038990 n

theorem P825621198314392982.correct : P825621198314392982.Spec := by
  intro n
  simp only [A038990]

end A038990

/-! ## A038990.P1272779770572636812

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A038990.P1272779770572636812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + a (n - 4)

end

end A038990.P1272779770572636812

namespace A038990

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P1272779770572636812.Spec : Prop :=
  ∀ n, P1272779770572636812.a n = A038990 n

end A038990

/-! ## A038990.P16595110347402126350

`3*a(n-1)+n%2-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A038990.P16595110347402126350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + (((n % 2 : ℕ) : ℤ) - a (n - 2))

end

end A038990.P16595110347402126350

namespace A038990

/-- `3*a(n-1)+n%2-a(n-2)` -/
def P16595110347402126350.Spec : Prop :=
  ∀ n, P16595110347402126350.a n = A038990 n

end A038990

/-! ## A038990.P7980118600521420844

`and(1, n)+3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A038990.P7980118600521420844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.land 1 n : ℤ) + (3 * a (n - 1) - a (n - 2))

end

end A038990.P7980118600521420844

namespace A038990

/-- `and(1, n)+3*a(n-1)-a(n-2)` -/
def P7980118600521420844.Spec : Prop :=
  ∀ n, P7980118600521420844.a n = A038990 n

end A038990

/-! ## A038990.P5461384799612152401

`3*a(n-1)-(a(n-2)-a(n-1)%2)` with `a(0)=1, a(1)=2`
-/

namespace A038990.P5461384799612152401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 2) - Int.tmod (a (n - 1)) 2)

end

end A038990.P5461384799612152401

namespace A038990

/-- `3*a(n-1)-(a(n-2)-a(n-1)%2)` -/
def P5461384799612152401.Spec : Prop :=
  ∀ n, P5461384799612152401.a n = A038990 n

end A038990

/-! ## A038990.P14205516338483974853

`A061647(n)+a(n-1)` with `a(0)=1`
-/

namespace A038990.P14205516338483974853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061647 n + a (n - 1)

end

end A038990.P14205516338483974853

namespace A038990

/-- `A061647(n)+a(n-1)` -/
def P14205516338483974853.Spec : Prop :=
  ∀ n, P14205516338483974853.a n = A038990 n

end A038990

/-! ## A038990.P15873812455773962926

`floor(4*A000032(2*n)/5)`
-/

namespace A038990.P15873812455773962926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A000032 (2 * n) : ℚ) / 5)⌋

end

end A038990.P15873812455773962926

namespace A038990

/-- `floor(4*A000032(2*n)/5)` -/
def P15873812455773962926.Spec : Prop :=
  ∀ n, P15873812455773962926.a n = A038990 n

end A038990

/-! ## A038990.P16994081051622394757

`A236340(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A038990.P16994081051622394757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236340 (2 * n) - a (n - 1)

end

end A038990.P16994081051622394757

namespace A038990

/-- `A236340(2*n)-a(n-1)` -/
def P16994081051622394757.Spec : Prop :=
  ∀ n, P16994081051622394757.a n = A038990 n

end A038990

/-! ## A038990.P13803922802479586614

`A064831(n)+A001519(n)`
-/

namespace A038990.P13803922802479586614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + A001519 n

end

end A038990.P13803922802479586614

namespace A038990

/-- `A064831(n)+A001519(n)` -/
def P13803922802479586614.Spec : Prop :=
  ∀ n, P13803922802479586614.a n = A038990 n

end A038990

/-! ## A038990.P16436354114653680067

`A005248(n)-A166516(n)`
-/

namespace A038990.P16436354114653680067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A166516 n

end

end A038990.P16436354114653680067

namespace A038990

/-- `A005248(n)-A166516(n)` -/
def P16436354114653680067.Spec : Prop :=
  ∀ n, P16436354114653680067.a n = A038990 n

end A038990

/-! ## A038990.P4042685646430795261

`A166536(n)-A107387(n)`
-/

namespace A038990.P4042685646430795261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 n - A107387 n

end

end A038990.P4042685646430795261

namespace A038990

/-- `A166536(n)-A107387(n)` -/
def P4042685646430795261.Spec : Prop :=
  ∀ n, P4042685646430795261.a n = A038990 n

end A038990

/-! ## A038990.P18048052181987624405

`A001519(n)+∑[A001654(n)]`
-/

namespace A038990.P18048052181987624405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038990.P18048052181987624405

namespace A038990

/-- `A001519(n)+∑[A001654(n)]` -/
def P18048052181987624405.Spec : Prop :=
  ∀ n, P18048052181987624405.a n = A038990 n

end A038990

/-! ## A038990.P2492080779990109247

`A099016(n)+A166516(n)-1`
-/

namespace A038990.P2492080779990109247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n + (A166516 n - 1)

end

end A038990.P2492080779990109247

namespace A038990

/-- `A099016(n)+A166516(n)-1` -/
def P2492080779990109247.Spec : Prop :=
  ∀ n, P2492080779990109247.a n = A038990 n

end A038990

/-! ## A038990.P10356811396222692066

`A175395(n+1)-A192872(n)`
-/

namespace A038990.P10356811396222692066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 1) - A192872 n

end

end A038990.P10356811396222692066

namespace A038990

/-- `A175395(n+1)-A192872(n)` -/
def P10356811396222692066.Spec : Prop :=
  ∀ n, P10356811396222692066.a n = A038990 n

end A038990

/-! ## A038990.P17962252452453779894

`2*A001519(n)-A110034(n)`
-/

namespace A038990.P17962252452453779894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001519 n - A110034 n

end

end A038990.P17962252452453779894

namespace A038990

/-- `2*A001519(n)-A110034(n)` -/
def P17962252452453779894.Spec : Prop :=
  ∀ n, P17962252452453779894.a n = A038990 n

end A038990

/-! ## A038990.P10698725137701711789

`A000032(2*n)-A166516(n)`
-/

namespace A038990.P10698725137701711789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A166516 n

end

end A038990.P10698725137701711789

namespace A038990

/-- `A000032(2*n)-A166516(n)` -/
def P10698725137701711789.Spec : Prop :=
  ∀ n, P10698725137701711789.a n = A038990 n

end A038990

/-! ## A038990.P13846647397197271807

`A118658(n+1)²-A280193(n+1)`
-/

namespace A038990.P13846647397197271807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) ^ 2 - A280193 (n + 1)

end

end A038990.P13846647397197271807

namespace A038990

/-- `A118658(n+1)²-A280193(n+1)` -/
def P13846647397197271807.Spec : Prop :=
  ∀ n, P13846647397197271807.a n = A038990 n

end A038990

/-! ## A038990.P13329269993788130412

`∑[A001654(n)]+A000045(abs(1-2*n))`
-/

namespace A038990.P13329269993788130412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 |1 - (2 * n : ℤ)|.toNat

end

end A038990.P13329269993788130412

namespace A038990

/-- `∑[A001654(n)]+A000045(abs(1-2*n))` -/
def P13329269993788130412.Spec : Prop :=
  ∀ n, P13329269993788130412.a n = A038990 n

end A038990

/-! ## A038990.P2161106573436401069

`floor(A000045(2*n+1)+(A000045(n)/ϕ)²)`
-/

namespace A038990.P2161106573436401069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (2 * n + 1) : ℝ) + ((A000045 n : ℝ) / Real.goldenRatio) ^ 2⌋

end

end A038990.P2161106573436401069

namespace A038990

/-- `floor(A000045(2*n+1)+(A000045(n)/ϕ)²)` -/
def P2161106573436401069.Spec : Prop :=
  ∀ n, P2161106573436401069.a n = A038990 n

end A038990

/-!
# A038991: Number of sublattices of index n in generic 4-dimensional lattice.

The programs for A038991, the canonical program `A038991.P10290637620050896521` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038991 has offset 1).

The definition of A038991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038991.P12763603181903020349

`∑{d}[n+1, #*A001001(#)]`
-/

namespace A038991.P12763603181903020349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001001 d

end

end A038991.P12763603181903020349

namespace A038991

/-- `∑{d}[n+1, #*A001001(#)]` -/
def P12763603181903020349.Spec : Prop :=
  ∀ n, P12763603181903020349.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P10290637620050896521

`∑{d}[n+1, A000290(#)*A027847((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038991

/-- `∑{d}[n+1, A000290(#)*A027847((n+1)/#)]` -/
def P10290637620050896521.Spec : Prop :=
  ∀ n, P10290637620050896521.a n = A038991 (n + 1)

theorem P10290637620050896521.correct : P10290637620050896521.Spec := by
  intro n
  simp only [A038991, Nat.add_sub_cancel]

end A038991

/-! ## A038991.P2589324596345949563

`∑{d}[n+1, A001158(#)*A064987((n+1)/#)]`
-/

namespace A038991.P2589324596345949563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P2589324596345949563

namespace A038991

/-- `∑{d}[n+1, A001158(#)*A064987((n+1)/#)]` -/
def P2589324596345949563.Spec : Prop :=
  ∀ n, P2589324596345949563.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P2879900975158365984

`∑{d}[n+1, A020478(#)*A060640((n+1)/#)]`
-/

namespace A038991.P2879900975158365984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020478 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P2879900975158365984

namespace A038991

/-- `∑{d}[n+1, A020478(#)*A060640((n+1)/#)]` -/
def P2879900975158365984.Spec : Prop :=
  ∀ n, P2879900975158365984.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P12664710174142497059

`∑{d}[n+1, A000056(#)*A174468((n+1)/#)]`
-/

namespace A038991.P12664710174142497059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A174468 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P12664710174142497059

namespace A038991

/-- `∑{d}[n+1, A000056(#)*A174468((n+1)/#)]` -/
def P12664710174142497059.Spec : Prop :=
  ∀ n, P12664710174142497059.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P4104966852945902108

`∑{d}[n+1, A001157(#)*A328259((n+1)/#)]`
-/

namespace A038991.P4104966852945902108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P4104966852945902108

namespace A038991

/-- `∑{d}[n+1, A001157(#)*A328259((n+1)/#)]` -/
def P4104966852945902108.Spec : Prop :=
  ∀ n, P4104966852945902108.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P2105742708086546529

`∑{d}[n+1, A007433(#)*A343497((n+1)/#)]`
-/

namespace A038991.P2105742708086546529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P2105742708086546529

namespace A038991

/-- `∑{d}[n+1, A007433(#)*A343497((n+1)/#)]` -/
def P2105742708086546529.Spec : Prop :=
  ∀ n, P2105742708086546529.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P936344738243093683

`∑{d}[n+1, A038992(#)*A334660((n+1)/#)]`
-/

namespace A038991.P936344738243093683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038992 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P936344738243093683

namespace A038991

/-- `∑{d}[n+1, A038992(#)*A334660((n+1)/#)]` -/
def P936344738243093683.Spec : Prop :=
  ∀ n, P936344738243093683.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P7388615064742471285

`∑{d}[n+1, A007429(#)*A368743((n+1)/#)]`
-/

namespace A038991.P7388615064742471285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P7388615064742471285

namespace A038991

/-- `∑{d}[n+1, A007429(#)*A368743((n+1)/#)]` -/
def P7388615064742471285.Spec : Prop :=
  ∀ n, P7388615064742471285.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P2902053435155375013

`∑{d}[n+1, A091519(#)*A288419((n+1)/#)]`
-/

namespace A038991.P2902053435155375013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A288419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P2902053435155375013

namespace A038991

/-- `∑{d}[n+1, A091519(#)*A288419((n+1)/#)]` -/
def P2902053435155375013.Spec : Prop :=
  ∀ n, P2902053435155375013.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P8808772456870431075

`∑{d}[n+1, A069097(#)*A321140((n+1)/#)]`
-/

namespace A038991.P8808772456870431075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P8808772456870431075

namespace A038991

/-- `∑{d}[n+1, A069097(#)*A321140((n+1)/#)]` -/
def P8808772456870431075.Spec : Prop :=
  ∀ n, P8808772456870431075.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P17742372624731878620

`∑{d}[n+1, A034718(#)*A373061((n+1)/#)]`
-/

namespace A038991.P17742372624731878620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A373061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P17742372624731878620

namespace A038991

/-- `∑{d}[n+1, A034718(#)*A373061((n+1)/#)]` -/
def P17742372624731878620.Spec : Prop :=
  ∀ n, P17742372624731878620.a n = A038991 (n + 1)

end A038991

/-! ## A038991.P17458660684627108909

`∑{d}[n+1, A000203(#)*A282097((n+1)/#)]`
-/

namespace A038991.P17458660684627108909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A282097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P17458660684627108909

namespace A038991

/-- `∑{d}[n+1, A000203(#)*A282097((n+1)/#)]` -/
def P17458660684627108909.Spec : Prop :=
  ∀ n, P17458660684627108909.a n = A038991 (n + 1)

end A038991

/-!
# A038992: Number of sublattices of index n in generic 5-dimensional lattice.

The programs for A038992, the canonical program `A038992.P6853481220545635755` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038992 has offset 1).

The definition of A038992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038992.P6853481220545635755

`∑{d}[n+1, #*A038991(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038992

/-- `∑{d}[n+1, #*A038991(#)]` -/
def P6853481220545635755.Spec : Prop :=
  ∀ n, P6853481220545635755.a n = A038992 (n + 1)

theorem P6853481220545635755.correct : P6853481220545635755.Spec := by
  intro n
  simp only [A038992, Nat.add_sub_cancel]

end A038992

/-! ## A038992.P6679976026256794032

`∑{d}[n+1, A001001(#)*A282211((n+1)/#)]`
-/

namespace A038992.P6679976026256794032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A282211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038992.P6679976026256794032

namespace A038992

/-- `∑{d}[n+1, A001001(#)*A282211((n+1)/#)]` -/
def P6679976026256794032.Spec : Prop :=
  ∀ n, P6679976026256794032.a n = A038992 (n + 1)

end A038992

/-! ## A038992.P4839229994321010187

`∑{d}[n+1, A027848(#)*A282097((n+1)/#)]`
-/

namespace A038992.P4839229994321010187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027848 d * A282097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038992.P4839229994321010187

namespace A038992

/-- `∑{d}[n+1, A027848(#)*A282097((n+1)/#)]` -/
def P4839229994321010187.Spec : Prop :=
  ∀ n, P4839229994321010187.a n = A038992 (n + 1)

end A038992

/-! ## A038992.P10821706736194984395

`A160870(A167499(n+3))`
-/

namespace A038992.P10821706736194984395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A167499 (n + 3)).toNat

end

end A038992.P10821706736194984395

namespace A038992

/-- `A160870(A167499(n+3))` -/
def P10821706736194984395.Spec : Prop :=
  ∀ n, P10821706736194984395.a n = A038992 (n + 1)

end A038992

/-! ## A038992.P8361954835627629429

`A160870((n+4)²-A052905(n))`
-/

namespace A038992.P8361954835627629429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A038992.P8361954835627629429

namespace A038992

/-- `A160870((n+4)²-A052905(n))` -/
def P8361954835627629429.Spec : Prop :=
  ∀ n, P8361954835627629429.a n = A038992 (n + 1)

end A038992

/-! ## A038992.P13282582472151769042

`A128119(A046691(n+3))`
-/

namespace A038992.P13282582472151769042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A046691 (n + 3)).toNat

end

end A038992.P13282582472151769042

namespace A038992

/-- `A128119(A046691(n+3))` -/
def P13282582472151769042.Spec : Prop :=
  ∀ n, P13282582472151769042.a n = A038992 (n + 1)

end A038992

/-! ## A038992.P11751257194793193007

`A128119(A056115(n)+11)`
-/

namespace A038992.P11751257194793193007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A056115 n + 11).toNat

end

end A038992.P11751257194793193007

namespace A038992

/-- `A128119(A056115(n)+11)` -/
def P11751257194793193007.Spec : Prop :=
  ∀ n, P11751257194793193007.a n = A038992 (n + 1)

end A038992

/-! ## A038992.P5706460646771875258

`A128119(eq[4, A193592(n)])`
-/

namespace A038992.P5706460646771875258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038992.P5706460646771875258

namespace A038992

/-- `A128119(eq[4, A193592(n)])` -/
def P5706460646771875258.Spec : Prop :=
  ∀ n, P5706460646771875258.a n = A038992 (n + 1)

end A038992

/-!
# A038993: Number of sublattices of index n in generic 6-dimensional lattice.

The programs for A038993, the canonical program `A038993.P17198785173542543802` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038993 has offset 1).

The definition of A038993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038993.P17198785173542543802

`∑{d}[n+1, #*A038992(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038993

/-- `∑{d}[n+1, #*A038992(#)]` -/
def P17198785173542543802.Spec : Prop :=
  ∀ n, P17198785173542543802.a n = A038993 (n + 1)

theorem P17198785173542543802.correct : P17198785173542543802.Spec := by
  intro n
  simp only [A038993, Nat.add_sub_cancel]

end A038993

/-! ## A038993.P2110825794061252896

`∑{d}[n+1, A038991(#)*A280022((n+1)/#)]`
-/

namespace A038993.P2110825794061252896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038991 d * A280022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038993.P2110825794061252896

namespace A038993

/-- `∑{d}[n+1, A038991(#)*A280022((n+1)/#)]` -/
def P2110825794061252896.Spec : Prop :=
  ∀ n, P2110825794061252896.a n = A038993 (n + 1)

end A038993

/-! ## A038993.P3888582012585553659

`A160870(A046691(n+3)+10)`
-/

namespace A038993.P3888582012585553659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A046691 (n + 3) + 10).toNat

end

end A038993.P3888582012585553659

namespace A038993

/-- `A160870(A046691(n+3)+10)` -/
def P3888582012585553659.Spec : Prop :=
  ∀ n, P3888582012585553659.a n = A038993 (n + 1)

end A038993

/-! ## A038993.P13240124797429082579

`A128119(A052905(n+3))`
-/

namespace A038993.P13240124797429082579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A052905 (n + 3)).toNat

end

end A038993.P13240124797429082579

namespace A038993

/-- `A128119(A052905(n+3))` -/
def P13240124797429082579.Spec : Prop :=
  ∀ n, P13240124797429082579.a n = A038993 (n + 1)

end A038993

/-! ## A038993.P10449356153460596379

`A128119(A000124(n+6)-6)`
-/

namespace A038993.P10449356153460596379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000124 (n + 6) - 6).toNat

end

end A038993.P10449356153460596379

namespace A038993

/-- `A128119(A000124(n+6)-6)` -/
def P10449356153460596379.Spec : Prop :=
  ∀ n, P10449356153460596379.a n = A038993 (n + 1)

end A038993

/-! ## A038993.P3611678027222208310

`A128119(eq[5, A025581(n)]+1)`
-/

namespace A038993.P3611678027222208310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038993.P3611678027222208310

namespace A038993

/-- `A128119(eq[5, A025581(n)]+1)` -/
def P3611678027222208310.Spec : Prop :=
  ∀ n, P3611678027222208310.a n = A038993 (n + 1)

end A038993

/-! ## A038993.P2185406293575512782

`A128119(A014105(n+9)-A005449(n+10))`
-/

namespace A038993.P2185406293575512782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A014105 (n + 9) - A005449 (n + 10)).toNat

end

end A038993.P2185406293575512782

namespace A038993

/-- `A128119(A014105(n+9)-A005449(n+10))` -/
def P2185406293575512782.Spec : Prop :=
  ∀ n, P2185406293575512782.a n = A038993 (n + 1)

end A038993

/-!
# A038994: Number of sublattices of index n in generic 7-dimensional lattice.

The programs for A038994, the canonical program `A038994.P9699052350017523539` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038994 has offset 1).

The definition of A038994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038994.P9699052350017523539

`∑{d}[n+1, #*A038993(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038994

/-- `∑{d}[n+1, #*A038993(#)]` -/
def P9699052350017523539.Spec : Prop :=
  ∀ n, P9699052350017523539.a n = A038994 (n + 1)

theorem P9699052350017523539.correct : P9699052350017523539.Spec := by
  intro n
  simp only [A038994, Nat.add_sub_cancel]

end A038994

/-! ## A038994.P14594087194865160429

`A160870(eq[7, A002260(n+1)]+1)`
-/

namespace A038994.P14594087194865160429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038994.P14594087194865160429

namespace A038994

/-- `A160870(eq[7, A002260(n+1)]+1)` -/
def P14594087194865160429.Spec : Prop :=
  ∀ n, P14594087194865160429.a n = A038994 (n + 1)

end A038994

/-! ## A038994.P16565344752182647850

`A128119(A055999(n+4))`
-/

namespace A038994.P16565344752182647850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A055999 (n + 4)).toNat

end

end A038994.P16565344752182647850

namespace A038994

/-- `A128119(A055999(n+4))` -/
def P16565344752182647850.Spec : Prop :=
  ∀ n, P16565344752182647850.a n = A038994 (n + 1)

end A038994

/-! ## A038994.P9762505716715932471

`A128119(A000096(n+6)-5)`
-/

namespace A038994.P9762505716715932471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000096 (n + 6) - 5).toNat

end

end A038994.P9762505716715932471

namespace A038994

/-- `A128119(A000096(n+6)-5)` -/
def P9762505716715932471.Spec : Prop :=
  ∀ n, P9762505716715932471.a n = A038994 (n + 1)

end A038994

/-! ## A038994.P11982386678499079151

`A128119(A000124(n+7)-7)`
-/

namespace A038994.P11982386678499079151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000124 (n + 7) - 7).toNat

end

end A038994.P11982386678499079151

namespace A038994

/-- `A128119(A000124(n+7)-7)` -/
def P11982386678499079151.Spec : Prop :=
  ∀ n, P11982386678499079151.a n = A038994 (n + 1)

end A038994

/-!
# A038995: Number of sublattices of index n in generic 8-dimensional lattice.

The programs for A038995, the canonical program `A038995.P4021492533092847162` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038995 has offset 1).

The definition of A038995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038995.P4021492533092847162

`∑{d}[n+1, #*A038994(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038995

/-- `∑{d}[n+1, #*A038994(#)]` -/
def P4021492533092847162.Spec : Prop :=
  ∀ n, P4021492533092847162.a n = A038995 (n + 1)

theorem P4021492533092847162.correct : P4021492533092847162.Spec := by
  intro n
  simp only [A038995, Nat.add_sub_cancel]

end A038995

/-! ## A038995.P12356340939284649066

`A160870(A000124(n+7)+7)`
-/

namespace A038995.P12356340939284649066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A000124 (n + 7) + 7).toNat

end

end A038995.P12356340939284649066

namespace A038995

/-- `A160870(A000124(n+7)+7)` -/
def P12356340939284649066.Spec : Prop :=
  ∀ n, P12356340939284649066.a n = A038995 (n + 1)

end A038995

/-! ## A038995.P12561380011083393424

`A160870(A000217(n+7)+8)`
-/

namespace A038995.P12561380011083393424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A000217 (n + 7) + 8).toNat

end

end A038995.P12561380011083393424

namespace A038995

/-- `A160870(A000217(n+7)+8)` -/
def P12561380011083393424.Spec : Prop :=
  ∀ n, P12561380011083393424.a n = A038995 (n + 1)

end A038995

/-! ## A038995.P12217082614690485857

`A128119(A155212(n+4)+1)`
-/

namespace A038995.P12217082614690485857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A155212 (n + 4) + 1).toNat

end

end A038995.P12217082614690485857

namespace A038995

/-- `A128119(A155212(n+4)+1)` -/
def P12217082614690485857.Spec : Prop :=
  ∀ n, P12217082614690485857.a n = A038995 (n + 1)

end A038995

/-! ## A038995.P9222294873486069951

`A128119(A000096(n+7)-6)`
-/

namespace A038995.P9222294873486069951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000096 (n + 7) - 6).toNat

end

end A038995.P9222294873486069951

namespace A038995

/-- `A128119(A000096(n+7)-6)` -/
def P9222294873486069951.Spec : Prop :=
  ∀ n, P9222294873486069951.a n = A038995 (n + 1)

end A038995

/-! ## A038995.P8034303392442019986

`A128119(A000124(n+8)-8)`
-/

namespace A038995.P8034303392442019986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000124 (n + 8) - 8).toNat

end

end A038995.P8034303392442019986

namespace A038995

/-- `A128119(A000124(n+8)-8)` -/
def P8034303392442019986.Spec : Prop :=
  ∀ n, P8034303392442019986.a n = A038995 (n + 1)

end A038995

/-!
# A038996: Number of sublattices of index n in generic 9-dimensional lattice.

The programs for A038996, the canonical program `A038996.P3767443640505695253` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038996 has offset 1).

The definition of A038996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038996.P3767443640505695253

`∑{d}[n+1, #*A038995(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038996

/-- `∑{d}[n+1, #*A038995(#)]` -/
def P3767443640505695253.Spec : Prop :=
  ∀ n, P3767443640505695253.a n = A038996 (n + 1)

theorem P3767443640505695253.correct : P3767443640505695253.Spec := by
  intro n
  simp only [A038996, Nat.add_sub_cancel]

end A038996

/-! ## A038996.P1906702556749923129

`A128119(A155212(n+5))`
-/

namespace A038996.P1906702556749923129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A155212 (n + 5)).toNat

end

end A038996.P1906702556749923129

namespace A038996

/-- `A128119(A155212(n+5))` -/
def P1906702556749923129.Spec : Prop :=
  ∀ n, P1906702556749923129.a n = A038996 (n + 1)

end A038996

/-! ## A038996.P9515737248994012399

`A128119(A055999(n+6)-2)`
-/

namespace A038996.P9515737248994012399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A055999 (n + 6) - 2).toNat

end

end A038996.P9515737248994012399

namespace A038996

/-- `A128119(A055999(n+6)-2)` -/
def P9515737248994012399.Spec : Prop :=
  ∀ n, P9515737248994012399.a n = A038996 (n + 1)

end A038996

/-! ## A038996.P16942679465150070748

`A128119(A000217(n+9)-8)`
-/

namespace A038996.P16942679465150070748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000217 (n + 9) - 8).toNat

end

end A038996.P16942679465150070748

namespace A038996

/-- `A128119(A000217(n+9)-8)` -/
def P16942679465150070748.Spec : Prop :=
  ∀ n, P16942679465150070748.a n = A038996 (n + 1)

end A038996

/-! ## A038996.P15608753158908353237

`A128119(A000124(n+9)-9)`
-/

namespace A038996.P15608753158908353237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000124 (n + 9) - 9).toNat

end

end A038996.P15608753158908353237

namespace A038996

/-- `A128119(A000124(n+9)-9)` -/
def P15608753158908353237.Spec : Prop :=
  ∀ n, P15608753158908353237.a n = A038996 (n + 1)

end A038996

/-! ## A038996.P3771678591690666386

`A128119(A005408(n)+A000217(n+7)+8)`
-/

namespace A038996.P3771678591690666386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A005408 n + (A000217 (n + 7) + 8)).toNat

end

end A038996.P3771678591690666386

namespace A038996

/-- `A128119(A005408(n)+A000217(n+7)+8)` -/
def P3771678591690666386.Spec : Prop :=
  ∀ n, P3771678591690666386.a n = A038996 (n + 1)

end A038996

/-!
# A038997: Number of sublattices of index n in generic 10-dimensional lattice.

The programs for A038997, the canonical program `A038997.P11352540964168427061` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038997 has offset 1).

The definition of A038997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038997.P11352540964168427061

`∑{d}[n+1, #*A038996(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038997

/-- `∑{d}[n+1, #*A038996(#)]` -/
def P11352540964168427061.Spec : Prop :=
  ∀ n, P11352540964168427061.a n = A038997 (n + 1)

theorem P11352540964168427061.correct : P11352540964168427061.Spec := by
  intro n
  simp only [A038997, Nat.add_sub_cancel]

end A038997

/-! ## A038997.P16632357160591881433

`A160870(A000124(n+9)+9)`
-/

namespace A038997.P16632357160591881433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A000124 (n + 9) + 9).toNat

end

end A038997.P16632357160591881433

namespace A038997

/-- `A160870(A000124(n+9)+9)` -/
def P16632357160591881433.Spec : Prop :=
  ∀ n, P16632357160591881433.a n = A038997 (n + 1)

end A038997

/-! ## A038997.P4095027979330636494

`A160870(A000217(n+9)+10)`
-/

namespace A038997.P4095027979330636494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A000217 (n + 9) + 10).toNat

end

end A038997.P4095027979330636494

namespace A038997

/-- `A160870(A000217(n+9)+10)` -/
def P4095027979330636494.Spec : Prop :=
  ∀ n, P4095027979330636494.a n = A038997 (n + 1)

end A038997

/-! ## A038997.P371516736518403710

`A128119(A000124(n+10)-10)`
-/

namespace A038997.P371516736518403710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000124 (n + 10) - 10).toNat

end

end A038997.P371516736518403710

namespace A038997

/-- `A128119(A000124(n+10)-10)` -/
def P371516736518403710.Spec : Prop :=
  ∀ n, P371516736518403710.a n = A038997 (n + 1)

end A038997

/-! ## A038997.P12673404798648193487

`A128119(A167614(n+9)-12)`
-/

namespace A038997.P12673404798648193487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A167614 (n + 9) - 12).toNat

end

end A038997.P12673404798648193487

namespace A038997

/-- `A128119(A167614(n+9)-12)` -/
def P12673404798648193487.Spec : Prop :=
  ∀ n, P12673404798648193487.a n = A038997 (n + 1)

end A038997

/-!
# A038998: Sublattices of index n in generic 11-dimensional lattice.

The programs for A038998, the canonical program `A038998.P13847443061910831702` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038998 has offset 1).

The definition of A038998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038998.P13847443061910831702

`∑{d}[n+1, #*A038997(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A038998

/-- `∑{d}[n+1, #*A038997(#)]` -/
def P13847443061910831702.Spec : Prop :=
  ∀ n, P13847443061910831702.a n = A038998 (n + 1)

theorem P13847443061910831702.correct : P13847443061910831702.Spec := by
  intro n
  simp only [A038998, Nat.add_sub_cancel]

end A038998

/-! ## A038998.P14345277151071196461

`A160870(eq[12, A131818(n+1)])`
-/

namespace A038998.P14345277151071196461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038998.P14345277151071196461

namespace A038998

/-- `A160870(eq[12, A131818(n+1)])` -/
def P14345277151071196461.Spec : Prop :=
  ∀ n, P14345277151071196461.a n = A038998 (n + 1)

end A038998

/-! ## A038998.P14600481752517187652

`A128119(eq[10, A193592(n)])`
-/

namespace A038998.P14600481752517187652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038998.P14600481752517187652

namespace A038998

/-- `A128119(eq[10, A193592(n)])` -/
def P14600481752517187652.Spec : Prop :=
  ∀ n, P14600481752517187652.a n = A038998 (n + 1)

end A038998

/-! ## A038998.P9581871050422827171

`A128119(A000124(n+11)-11)`
-/

namespace A038998.P9581871050422827171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A000124 (n + 11) - 11).toNat

end

end A038998.P9581871050422827171

namespace A038998

/-- `A128119(A000124(n+11)-11)` -/
def P9581871050422827171.Spec : Prop :=
  ∀ n, P9581871050422827171.a n = A038998 (n + 1)

end A038998

/-! ## A038998.P2194528253702027718

`A128119(A133263(n+11)-12)`
-/

namespace A038998.P2194528253702027718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A133263 (n + 11) - 12).toNat

end

end A038998.P2194528253702027718

namespace A038998

/-- `A128119(A133263(n+11)-12)` -/
def P2194528253702027718.Spec : Prop :=
  ∀ n, P2194528253702027718.a n = A038998 (n + 1)

end A038998

/-! ## A038998.P16447131958741944025

`A128119(eq[18, A185782(n+1)])`
-/

namespace A038998.P16447131958741944025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038998.P16447131958741944025

namespace A038998

/-- `A128119(eq[18, A185782(n+1)])` -/
def P16447131958741944025.Spec : Prop :=
  ∀ n, P16447131958741944025.a n = A038998 (n + 1)

end A038998

/-!
# A038999: Sublattices of index n in generic 12-dimensional lattice.

The programs for A038999, the canonical program `A038999.P5888438867194418494` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038999 has offset 1).

The definition of A038999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038999.P5888438867194418494

`∑{d}[n+1, #*A038998(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A038999

/-- `∑{d}[n+1, #*A038998(#)]` -/
def P5888438867194418494.Spec : Prop :=
  ∀ n, P5888438867194418494.a n = A038999 (n + 1)

theorem P5888438867194418494.correct : P5888438867194418494.Spec := by
  intro n
  simp only [A038999, Nat.add_sub_cancel]

end A038999

/-! ## A038999.P1338059306435883532

`A160870(A000124(n+11)+11)`
-/

namespace A038999.P1338059306435883532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A000124 (n + 11) + 11).toNat

end

end A038999.P1338059306435883532

namespace A038999

/-- `A160870(A000124(n+11)+11)` -/
def P1338059306435883532.Spec : Prop :=
  ∀ n, P1338059306435883532.a n = A038999 (n + 1)

end A038999

/-! ## A038999.P1467474445231191310

`A160870(A000217(n+11)+12)`
-/

namespace A038999.P1467474445231191310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A000217 (n + 11) + 12).toNat

end

end A038999.P1467474445231191310

namespace A038999

/-- `A160870(A000217(n+11)+12)` -/
def P1467474445231191310.Spec : Prop :=
  ∀ n, P1467474445231191310.a n = A038999 (n + 1)

end A038999

/-! ## A038999.P4876518386189986549

`A160870(eq[13, A131818(n+1)])`
-/

namespace A038999.P4876518386189986549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038999.P4876518386189986549

namespace A038999

/-- `A160870(eq[13, A131818(n+1)])` -/
def P4876518386189986549.Spec : Prop :=
  ∀ n, P4876518386189986549.a n = A038999 (n + 1)

end A038999

/-! ## A038999.P12529947907797398333

`A128119(eq[11, A193592(n)])`
-/

namespace A038999.P12529947907797398333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038999.P12529947907797398333

namespace A038999

/-- `A128119(eq[11, A193592(n)])` -/
def P12529947907797398333.Spec : Prop :=
  ∀ n, P12529947907797398333.a n = A038999 (n + 1)

end A038999

