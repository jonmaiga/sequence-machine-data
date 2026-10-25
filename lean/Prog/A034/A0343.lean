import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A034300: a(n) = n-th quintic factorial number divided by 3.

The programs for A034300, there is no canonical definition to state claims against.
-/

/-! ## A034300.P3583825687439193094

`∏[5*n+3]/3`
-/

namespace A034300.P3583825687439193094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A034300.P3583825687439193094

/-! ## A034300.P16317174710130329295

`∏[a(n-1)+5]` with `a(0)=1, a(1)=8`
-/

namespace A034300.P16317174710130329295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P16317174710130329295

/-! ## A034300.P17573989333941371152

`(5*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A034300.P17573989333941371152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n + 3) * a (n - 1)

end

end A034300.P17573989333941371152

/-! ## A034300.P11690690302575556530

`∏[(5*n+3)^ceil(sin(n)²)]`
-/

namespace A034300.P11690690302575556530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P11690690302575556530

/-! ## A034300.P8505903499329362913

`∏[5*n+3-floor(acot(n)²)]`
-/

namespace A034300.P8505903499329362913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P8505903499329362913

/-! ## A034300.P10249249094466352577

`∏[(n+3)%(3*n+2)+4*n]`
-/

namespace A034300.P10249249094466352577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % (3 * n + 2) + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P10249249094466352577

/-! ## A034300.P2371212854175612635

`∏[record[A185452(n+2)]]`
-/

namespace A034300.P2371212854175612635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P2371212854175612635

/-! ## A034300.P5606197040651355288

`a(n-1)*A016885(n)` with `a(0)=1`
-/

namespace A034300.P5606197040651355288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016885 n

end

end A034300.P5606197040651355288

/-! ## A034300.P14842507996712065511

`∏[record[A166519(n+1)]+n]`
-/

namespace A034300.P14842507996712065511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P14842507996712065511

/-! ## A034300.P13328242357710029910

`∏[record[A065259(n+2)]+n]`
-/

namespace A034300.P13328242357710029910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065259 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034300.P13328242357710029910

/-!
# A034301: a(n) = n-th quintic factorial number divided by 4.

The programs for A034301, there is no canonical definition to state claims against.
-/

/-! ## A034301.P1770496338464081421

`A008546(n+1)/4`
-/

namespace A034301.P1770496338464081421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008546 (n + 1) : ℚ) / 4

end

end A034301.P1770496338464081421

/-! ## A034301.P13307126812309003426

`∏[5*n+4]/4`
-/

namespace A034301.P13307126812309003426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A034301.P13307126812309003426

/-! ## A034301.P17795152802562201179

`∏[a(n-1)+5]` with `a(0)=1, a(1)=9`
-/

namespace A034301.P17795152802562201179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034301.P17795152802562201179

/-! ## A034301.P2273512350034700779

`(5*n+4)*a(n-1)` with `a(0)=1`
-/

namespace A034301.P2273512350034700779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n + 4) * a (n - 1)

end

end A034301.P2273512350034700779

/-! ## A034301.P12071147624503764227

`(∑[n]-∑[n-5])*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A034301.P12071147624503764227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j) * a (n - 1) - a (n - 1)

end

end A034301.P12071147624503764227

/-! ## A034301.P13079784744999418457

`∏[record[A166520(n+1)]]`
-/

namespace A034301.P13079784744999418457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034301.P13079784744999418457

/-! ## A034301.P18424277695765034849

`a(n-1)*A016897(n)` with `a(0)=1`
-/

namespace A034301.P18424277695765034849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016897 n

end

end A034301.P18424277695765034849

/-! ## A034301.P6743220597563380417

`∏[record[A168204(n+1)]+n]`
-/

namespace A034301.P6743220597563380417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034301.P6743220597563380417

/-! ## A034301.P4718653173213626716

`∏[record[A306546(n+2)]-n]`
-/

namespace A034301.P4718653173213626716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306546 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034301.P4718653173213626716

/-! ## A034301.P7550284766356306129

`∏[A100832(2*n+1)+n]`
-/

namespace A034301.P7550284766356306129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034301.P7550284766356306129

/-!
# A034302: Zeroless primes that remain prime if any digit is deleted.

The programs for A034302, there is no canonical definition to state claims against.
-/

/-! ## A034302.P15951730027514681828

`∩[A038618(n+1), A051362(n+1)]`
-/

namespace A034302.P15951730027514681828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034302.P15951730027514681828

/-! ## A034302.P16946579076917676582

`∩[A051362(n+1), A195943(n+1)]`
-/

namespace A034302.P16946579076917676582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034302.P16946579076917676582

/-! ## A034302.P4414635598794902580

`record[A004719(A051362(n+1))]`
-/

namespace A034302.P4414635598794902580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A051362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034302.P4414635598794902580

/-! ## A034302.P17659686204318049555

`filter[A051362(n+1), A168046(#)]`
-/

namespace A034302.P17659686204318049555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A034302.P17659686204318049555

/-! ## A034302.P7960020599160087894

`filter[A051362(n+1), A209929(#)]`
-/

namespace A034302.P7960020599160087894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A034302.P7960020599160087894

/-!
# A034303: Zeroless primes that become nonprime if any digit is deleted.

The programs for A034303, there is no canonical definition to state claims against.
-/

/-! ## A034303.P12332434829162211439

`∩[A034894(n), A178641(n+1)]`
-/

namespace A034303.P12332434829162211439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034303.P12332434829162211439

/-! ## A034303.P6329249425064427035

`p?[A034894(A118759(n)+7)]`
-/

namespace A034303.P6329249425064427035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 (A118759 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034303.P6329249425064427035

/-!
# A034304: Nonprime; becomes prime if any digit is deleted (zeros not allowed in the number).

The programs for A034304, there is no canonical definition to state claims against.
-/

/-! ## A034304.P17537596970992255202

`record[A121609(n+1)-A036427(n)]`
-/

namespace A034304.P17537596970992255202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1) - A036427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034304.P17537596970992255202

/-! ## A034304.P8948375013762031769

`record[A061371(n+1)%A308766(n+1)]`
-/

namespace A034304.P8948375013762031769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061371 (n + 1)) (A308766 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034304.P8948375013762031769

/-! ## A034304.P3271322448486652973

`A066737(n+1)-A016396(A253909(n))`
-/

namespace A034304.P3271322448486652973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1) - A016396 (A253909 n).toNat

end

end A034304.P3271322448486652973

/-! ## A034304.P1004785829300163319

`A121609(n+1)-A010051(A137390(n+1))`
-/

namespace A034304.P1004785829300163319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1) - A010051 (A137390 (n + 1)).toNat

end

end A034304.P1004785829300163319

/-!
# A034305: Zeroless nonprimes that remain nonprime if any digit is deleted.

The programs for A034305, there is no canonical definition to state claims against.
-/

/-! ## A034305.P14224801210678656560

`eq[10, A136400(n)-(A211396(n)+1)]`
-/

namespace A034305.P14224801210678656560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n - (A211396 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034305.P14224801210678656560

/-! ## A034305.P16258650710771245574

`∩[A092632(n+1), A202268(n+1)]`
-/

namespace A034305.P16258650710771245574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034305.P16258650710771245574

/-! ## A034305.P4504479366759001554

`∩[A062115(n+1), A236403(n+1)]`
-/

namespace A034305.P4504479366759001554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034305.P4504479366759001554

/-! ## A034305.P9407822410206763769

`∩[A213310(n+1), A359983(n+1)]`
-/

namespace A034305.P9407822410206763769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034305.P9407822410206763769

/-! ## A034305.P13427541127068731666

`∩[A092632(n+1), A358849(n+1)]`
-/

namespace A034305.P13427541127068731666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034305.P13427541127068731666

/-!
# A034309: Decimal part of a(n)^(1/3) starts with reversal of its integer part: first term of runs.

The programs for A034309, there is no canonical definition to state claims against.
-/

/-! ## A034309.P11468603710301164146

`ceil(sqrt(A034312(n+1)))`
-/

namespace A034309.P11468603710301164146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A034312 (n + 1) : ℝ)⌉

end

end A034309.P11468603710301164146

/-! ## A034309.P5785790939315964232

`ceil(root(A034315(n+1), 3))`
-/

namespace A034309.P5785790939315964232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034315 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A034309.P5785790939315964232

/-! ## A034309.P2761848082197691481

`ceil(A034315(n+1)/A034312(n+1))`
-/

namespace A034309.P2761848082197691481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034315 (n + 1) : ℚ) / (A034312 (n + 1) : ℚ)⌉

end

end A034309.P2761848082197691481

/-! ## A034309.P14666535510996489014

`ceil(A034316(n+1)/A034313(n+1))`
-/

namespace A034309.P14666535510996489014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034316 (n + 1) : ℚ) / (A034313 (n + 1) : ℚ)⌉

end

end A034309.P14666535510996489014

/-! ## A034309.P8344835954424629663

`ceil(A034314(n+1)/sqrt(A034316(n+1)))`
-/

namespace A034309.P8344835954424629663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034314 (n + 1) : ℝ) / Real.sqrt (A034316 (n + 1) : ℝ)⌉

end

end A034309.P8344835954424629663

/-!
# A034310: Decimal part of a(n)^(1/4) starts with reversal of its integer part: first term of runs.

The programs for A034310, there is no canonical definition to state claims against.
-/

/-! ## A034310.P11656954764539858180

`ceil(root(A034312(n), 3)²)`
-/

namespace A034310.P11656954764539858180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A034312 n : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌉

end

end A034310.P11656954764539858180

/-! ## A034310.P4451103237899209746

`floor(A010052(n²)+root(A034312(n), 3)²)`
-/

namespace A034310.P4451103237899209746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010052 (n ^ 2) : ℝ) + ((A034312 n : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌋

end

end A034310.P4451103237899209746

/-! ## A034310.P10819297728002053923

`ceil(A034313(n)/sqrt(A034312(n)))`
-/

namespace A034310.P10819297728002053923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034313 n : ℝ) / Real.sqrt (A034312 n : ℝ)⌉

end

end A034310.P10819297728002053923

/-! ## A034310.P10490362935000708579

`ceil(sqrt(A034314(n)))`
-/

namespace A034310.P10490362935000708579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A034314 n : ℝ)⌉

end

end A034310.P10490362935000708579

/-! ## A034310.P11990303107418993287

`ceil(A034312(n)²/A034314(n))`
-/

namespace A034310.P11990303107418993287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034312 n ^ 2 : ℚ) / (A034314 n : ℚ)⌉

end

end A034310.P11990303107418993287

/-!
# A034311: Decimal part of a(n)^(1/5) starts with reversal of its integer part: first term of runs.

The programs for A034311, there is no canonical definition to state claims against.
-/

/-! ## A034311.P14649276914729416550

`ceil(A034312(n)²/A034313(n))`
-/

namespace A034311.P14649276914729416550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034312 n ^ 2 : ℚ) / (A034313 n : ℚ)⌉

end

end A034311.P14649276914729416550

/-! ## A034311.P4295026260748993062

`ceil(A034313(n)²/A034315(n))`
-/

namespace A034311.P4295026260748993062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034313 n ^ 2 : ℚ) / (A034315 n : ℚ)⌉

end

end A034311.P4295026260748993062

/-! ## A034311.P12529590303844469817

`ceil(A034315(n)/sqrt(A034314(n)))`
-/

namespace A034311.P12529590303844469817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034315 n : ℝ) / Real.sqrt (A034314 n : ℝ)⌉

end

end A034311.P12529590303844469817

/-! ## A034311.P6291648669201779455

`ceil(sqrt(A034316(n)))`
-/

namespace A034311.P6291648669201779455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A034316 n : ℝ)⌉

end

end A034311.P6291648669201779455

/-! ## A034311.P6019861727644068950

`floor(A119335(n)+sqrt(A034316(n)))`
-/

namespace A034311.P6019861727644068950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A119335 n : ℝ) + Real.sqrt (A034316 n : ℝ)⌋

end

end A034311.P6019861727644068950

/-!
# A034312: Decimal part of a(n)^(1/6) starts with reversal of its integer part: first term of runs.

The programs for A034312, there is no canonical definition to state claims against.
-/

/-! ## A034312.P911265645635397201

`ceil(A034316(n)/sqrt(A034314(n)))`
-/

namespace A034312.P911265645635397201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034316 n : ℝ) / Real.sqrt (A034314 n : ℝ)⌉

end

end A034312.P911265645635397201

/-! ## A034312.P15828709370529559253

`ceil(A034317(n)/sqrt(A034316(n)))`
-/

namespace A034312.P15828709370529559253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034317 n : ℝ) / Real.sqrt (A034316 n : ℝ)⌉

end

end A034312.P15828709370529559253

/-!
# A034322: McKay-Thompson series of class 71A for Monster.

The programs for A034322, there is no canonical definition to state claims against.
-/

/-! ## A034322.P4798101212096776213

`A048766(A005299(n+1))`
-/

namespace A034322.P4798101212096776213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005299 (n + 1)).toNat

end

end A034322.P4798101212096776213

/-! ## A034322.P10267412211903577138

`A048766(A002865(n)*A119620(n))`
-/

namespace A034322.P10267412211903577138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002865 n * A119620 n).toNat

end

end A034322.P10267412211903577138

/-! ## A034322.P14325125582313953981

`A048766(A003106(n)*A300787(n))`
-/

namespace A034322.P14325125582313953981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A003106 n * A300787 n).toNat

end

end A034322.P14325125582313953981

/-! ## A034322.P5925136293858384572

`A048766(A003114(n)*A096403(n+1))`
-/

namespace A034322.P5925136293858384572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A003114 n * A096403 (n + 1)).toNat

end

end A034322.P5925136293858384572

/-! ## A034322.P1189935073091455704

`A319951(A266781(n)-A326446(n))`
-/

namespace A034322.P1189935073091455704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A266781 n - A326446 n).toNat

end

end A034322.P1189935073091455704

/-!
# A034323: a(n) = n-th quintic factorial number divided by 2.

The programs for A034323, the canonical program `A034323.P3920938684159185293` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034323 has offset 1).

The definition of A034323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034323.P3920938684159185293

`(5*(n+1)-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034323

/-- `(5*(n+1)-3)*a(n-1)` -/
def P3920938684159185293.Spec : Prop :=
  ∀ n, P3920938684159185293.a n = A034323 (n + 1)

theorem P3920938684159185293.correct : P3920938684159185293.Spec := by
  intro n
  simp only [A034323, Nat.add_sub_cancel]

end A034323

/-! ## A034323.P10001557680341841019

`A047055(n+1)/2`
-/

namespace A034323.P10001557680341841019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047055 (n + 1) : ℚ) / 2

end

end A034323.P10001557680341841019

namespace A034323

/-- `A047055(n+1)/2` -/
def P10001557680341841019.Spec : Prop :=
  ∀ n, P10001557680341841019.a n = (A034323 (n + 1) : ℚ)

end A034323

/-! ## A034323.P10390704104316796183

`∏[5*n+2]/2`
-/

namespace A034323.P10390704104316796183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A034323.P10390704104316796183

namespace A034323

/-- `∏[5*n+2]/2` -/
def P10390704104316796183.Spec : Prop :=
  ∀ n, P10390704104316796183.a n = (A034323 (n + 1) : ℚ)

end A034323

/-! ## A034323.P1812247657517442101

`∏[a(n-1)+5]` with `a(0)=1, a(1)=7`
-/

namespace A034323.P1812247657517442101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P1812247657517442101

namespace A034323

/-- `∏[a(n-1)+5]` -/
def P1812247657517442101.Spec : Prop :=
  ∀ n, (P1812247657517442101.a n : ℤ) = A034323 (n + 1)

end A034323

/-! ## A034323.P11445225032579478120

`∏[ceil(cosh(sin(n)))+5*n]`
-/

namespace A034323.P11445225032579478120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P11445225032579478120

namespace A034323

/-- `∏[ceil(cosh(sin(n)))+5*n]` -/
def P11445225032579478120.Spec : Prop :=
  ∀ n, P11445225032579478120.a n = A034323 (n + 1)

end A034323

/-! ## A034323.P10695210069561003348

`∏[record[xor(3, n+1)]+n-1]`
-/

namespace A034323.P10695210069561003348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P10695210069561003348

namespace A034323

/-- `∏[record[xor(3, n+1)]+n-1]` -/
def P10695210069561003348.Spec : Prop :=
  ∀ n, P10695210069561003348.a n = A034323 (n + 1)

end A034323

/-! ## A034323.P4021450369149484935

`∏[lt[A071234(n), 4]]`
-/

namespace A034323.P4021450369149484935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071234 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P4021450369149484935

namespace A034323

/-- `∏[lt[A071234(n), 4]]` -/
def P4021450369149484935.Spec : Prop :=
  ∀ n, (P4021450369149484935.a n : ℤ) = A034323 (n + 1)

end A034323

/-! ## A034323.P13523292280939322181

`∏[A256680(Δ[n²])]`
-/

namespace A034323.P13523292280939322181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P13523292280939322181

namespace A034323

/-- `∏[A256680(Δ[n²])]` -/
def P13523292280939322181.Spec : Prop :=
  ∀ n, P13523292280939322181.a n = A034323 (n + 1)

end A034323

/-! ## A034323.P10640463035337471242

`∏[record[A138996(n+1)]]`
-/

namespace A034323.P10640463035337471242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138996 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P10640463035337471242

namespace A034323

/-- `∏[record[A138996(n+1)]]` -/
def P10640463035337471242.Spec : Prop :=
  ∀ n, P10640463035337471242.a n = A034323 (n + 1)

end A034323

/-! ## A034323.P12618229651390921210

`∏[A133653(n+1)+n]`
-/

namespace A034323.P12618229651390921210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034323.P12618229651390921210

namespace A034323

/-- `∏[A133653(n+1)+n]` -/
def P12618229651390921210.Spec : Prop :=
  ∀ n, P12618229651390921210.a n = A034323 (n + 1)

end A034323

/-!
# A034324: a(n) = (n-1)*(n-2)*(n-3) + n.

The programs for A034324, the canonical program `A034324.P6934166812929750048` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034324 has offset 1).

The definition of A034324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)+n+1` (program `A034324.P6934166812929750048`, by `A034324.P6934166812929750048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034324.P18355330026306702125

`(n-1)^3+2`
-/

namespace A034324.P18355330026306702125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3 + 2

end

end A034324.P18355330026306702125

namespace A034324

/-- `(n-1)^3+2` -/
def P18355330026306702125.Spec : Prop :=
  ∀ n, P18355330026306702125.a n = A034324 (n + 1)

theorem P18355330026306702125.correct : P18355330026306702125.Spec := by
  intro n
  simp only [A034324, Nat.add_sub_cancel, A034324.P18355330026306702125.a, A034324.P6934166812929750048.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A034324

/-! ## A034324.P6934166812929750048

`n*(n-1)*(n-2)+n+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034324

/-- `n*(n-1)*(n-2)+n+1` -/
def P6934166812929750048.Spec : Prop :=
  ∀ n, P6934166812929750048.a n = A034324 (n + 1)

theorem P6934166812929750048.correct : P6934166812929750048.Spec := by
  intro n
  simp only [A034324, Nat.add_sub_cancel]

end A034324

/-! ## A034324.P2758454315281352749

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A034324.P2758454315281352749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034324.P2758454315281352749

namespace A034324

/-- `∑[∑[a(n-1)+6]]` -/
def P2758454315281352749.Spec : Prop :=
  ∀ n, (P2758454315281352749.a n : ℤ) = A034324 (n + 1)

end A034324

/-! ## A034324.P2738922401808791645

`∑[6*C(abs(1-n), 2)+1]`
-/

namespace A034324.P2738922401808791645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose |1 - (n : ℤ)|.toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034324.P2738922401808791645

namespace A034324

/-- `∑[6*C(abs(1-n), 2)+1]` -/
def P2738922401808791645.Spec : Prop :=
  ∀ n, (P2738922401808791645.a n : ℤ) = A034324 (n + 1)

end A034324

/-! ## A034324.P933101646180343060

`∑[∑[ogf((1-2x+x^2+6x^3)/(1-2x+x^2))]]`
-/

namespace A034324.P933101646180343060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034324.P933101646180343060

namespace A034324

/-- `∑[∑[ogf((1-2x+x^2+6x^3)/(1-2x+x^2))]]` -/
def P933101646180343060.Spec : Prop :=
  ∀ n, P933101646180343060.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P17257276442030682761

`∑[Δ[A007531(abs(1-n))]+1]`
-/

namespace A034324.P17257276442030682761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034324.P17257276442030682761

namespace A034324

/-- `∑[Δ[A007531(abs(1-n))]+1]` -/
def P17257276442030682761.Spec : Prop :=
  ∀ n, P17257276442030682761.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P13134735040135175304

`abs(A007531(n)+Δ[n²]-n)`
-/

namespace A034324.P13134735040135175304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007531 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)|

end

end A034324.P13134735040135175304

namespace A034324

/-- `abs(A007531(n)+Δ[n²]-n)` -/
def P13134735040135175304.Spec : Prop :=
  ∀ n, P13134735040135175304.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P5341817089383421538

`abs(A016777(n)+(n-3)*n²)`
-/

namespace A034324.P5341817089383421538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016777 n + ((n : ℤ) - 3) * (n ^ 2 : ℤ)|

end

end A034324.P5341817089383421538

namespace A034324

/-- `abs(A016777(n)+(n-3)*n²)` -/
def P5341817089383421538.Spec : Prop :=
  ∀ n, P5341817089383421538.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P10724283997872007458

`(A033431(n+1)-12*n²)/2`
-/

namespace A034324.P10724283997872007458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033431 (n + 1) - (12 * n ^ 2 : ℤ) : ℚ) / 2

end

end A034324.P10724283997872007458

namespace A034324

/-- `(A033431(n+1)-12*n²)/2` -/
def P10724283997872007458.Spec : Prop :=
  ∀ n, P10724283997872007458.a n = (A034324 (n + 1) : ℚ)

theorem P10724283997872007458.correct : P10724283997872007458.Spec := by
  intro n
  simp only [A034324, Nat.add_sub_cancel, A034324.P10724283997872007458.a, A034324.P6934166812929750048.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034324

/-! ## A034324.P16769929821465402493

`abs(n*n²-A000567(n)+n+1)`
-/

namespace A034324.P16769929821465402493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n * n ^ 2 : ℤ) - A000567 n + (n + 1 : ℤ)|

end

end A034324.P16769929821465402493

namespace A034324

/-- `abs(n*n²-A000567(n)+n+1)` -/
def P16769929821465402493.Spec : Prop :=
  ∀ n, P16769929821465402493.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P14374344381598503679

`∑[A004538(A289207(n))+2]`
-/

namespace A034324.P14374344381598503679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (A289207 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034324.P14374344381598503679

namespace A034324

/-- `∑[A004538(A289207(n))+2]` -/
def P14374344381598503679.Spec : Prop :=
  ∀ n, P14374344381598503679.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P4634647148560113331

`abs(Δ[6*A000332(n)]+n+1)`
-/

namespace A034324.P4634647148560113331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n + 1 : ℤ)|

end

end A034324.P4634647148560113331

namespace A034324

/-- `abs(Δ[6*A000332(n)]+n+1)` -/
def P4634647148560113331.Spec : Prop :=
  ∀ n, P4634647148560113331.a n = A034324 (n + 1)

end A034324

/-! ## A034324.P15954870398912168062

`floor(A052762(n+1)/(n+1)+n+1)`
-/

namespace A034324.P15954870398912168062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋

end

end A034324.P15954870398912168062

namespace A034324

/-- `floor(A052762(n+1)/(n+1)+n+1)` -/
def P15954870398912168062.Spec : Prop :=
  ∀ n, P15954870398912168062.a n = A034324 (n + 1)

end A034324

/-!
# A034325: a(n) is the n-th quintic factorial number divided by 5.

The programs for A034325, the canonical program `A034325.P15130411376653727906` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034325 has offset 1).

The definition of A034325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034325.P15130411376653727906

`5^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034325

/-- `5^n*(n+1)!` -/
def P15130411376653727906.Spec : Prop :=
  ∀ n, (P15130411376653727906.a n : ℤ) = A034325 (n + 1)

theorem P15130411376653727906.correct : P15130411376653727906.Spec := by
  intro n
  simp only [A034325, Nat.add_sub_cancel]

end A034325

/-! ## A034325.P4549501493699676012

`5*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034325.P4549501493699676012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * (n + 1) * a (n - 1)

end

end A034325.P4549501493699676012

namespace A034325

/-- `5*(n+1)*a(n-1)` -/
def P4549501493699676012.Spec : Prop :=
  ∀ n, (P4549501493699676012.a n : ℤ) = A034325 (n + 1)

end A034325

/-! ## A034325.P13161272844119114314

`∏[5*(n+1)]/5`
-/

namespace A034325.P13161272844119114314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5

end

end A034325.P13161272844119114314

namespace A034325

/-- `∏[5*(n+1)]/5` -/
def P13161272844119114314.Spec : Prop :=
  ∀ n, P13161272844119114314.a n = (A034325 (n + 1) : ℚ)

end A034325

/-! ## A034325.P13188270975382571635

`∏[a(n-1)+5]` with `a(0)=1, a(1)=10`
-/

namespace A034325.P13188270975382571635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034325.P13188270975382571635

namespace A034325

/-- `∏[a(n-1)+5]` -/
def P13188270975382571635.Spec : Prop :=
  ∀ n, (P13188270975382571635.a n : ℤ) = A034325 (n + 1)

end A034325

/-! ## A034325.P8606971674849968862

`or(1, 5^n)*∏[n+1]`
-/

namespace A034325.P8606971674849968862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 ^ n) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034325.P8606971674849968862

namespace A034325

/-- `or(1, 5^n)*∏[n+1]` -/
def P8606971674849968862.Spec : Prop :=
  ∀ n, (P8606971674849968862.a n : ℤ) = A034325 (n + 1)

end A034325

/-! ## A034325.P13072810527173115694

`floor((n+1)!/5^-n)`
-/

namespace A034325.P13072810527173115694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (5 : ℚ) ^ (-(n : ℤ) : ℤ)⌋

end

end A034325.P13072810527173115694

namespace A034325

/-- `floor((n+1)!/5^-n)` -/
def P13072810527173115694.Spec : Prop :=
  ∀ n, P13072810527173115694.a n = A034325 (n + 1)

end A034325

/-! ## A034325.P13894163705985799766

`round((n+1)!/5^-n)`
-/

namespace A034325.P13894163705985799766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / (5 : ℚ) ^ (-(n : ℤ) : ℤ))

end

end A034325.P13894163705985799766

namespace A034325

/-- `round((n+1)!/5^-n)` -/
def P13894163705985799766.Spec : Prop :=
  ∀ n, P13894163705985799766.a n = A034325 (n + 1)

end A034325

/-! ## A034325.P4955575671982637467

`5^n*∏[C(n+1, n)]`
-/

namespace A034325.P4955575671982637467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034325.P4955575671982637467

namespace A034325

/-- `5^n*∏[C(n+1, n)]` -/
def P4955575671982637467.Spec : Prop :=
  ∀ n, (P4955575671982637467.a n : ℤ) = A034325 (n + 1)

theorem P4955575671982637467.correct : P4955575671982637467.Spec := by
  intro n
  simp only [A034325, Nat.add_sub_cancel, A034325.P4955575671982637467.f1, A034325.P4955575671982637467.a, A034325.P15130411376653727906.a, SequenceMachineLib.memo_apply]
  try simp

end A034325

/-! ## A034325.P11999018312346173464

`∏[(n+1)*5%(n+2)²]`
-/

namespace A034325.P11999018312346173464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (5 % (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034325.P11999018312346173464

namespace A034325

/-- `∏[(n+1)*5%(n+2)²]` -/
def P11999018312346173464.Spec : Prop :=
  ∀ n, (P11999018312346173464.a n : ℤ) = A034325 (n + 1)

end A034325

/-! ## A034325.P1216003630840948817

`∏[∪[(5^n)², 5*(n+2)]]`
-/

namespace A034325.P1216003630840948817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034325.P1216003630840948817

namespace A034325

/-- `∏[∪[(5^n)², 5*(n+2)]]` -/
def P1216003630840948817.Spec : Prop :=
  ∀ n, (P1216003630840948817.a n : ℤ) = A034325 (n + 1)

end A034325

/-!
# A034326: Hours struck by a clock.

The programs for A034326, the canonical program `A034326.P1071633269599549987` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034326 has offset 1).

The definition of A034326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034326.P1071633269599549987

`n%12+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034326

/-- `n%12+1` -/
def P1071633269599549987.Spec : Prop :=
  ∀ n, (P1071633269599549987.a n : ℤ) = A034326 (n + 1)

theorem P1071633269599549987.correct : P1071633269599549987.Spec := by
  intro n
  simp only [A034326, Nat.add_sub_cancel]

end A034326

/-!
# A034327: Triangle of numbers of connected regular (k X n)-matrix matroids of dimension k.

The programs for A034327, there is no canonical definition to state claims against.
-/

/-! ## A034327.P5623294599331278245

`A048766(A081477(A034364(n+1)²))`
-/

namespace A034327.P5623294599331278245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A081477 (A034364 (n + 1) ^ 2).toNat).toNat

end

end A034327.P5623294599331278245

/-! ## A034327.P9108989227939653702

`A196169(A034368(n+1))`
-/

namespace A034327.P9108989227939653702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A034368 (n + 1)).toNat

end

end A034327.P9108989227939653702

/-! ## A034327.P2830004546734283825

`A307298(A034372(n+1))`
-/

namespace A034327.P2830004546734283825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307298 (A034372 (n + 1)).toNat

end

end A034327.P2830004546734283825

/-! ## A034327.P12541156756041318561

`A190867(2^A198321(n))`
-/

namespace A034327.P12541156756041318561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A198321 n : ℤ))).toNat

end

end A034327.P12541156756041318561

/-! ## A034327.P14807768293060869418

`A172263(A156184(abs(1-n)))`
-/

namespace A034327.P14807768293060869418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A156184 |1 - (n : ℤ)|.toNat).toNat

end

end A034327.P14807768293060869418

/-!
# A034328: Triangle read by rows: T(n,k) = number of loopless, regular k X n-matrix matroids of dimension k (or n-matroids of rank k).

The programs for A034328, there is no canonical definition to state claims against.
-/

/-! ## A034328.P3305158226545932692

`A034253(n+1)-A125005(A034371(n+1))`
-/

namespace A034328.P3305158226545932692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034253 (n + 1) - A125005 (A034371 (n + 1)).toNat

end

end A034328.P3305158226545932692

/-! ## A034328.P16605526918208024759

`A034253(n+1)-A240465(A034253(3*n+4))`
-/

namespace A034328.P16605526918208024759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034253 (n + 1) - A240465 (A034253 (3 * n + 4)).toNat

end

end A034328.P16605526918208024759

/-! ## A034328.P13203335534163756460

`A034253(n+1)-A025469(A306443(n))`
-/

namespace A034328.P13203335534163756460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034253 (n + 1) - A025469 (A306443 n).toNat

end

end A034328.P13203335534163756460

/-! ## A034328.P14445700449605009900

`A034253(n+1)-A185293(A277504(n))`
-/

namespace A034328.P14445700449605009900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034253 (n + 1) - A185293 (A277504 n).toNat

end

end A034328.P14445700449605009900

/-!
# A034329: Number of matroids: column 3 of A034327.

The programs for A034329, there is no canonical definition to state claims against.
-/

/-! ## A034329.P17632934487647894760

`A110654(∑[A182629(n)])`
-/

namespace A034329.P17632934487647894760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034329.P17632934487647894760

/-! ## A034329.P2166982868240999137

`A115384(∑[A182629(n)])`
-/

namespace A034329.P2166982868240999137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034329.P2166982868240999137

/-! ## A034329.P13254923803880708785

`A056847(A291553(n+1))`
-/

namespace A034329.P13254923803880708785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A291553 (n + 1)).toNat

end

end A034329.P13254923803880708785

/-! ## A034329.P14413906693903463483

`abs(A001057(∑[A182629(n)]))`
-/

namespace A034329.P14413906693903463483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A034329.P14413906693903463483

/-! ## A034329.P3526076454483100976

`A004526(∑[A182629(n)]+1)`
-/

namespace A034329.P3526076454483100976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A034329.P3526076454483100976

/-!
# A034330: Number of matroids: column 4 of A034327.

The programs for A034330, there is no canonical definition to state claims against.
-/

/-! ## A034330.P7893238095743005501

`floor(A191756(n)/A295696(n+2))`
-/

namespace A034330.P7893238095743005501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191756 n : ℚ) / (A295696 (n + 2) : ℚ)⌋

end

end A034330.P7893238095743005501

/-! ## A034330.P2997184338199566665

`A335470(n)-A027870(A241467(n+1))`
-/

namespace A034330.P2997184338199566665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335470 n - A027870 (A241467 (n + 1)).toNat

end

end A034330.P2997184338199566665

/-! ## A034330.P17172890143595603164

`A335470(n)-A353852(A034355(n+1))`
-/

namespace A034330.P17172890143595603164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335470 n - A353852 (A034355 (n + 1)).toNat

end

end A034330.P17172890143595603164

/-! ## A034330.P375893061871285975

`∑[floor(A259544(n+1)/11)]`
-/

namespace A034330.P375893061871285975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259544 (n + 1) : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034330.P375893061871285975

/-! ## A034330.P679655682344027637

`∑[round((A320921(n)/(n+2))²)]`
-/

namespace A034330.P679655682344027637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A320921 n : ℚ) / (n + 2 : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034330.P679655682344027637

/-!
# A034331: Number of matroids: column 5 of A034327.

The programs for A034331, there is no canonical definition to state claims against.
-/

/-! ## A034331.P1455779098730255016

`A065718(A075211(n+1)-A114465(n))`
-/

namespace A034331.P1455779098730255016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A075211 (n + 1) - A114465 n).toNat

end

end A034331.P1455779098730255016

/-! ## A034331.P13903549750436350486

`∑[floor(A202592(n)/7)]`
-/

namespace A034331.P13903549750436350486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202592 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034331.P13903549750436350486

/-! ## A034331.P6895621490631863841

`floor(A330529(n+1)/41)`
-/

namespace A034331.P6895621490631863841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330529 (n + 1) : ℚ) / 41⌋

end

end A034331.P6895621490631863841

/-! ## A034331.P17457928734919313794

`A085854(A148784(n))`
-/

namespace A034331.P17457928734919313794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (A148784 n).toNat

end

end A034331.P17457928734919313794

/-! ## A034331.P15502631266682135775

`A210716(A152738(n))`
-/

namespace A034331.P15502631266682135775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A152738 n).toNat

end

end A034331.P15502631266682135775

/-!
# A034332: Number of matroids: column 6 of A034327.

The programs for A034332, there is no canonical definition to state claims against.
-/

/-! ## A034332.P4158461608110789162

`A194640(A005717(n+1)-A026163(n+1))`
-/

namespace A034332.P4158461608110789162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A005717 (n + 1) - A026163 (n + 1)).toNat

end

end A034332.P4158461608110789162

/-! ## A034332.P11673079510959298121

`A194640(A005717(n+1)%A026163(n+1))`
-/

namespace A034332.P11673079510959298121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.tmod (A005717 (n + 1)) (A026163 (n + 1))).toNat

end

end A034332.P11673079510959298121

/-! ## A034332.P4720444114553841341

`∑[A174726(∏[A325859(n)])]`
-/

namespace A034332.P4720444114553841341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034332.P4720444114553841341

/-! ## A034332.P10892897614883504065

`A032917(n+1)%A061395(A139514(n))`
-/

namespace A034332.P10892897614883504065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032917 (n + 1)) (A061395 (A139514 n).toNat)

end

end A034332.P10892897614883504065

/-! ## A034332.P7247799774428743683

`A025460(or(A066016(n+1), A165716(n)))`
-/

namespace A034332.P7247799774428743683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (Int.lor (A066016 (n + 1)) (A165716 n)).toNat

end

end A034332.P7247799774428743683

/-!
# A034333: Number of matroids: column 3 of A034328.

The programs for A034333, there is no canonical definition to state claims against.
-/

/-! ## A034333.P14191521568997354658

`∑[A328592(A115671(n+1))]`
-/

namespace A034333.P14191521568997354658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328592 (A115671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034333.P14191521568997354658

/-! ## A034333.P18276199641880842205

`A034344(n+1)-A308871(n)`
-/

namespace A034333.P18276199641880842205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) - A308871 n

end

end A034333.P18276199641880842205

/-! ## A034333.P9815487530325588213

`∑[A241544(n+1)+A153246(n)]`
-/

namespace A034333.P9815487530325588213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241544 (n + 1) + A153246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034333.P9815487530325588213

/-! ## A034333.P17711047047686719545

`∑[A008631(n)-A319318(n+1)]`
-/

namespace A034333.P17711047047686719545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008631 n - A319318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034333.P17711047047686719545

/-! ## A034333.P12596460849176195780

`∑[A160571(n)-A290086(n+1)]`
-/

namespace A034333.P12596460849176195780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160571 n - A290086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034333.P12596460849176195780

/-!
# A034334: Number of matroids: column 4 of A034328.

The programs for A034334, there is no canonical definition to state claims against.
-/

/-! ## A034334.P17876973985563139153

`A034328(A152950(n+1))%A001349(n)`
-/

namespace A034334.P17876973985563139153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034328 (A152950 (n + 1)).toNat) (A001349 n)

end

end A034334.P17876973985563139153

/-! ## A034334.P244240488404179262

`A378086(A079976(n))`
-/

namespace A034334.P244240488404179262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378086 (A079976 n).toNat

end

end A034334.P244240488404179262

/-! ## A034334.P10330700129587443357

`A363743(A165526(n))`
-/

namespace A034334.P10330700129587443357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363743 (A165526 n).toNat

end

end A034334.P10330700129587443357

/-! ## A034334.P17194112278574632928

`A378086(A320328(n))`
-/

namespace A034334.P17194112278574632928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378086 (A320328 n).toNat

end

end A034334.P17194112278574632928

/-! ## A034334.P17315758223731023230

`∑[A135661(A071721(n))]`
-/

namespace A034334.P17315758223731023230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A071721 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034334.P17315758223731023230

/-!
# A034335: Number of matroids: column 5 of A034328.

The programs for A034335, there is no canonical definition to state claims against.
-/

/-! ## A034335.P17062331611469495076

`∑[∑[A328592(A210540(n))]]`
-/

namespace A034335.P17062331611469495076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328592 (A210540 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034335.P17062331611469495076

/-! ## A034335.P1464383677301388955

`∑[A054895(A124016(n+1))]`
-/

namespace A034335.P1464383677301388955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A124016 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034335.P1464383677301388955

/-! ## A034335.P15578540893101594993

`∑[∑[A000196(A056329(n+1))]]`
-/

namespace A034335.P15578540893101594993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056329 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034335.P15578540893101594993

/-! ## A034335.P14088397451454230220

`∑[∑[A000196(A056339(n+1))]]`
-/

namespace A034335.P14088397451454230220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056339 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034335.P14088397451454230220

/-! ## A034335.P5098757574654894920

`∑[A172471(∑[A038145(n+2)])]`
-/

namespace A034335.P5098757574654894920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034335.P5098757574654894920

/-!
# A034336: Number of matroids: column 6 of A034328.

The programs for A034336, there is no canonical definition to state claims against.
-/

/-! ## A034336.P1333921345436037580

`∑{d}[A255537(n+1), n%#]`
-/

namespace A034336.P1333921345436037580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255537 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n % d

end

end A034336.P1333921345436037580

/-! ## A034336.P7278745999682605421

`A095274(A036421(n+1))`
-/

namespace A034336.P7278745999682605421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A036421 (n + 1)).toNat

end

end A034336.P7278745999682605421

/-! ## A034336.P16259893764927487627

`Δ[A157271(A336010(n)²)]`
-/

namespace A034336.P16259893764927487627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A336010 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034336.P16259893764927487627

/-! ## A034336.P12077009088808782085

`∑[A335524(A137745(n)+1)]`
-/

namespace A034336.P12077009088808782085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A137745 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034336.P12077009088808782085

/-! ## A034336.P9576130990961993020

`A065716(∑[A125305(n)]+n)`
-/

namespace A034336.P9576130990961993020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A034336.P9576130990961993020

/-!
# A034337: Number of inequivalent binary [ n,3 ] codes of dimension <= 3 without zero columns.

The programs for A034337, there is no canonical definition to state claims against.
-/

/-! ## A034337.P11658075128503626682

`A034344(n+1)+Δ[A000601(n)]`
-/

namespace A034337.P11658075128503626682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034337.P11658075128503626682

/-! ## A034337.P4248942602641598342

`A034344(n+1)+record[A266755(n)]`
-/

namespace A034337.P4248942602641598342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034337.P4248942602641598342

/-! ## A034337.P14290198628265570390

`A034344(n+1)+A001399(n+1)`
-/

namespace A034337.P14290198628265570390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) + A001399 (n + 1)

end

end A034337.P14290198628265570390

/-! ## A034337.P15549238782475406827

`A069905(n+4)+A034344(n+1)`
-/

namespace A034337.P15549238782475406827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 4) + A034344 (n + 1)

end

end A034337.P15549238782475406827

/-! ## A034337.P3076357146932062445

`A034338(n+1)-A034345(n+1)`
-/

namespace A034337.P3076357146932062445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - A034345 (n + 1)

end

end A034337.P3076357146932062445

/-!
# A034338: Number of binary [ n,4 ] codes of dimension <= 4 without zero columns.

The programs for A034338, there is no canonical definition to state claims against.
-/

/-! ## A034338.P3995090315347477048

`A034345(n+1)+A034337(n+1)`
-/

namespace A034338.P3995090315347477048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034345 (n + 1) + A034337 (n + 1)

end

end A034338.P3995090315347477048

/-! ## A034338.P9117610181595397653

`A034344(n+1)+A034345(n+1)+Δ[A000601(n)]`
-/

namespace A034338.P9117610181595397653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) + (A034345 (n + 1) + (f1 (n + 1) - f1 n))

end

end A034338.P9117610181595397653

/-! ## A034338.P11034076467663898794

`A001399(n+1)+A034345(n+1)+A034344(n+1)`
-/

namespace A034338.P11034076467663898794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) + (A034345 (n + 1) + A034344 (n + 1))

end

end A034338.P11034076467663898794

/-! ## A034338.P17238297291598438743

`A034339(n+1)-A034346(n+1)`
-/

namespace A034338.P17238297291598438743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) - A034346 (n + 1)

end

end A034338.P17238297291598438743

/-!
# A034339: Number of binary [ n,5 ] codes of dimension <= 5 without zero columns.

The programs for A034339, there is no canonical definition to state claims against.
-/

/-! ## A034339.P15813832860433090844

`A034346(n+1)+A034338(n+1)`
-/

namespace A034339.P15813832860433090844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034346 (n + 1) + A034338 (n + 1)

end

end A034339.P15813832860433090844

/-! ## A034339.P14393230076153734065

`A034337(n+1)+A034346(n+1)+A034345(n+1)`
-/

namespace A034339.P14393230076153734065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) + (A034346 (n + 1) + A034345 (n + 1))

end

end A034339.P14393230076153734065

/-! ## A034339.P598953473988967723

`A034346(n+1)+A001399(n+1)+A034345(n+1)+A034344(n+1)`
-/

namespace A034339.P598953473988967723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034346 (n + 1) + (A001399 (n + 1) + (A034345 (n + 1) + A034344 (n + 1)))

end

end A034339.P598953473988967723

/-! ## A034339.P190875613777506902

`A034340(n+1)-A034347(n+1)`
-/

namespace A034339.P190875613777506902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - A034347 (n + 1)

end

end A034339.P190875613777506902

/-! ## A034339.P4279138493981231513

`A034341(n+1)-(A034348(n+1)+A034347(n+1))`
-/

namespace A034339.P4279138493981231513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - (A034348 (n + 1) + A034347 (n + 1))

end

end A034339.P4279138493981231513

/-!
# A034340: Number of binary [ n,6 ] codes of dimension <= 6 without zero columns.

The programs for A034340, there is no canonical definition to state claims against.
-/

/-! ## A034340.P3527134708453746428

`A034347(n+1)+A034339(n+1)`
-/

namespace A034340.P3527134708453746428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034347 (n + 1) + A034339 (n + 1)

end

end A034340.P3527134708453746428

/-! ## A034340.P3227197186382423225

`A034338(n+1)+A034347(n+1)+A034346(n+1)`
-/

namespace A034340.P3227197186382423225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) + (A034347 (n + 1) + A034346 (n + 1))

end

end A034340.P3227197186382423225

/-! ## A034340.P15807411481196348605

`A034341(n+1)-A034348(n+1)`
-/

namespace A034340.P15807411481196348605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - A034348 (n + 1)

end

end A034340.P15807411481196348605

/-! ## A034340.P9768625050645719792

`A034339(n+1)+Δ[A034360(A028310(n))]`
-/

namespace A034340.P9768625050645719792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034340.P9768625050645719792

/-! ## A034340.P3201287453322911572

`A034342(n+1)-(A034349(n+1)+A034348(n+1))`
-/

namespace A034340.P3201287453322911572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - (A034349 (n + 1) + A034348 (n + 1))

end

end A034340.P3201287453322911572

/-!
# A034341: Number of binary [ n,7 ] codes of dimension <= 7 without zero columns.

The programs for A034341, there is no canonical definition to state claims against.
-/

/-! ## A034341.P7372742437967547814

`A034348(n+1)+A034340(n+1)`
-/

namespace A034341.P7372742437967547814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034348 (n + 1) + A034340 (n + 1)

end

end A034341.P7372742437967547814

/-! ## A034341.P15683113711080672977

`A034339(n+1)+A034348(n+1)+A034347(n+1)`
-/

namespace A034341.P15683113711080672977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) + (A034348 (n + 1) + A034347 (n + 1))

end

end A034341.P15683113711080672977

/-! ## A034341.P14834614676527076492

`A034348(n+1)+A034338(n+1)+A034347(n+1)+A034346(n+1)`
-/

namespace A034341.P14834614676527076492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034348 (n + 1) + (A034338 (n + 1) + (A034347 (n + 1) + A034346 (n + 1)))

end

end A034341.P14834614676527076492

/-! ## A034341.P273123109684293302

`A034340(n+1)+Δ[A034361(A028310(n))]`
-/

namespace A034341.P273123109684293302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034361 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034341.P273123109684293302

/-! ## A034341.P3555661855463023504

`A034340(n+1)+A034361(n+1)-A034361(A028310(n))`
-/

namespace A034341.P3555661855463023504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) + (A034361 (n + 1) - A034361 (A028310 n).toNat)

end

end A034341.P3555661855463023504

/-! ## A034341.P7016272303133525459

`A034342(n+1)-Δ[A034362(A028310(n))]`
-/

namespace A034341.P7016272303133525459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034341.P7016272303133525459

/-! ## A034341.P17274910609578193989

`A034342(n+1)-Δ[A034362(A123108(2*n))]`
-/

namespace A034341.P17274910609578193989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034341.P17274910609578193989

/-! ## A034341.P7903816157813182199

`A034342(n+1)+A034362(A028310(n))-A034362(n+1)`
-/

namespace A034341.P7903816157813182199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) + (A034362 (A028310 n).toNat - A034362 (n + 1))

end

end A034341.P7903816157813182199

/-! ## A034341.P5699549558056933307

`A034342(n+1)-(A034362(n+1)-A034362(A123108(2*n)))`
-/

namespace A034341.P5699549558056933307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - (A034362 (n + 1) - A034362 (A123108 (2 * n)).toNat)

end

end A034341.P5699549558056933307

/-!
# A034342: Number of binary [ n,8 ] codes of dimension <= 8 without zero columns.

The programs for A034342, there is no canonical definition to state claims against.
-/

/-! ## A034342.P12515853894267809600

`A034341(n+1)+Δ[A034362(A028310(n))]`
-/

namespace A034342.P12515853894267809600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034342.P12515853894267809600

/-! ## A034342.P5372323111915920106

`A034341(n+1)+Δ[A034362(A123108(2*n))]`
-/

namespace A034342.P5372323111915920106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034342.P5372323111915920106

/-! ## A034342.P12494483529979912129

`A034341(n+1)+A034362(n+1)-A034362(A028310(n))`
-/

namespace A034342.P12494483529979912129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) + (A034362 (n + 1) - A034362 (A028310 n).toNat)

end

end A034342.P12494483529979912129

/-! ## A034342.P2265130612934817599

`A034341(n+1)+A034362(n+1)-A034362(A123108(2*n))`
-/

namespace A034342.P2265130612934817599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) + (A034362 (n + 1) - A034362 (A123108 (2 * n)).toNat)

end

end A034342.P2265130612934817599

/-! ## A034342.P16932943728848908195

`A034349(n+1)+A034341(n+1)`
-/

namespace A034342.P16932943728848908195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034349 (n + 1) + A034341 (n + 1)

end

end A034342.P16932943728848908195

/-!
# A034343: Number of inequivalent binary linear codes of length n and any dimension k <= n containing no column of zeros.

The programs for A034343, there is no canonical definition to state claims against.
-/

/-! ## A034343.P15104676925661103147

`Δ[A076766(n)]`
-/

namespace A034343.P15104676925661103147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034343.P15104676925661103147

/-! ## A034343.P12621229680048290995

`A000079(n)+Δ[A250003(n)]`
-/

namespace A034343.P12621229680048290995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f1 (n + 1) - f1 n)

end

end A034343.P12621229680048290995

/-! ## A034343.P13505710667535159708

`Δ[A250003(n)+A000225(n)]`
-/

namespace A034343.P13505710667535159708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034343.P13505710667535159708

/-! ## A034343.P2587205097267664937

`A076766(n+1)-A076766(n)`
-/

namespace A034343.P2587205097267664937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076766 (n + 1) - A076766 n

end

end A034343.P2587205097267664937

/-! ## A034343.P13260097831133850706

`A013620(A000217(n))+Δ[A250003(n)]`
-/

namespace A034343.P13260097831133850706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A000217 n).toNat + (f1 (n + 1) - f1 n)

end

end A034343.P13260097831133850706

/-!
# A034344: Number of binary [ n,3 ] codes without 0 columns.

The programs for A034344, there is no canonical definition to state claims against.
-/

/-! ## A034344.P17147044928718710671

`A034337(n+1)-Δ[A000601(n)]`
-/

namespace A034344.P17147044928718710671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034344.P17147044928718710671

/-! ## A034344.P3115172389356059966

`A034337(n+1)-record[A266755(n)]`
-/

namespace A034344.P3115172389356059966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034344.P3115172389356059966

/-! ## A034344.P14068757293657647967

`A034337(n+1)-A001399(n+1)`
-/

namespace A034344.P14068757293657647967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - A001399 (n + 1)

end

end A034344.P14068757293657647967

/-! ## A034344.P14423906485221982512

`A034337(n+1)-A069905(n+4)`
-/

namespace A034344.P14423906485221982512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - A069905 (n + 4)

end

end A034344.P14423906485221982512

/-! ## A034344.P14946127760490280439

`A034337(n+1)-A266755(2*(n+1))`
-/

namespace A034344.P14946127760490280439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - A266755 (2 * (n + 1))

end

end A034344.P14946127760490280439

/-! ## A034344.P9806891116301585223

`Δ[A034357(gcd(n, C(2, n)))]`
-/

namespace A034344.P9806891116301585223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034357 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034344.P9806891116301585223

/-! ## A034344.P6533411257768905268

`Δ[A034357(A028310(n))]`
-/

namespace A034344.P6533411257768905268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034344.P6533411257768905268

/-! ## A034344.P3118550679266485207

`Δ[A034357(A233583(n+1))]`
-/

namespace A034344.P3118550679266485207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034357 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034344.P3118550679266485207

/-! ## A034344.P13685744219709821077

`A034357(n+1)-A034357(A028310(n))`
-/

namespace A034344.P13685744219709821077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034357 (n + 1) - A034357 (A028310 n).toNat

end

end A034344.P13685744219709821077

/-! ## A034344.P677287746558712443

`A034357(n+1)-A034357(A233583(n+1))`
-/

namespace A034344.P677287746558712443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034357 (n + 1) - A034357 (A233583 (n + 1)).toNat

end

end A034344.P677287746558712443

/-!
# A034345: Number of binary [ n,4 ] codes without 0 columns.

The programs for A034345, there is no canonical definition to state claims against.
-/

/-! ## A034345.P4921302973838391803

`A034338(n+1)-A034337(n+1)`
-/

namespace A034345.P4921302973838391803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - A034337 (n + 1)

end

end A034345.P4921302973838391803

/-! ## A034345.P2408717645285495297

`A034338(n+1)-(A034344(n+1)+Δ[A000601(n)])`
-/

namespace A034345.P2408717645285495297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - (A034344 (n + 1) + (f1 (n + 1) - f1 n))

end

end A034345.P2408717645285495297

/-! ## A034345.P10857582465303740195

`A034338(n+1)-(A034344(n+1)+record[A266755(n)])`
-/

namespace A034345.P10857582465303740195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - (A034344 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A034345.P10857582465303740195

/-! ## A034345.P8649619463798175405

`A034338(n+1)-(A034344(n+1)+A001399(n+1))`
-/

namespace A034345.P8649619463798175405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - (A034344 (n + 1) + A001399 (n + 1))

end

end A034345.P8649619463798175405

/-! ## A034345.P3922123022229228271

`A034338(n+1)-(A069905(n+4)+A034344(n+1))`
-/

namespace A034345.P3922123022229228271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - (A069905 (n + 4) + A034344 (n + 1))

end

end A034345.P3922123022229228271

/-! ## A034345.P12237342413991570325

`Δ[A034358(A028310(n))]`
-/

namespace A034345.P12237342413991570325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034345.P12237342413991570325

/-! ## A034345.P734245396056398946

`Δ[A034358(sqrt(A253909(n)))]`
-/

namespace A034345.P734245396056398946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034345.P734245396056398946

/-! ## A034345.P5884716640121819661

`Δ[A034358(A233583(n+1))]`
-/

namespace A034345.P5884716640121819661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034345.P5884716640121819661

/-! ## A034345.P16842525055013903279

`A034358(n+1)-A034358(A028310(n))`
-/

namespace A034345.P16842525055013903279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (n + 1) - A034358 (A028310 n).toNat

end

end A034345.P16842525055013903279

/-! ## A034345.P16167759196614471032

`A034358(n+1)-A034358(sqrt(A253909(n)))`
-/

namespace A034345.P16167759196614471032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (n + 1) - A034358 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

end

end A034345.P16167759196614471032

/-! ## A034345.P7612660508059044498

`A034358(n+1)-A034358(A233583(n+1))`
-/

namespace A034345.P7612660508059044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (n + 1) - A034358 (A233583 (n + 1)).toNat

end

end A034345.P7612660508059044498

/-! ## A034345.P9447347494024258013

`Δ[A034358(A007318(A000124(n)))]`
-/

namespace A034345.P9447347494024258013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034358 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034345.P9447347494024258013

/-!
# A034346: Number of binary [ n,5 ] codes without 0 columns.

The programs for A034346, there is no canonical definition to state claims against.
-/

/-! ## A034346.P6831670627664101925

`A034339(n+1)-A034338(n+1)`
-/

namespace A034346.P6831670627664101925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) - A034338 (n + 1)

end

end A034346.P6831670627664101925

/-! ## A034346.P14230862040611251109

`A034339(n+1)-(A034345(n+1)+A034337(n+1))`
-/

namespace A034346.P14230862040611251109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) - (A034345 (n + 1) + A034337 (n + 1))

end

end A034346.P14230862040611251109

/-! ## A034346.P14209419349605114914

`A034340(n+1)-(A034347(n+1)+A034338(n+1))`
-/

namespace A034346.P14209419349605114914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - (A034347 (n + 1) + A034338 (n + 1))

end

end A034346.P14209419349605114914

/-! ## A034346.P7757000363758421876

`Δ[A034359(A028310(n))]`
-/

namespace A034346.P7757000363758421876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034346.P7757000363758421876

/-! ## A034346.P18135100426022392171

`Δ[A034359(sqrt(A253909(n)))]`
-/

namespace A034346.P18135100426022392171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034346.P18135100426022392171

/-! ## A034346.P6896220238416077677

`Δ[A034359(A233583(n+1))]`
-/

namespace A034346.P6896220238416077677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034346.P6896220238416077677

/-! ## A034346.P10303036177301991355

`Δ[A034359(A004277(n)-n)]`
-/

namespace A034346.P10303036177301991355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034346.P10303036177301991355

/-! ## A034346.P1440001501676809933

`Δ[A034359(A001281(A004277(n)))]`
-/

namespace A034346.P1440001501676809933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034346.P1440001501676809933

/-! ## A034346.P10527124982464874294

`Δ[A034359(A007318(A000124(n)))]`
-/

namespace A034346.P10527124982464874294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034346.P10527124982464874294

/-! ## A034346.P15459802620264913338

`A034359(n+1)-A034359(A028310(n))`
-/

namespace A034346.P15459802620264913338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034359 (n + 1) - A034359 (A028310 n).toNat

end

end A034346.P15459802620264913338

/-!
# A034347: Number of binary [ n,6 ] codes without 0 columns.

The programs for A034347, there is no canonical definition to state claims against.
-/

/-! ## A034347.P8339728736909333245

`A034340(n+1)-A034339(n+1)`
-/

namespace A034347.P8339728736909333245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - A034339 (n + 1)

end

end A034347.P8339728736909333245

/-! ## A034347.P9326869630879548665

`A034340(n+1)-(A034346(n+1)+A034338(n+1))`
-/

namespace A034347.P9326869630879548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - (A034346 (n + 1) + A034338 (n + 1))

end

end A034347.P9326869630879548665

/-! ## A034347.P2079018366342014941

`A034341(n+1)-(A034348(n+1)+A034339(n+1))`
-/

namespace A034347.P2079018366342014941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - (A034348 (n + 1) + A034339 (n + 1))

end

end A034347.P2079018366342014941

/-! ## A034347.P4107072069101165703

`Δ[A034360(A028310(n))]`
-/

namespace A034347.P4107072069101165703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P4107072069101165703

/-! ## A034347.P10921101575023944931

`Δ[A034360(sqrt(A253909(n)))]`
-/

namespace A034347.P10921101575023944931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P10921101575023944931

/-! ## A034347.P5399525219373425843

`Δ[A034360(A233583(n+1))]`
-/

namespace A034347.P5399525219373425843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P5399525219373425843

/-! ## A034347.P1944152557007562302

`Δ[A034360(A004277(n)-n)]`
-/

namespace A034347.P1944152557007562302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P1944152557007562302

/-! ## A034347.P8670717433355843860

`Δ[A034360(A007318(A000124(n)))]`
-/

namespace A034347.P8670717433355843860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P8670717433355843860

/-! ## A034347.P18104648144947447058

`Δ[A034360(A004525(A004277(n)))]`
-/

namespace A034347.P18104648144947447058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P18104648144947447058

/-! ## A034347.P11442299642379043053

`Δ[A034360(A008619(A004273(n)))]`
-/

namespace A034347.P11442299642379043053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034360 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034347.P11442299642379043053

/-!
# A034348: Number of binary [ n,7 ] codes without 0 columns.

The programs for A034348, there is no canonical definition to state claims against.
-/

/-! ## A034348.P11603683765730395994

`A034341(n+1)-A034340(n+1)`
-/

namespace A034348.P11603683765730395994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - A034340 (n + 1)

end

end A034348.P11603683765730395994

/-! ## A034348.P5987198305194820100

`A034341(n+1)-(A034347(n+1)+A034339(n+1))`
-/

namespace A034348.P5987198305194820100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - (A034347 (n + 1) + A034339 (n + 1))

end

end A034348.P5987198305194820100

/-! ## A034348.P15485379371476301783

`Δ[A034361(A028310(n))]`
-/

namespace A034348.P15485379371476301783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034361 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034348.P15485379371476301783

/-! ## A034348.P15244693824421180670

`Δ[A034361(A233583(n+1))]`
-/

namespace A034348.P15244693824421180670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034361 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034348.P15244693824421180670

/-! ## A034348.P10754100703111627086

`Δ[A034361(A007318(A000124(n)))]`
-/

namespace A034348.P10754100703111627086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034361 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034348.P10754100703111627086

/-! ## A034348.P16411810854618978728

`A034361(n+1)-A034361(A028310(n))`
-/

namespace A034348.P16411810854618978728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034361 (n + 1) - A034361 (A028310 n).toNat

end

end A034348.P16411810854618978728

/-! ## A034348.P13354180903574069458

`A034361(n+1)-A034361(A233583(n+1))`
-/

namespace A034348.P13354180903574069458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034361 (n + 1) - A034361 (A233583 (n + 1)).toNat

end

end A034348.P13354180903574069458

/-!
# A034349: Number of binary [ n,8 ] codes without 0 columns.

The programs for A034349, there is no canonical definition to state claims against.
-/

/-! ## A034349.P2517164767046170834

`Δ[A034362(A028310(n))]`
-/

namespace A034349.P2517164767046170834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034349.P2517164767046170834

/-! ## A034349.P4172323949175712314

`Δ[A034362(A233583(n+1))]`
-/

namespace A034349.P4172323949175712314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034349.P4172323949175712314

/-! ## A034349.P7815704491795286119

`Δ[A034362(A123108(2*n))]`
-/

namespace A034349.P7815704491795286119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034349.P7815704491795286119

/-! ## A034349.P12718463464861588961

`A034342(n+1)-A034341(n+1)`
-/

namespace A034349.P12718463464861588961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - A034341 (n + 1)

end

end A034349.P12718463464861588961

/-! ## A034349.P8761148063312128427

`A034362(n+1)-A034362(A028310(n))`
-/

namespace A034349.P8761148063312128427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034362 (n + 1) - A034362 (A028310 n).toNat

end

end A034349.P8761148063312128427

/-!
# A034350: Number of indecomposable binary [ n,3 ] codes without 0 columns.

The programs for A034350, there is no canonical definition to state claims against.
-/

/-! ## A034350.P13740430475266238563

`A034344(n+1)-A181120(n+1)`
-/

namespace A034350.P13740430475266238563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) - A181120 (n + 1)

end

end A034350.P13740430475266238563

/-! ## A034350.P3902195834470143087

`A034344(n+1)-∑[∑[A008615(n)]]`
-/

namespace A034350.P3902195834470143087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034350.P3902195834470143087

/-! ## A034350.P9720217078014238710

`A034344(n+1)-∑[A069905(n+1)]`
-/

namespace A034350.P9720217078014238710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034350.P9720217078014238710

/-! ## A034350.P12054351907435091923

`A308871(n)+A034329(n)`
-/

namespace A034350.P12054351907435091923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308871 n + A034329 n

end

end A034350.P12054351907435091923

/-! ## A034350.P8894706306234249606

`A034344(n+1)+A034329(n)-A034333(n)`
-/

namespace A034350.P8894706306234249606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1) + (A034329 n - A034333 n)

end

end A034350.P8894706306234249606

/-!
# A034351: Number of indecomposable binary [ n,4 ] codes without 0 columns.

The programs for A034351, there is no canonical definition to state claims against.
-/

/-! ## A034351.P13127598300253476365

`∑[∑[A335599(A328881(n))]]`
-/

namespace A034351.P13127598300253476365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335599 (A328881 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034351.P13127598300253476365

/-! ## A034351.P15000365357581091203

`A332669(n)-A014653(A018028(n))`
-/

namespace A034351.P15000365357581091203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332669 n - A014653 (A018028 n).toNat

end

end A034351.P15000365357581091203

/-! ## A034351.P1094873678740877704

`A332669(n)-A024316(A010551(n))`
-/

namespace A034351.P1094873678740877704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332669 n - A024316 (A010551 n).toNat

end

end A034351.P1094873678740877704

/-! ## A034351.P10529955932458548427

`A332669(n)-A055641(A013013(n))`
-/

namespace A034351.P10529955932458548427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332669 n - A055641 (A013013 n).toNat

end

end A034351.P10529955932458548427

/-! ## A034351.P6224745303179184052

`A332669(n)-A003849(A136305(n))`
-/

namespace A034351.P6224745303179184052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332669 n - A003849 (A136305 n).toNat

end

end A034351.P6224745303179184052

/-!
# A034352: Number of indecomposable binary [ n,5 ] codes without 0 columns.

The programs for A034352, there is no canonical definition to state claims against.
-/

/-! ## A034352.P8264813119409570797

`A322337(A104882(n))`
-/

namespace A034352.P8264813119409570797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (A104882 n).toNat

end

end A034352.P8264813119409570797

/-! ## A034352.P3400262646485232477

`A365138(A212484(n))`
-/

namespace A034352.P3400262646485232477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365138 (A212484 n).toNat

end

end A034352.P3400262646485232477

/-! ## A034352.P7362944433219853226

`A325106(A351822(n))`
-/

namespace A034352.P7362944433219853226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A351822 n).toNat

end

end A034352.P7362944433219853226

/-! ## A034352.P28524598527850139

`A322337(A373640(n))`
-/

namespace A034352.P28524598527850139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (A373640 n).toNat

end

end A034352.P28524598527850139

/-! ## A034352.P1119801612920864464

`A071839(A027610(n+1))`
-/

namespace A034352.P1119801612920864464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071839 (A027610 (n + 1)).toNat

end

end A034352.P1119801612920864464

/-!
# A034353: Number of indecomposable binary [ n,6 ] codes without 0 columns.

The programs for A034353, there is no canonical definition to state claims against.
-/

/-! ## A034353.P12626030554361853128

`A025437(∑[A277579(∑[n])])`
-/

namespace A034353.P12626030554361853128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277579 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034353.P12626030554361853128

/-! ## A034353.P2260283307207567986

`A065716(A327740(n+1)+1)`
-/

namespace A034353.P2260283307207567986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A327740 (n + 1) + 1).toNat

end

end A034353.P2260283307207567986

/-! ## A034353.P11539732889576484628

`A065719(A320749(n+1)+2)`
-/

namespace A034353.P11539732889576484628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A320749 (n + 1) + 2).toNat

end

end A034353.P11539732889576484628

/-! ## A034353.P4205899297880961759

`A047217(∏[A123221(2^floor(n/2))])`
-/

namespace A034353.P4205899297880961759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034353.P4205899297880961759

/-! ## A034353.P5249929065136595214

`A175298(A034332(n)^A129713(n))`
-/

namespace A034353.P5249929065136595214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (SequenceMachineLib.roundAway ((A034332 n : ℚ) ^ (A129713 n : ℤ))).toNat

end

end A034353.P5249929065136595214

/-!
# A034354: Number of indecomposable binary [ n,7 ] codes without 0 columns.

The programs for A034354, there is no canonical definition to state claims against.
-/

/-! ## A034354.P1530656481563211254

`A157966(C(n, 7))`
-/

namespace A034354.P1530656481563211254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (Nat.choose n 7)

end

end A034354.P1530656481563211254

/-! ## A034354.P9883663297027772777

`floor(A275619(n+2)/35)`
-/

namespace A034354.P9883663297027772777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275619 (n + 2) : ℚ) / 35⌋

end

end A034354.P9883663297027772777

/-! ## A034354.P15152798856672351971

`round(A038145(n+1)/76)`
-/

namespace A034354.P15152798856672351971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038145 (n + 1) : ℚ) / 76)

end

end A034354.P15152798856672351971

/-! ## A034354.P13447060131080808467

`floor(sqrt(A243252(n+1))/64)`
-/

namespace A034354.P13447060131080808467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A243252 (n + 1) : ℝ) / 64⌋

end

end A034354.P13447060131080808467

/-! ## A034354.P2876207147682041102

`round(A241466(n+1)/(2*n+3))`
-/

namespace A034354.P2876207147682041102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A241466 (n + 1) : ℚ) / (2 * n + 3 : ℚ))

end

end A034354.P2876207147682041102

/-!
# A034355: Number of indecomposable binary [ n,8 ] codes without 0 columns.

The programs for A034355, there is no canonical definition to state claims against.
-/

/-! ## A034355.P9609201394376479005

`A022290(Δ[∏[A067032(n+2)]]²)`
-/

namespace A034355.P9609201394376479005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A034355.P9609201394376479005

/-! ## A034355.P2548052091557720776

`A362977(C(n+1, 9))`
-/

namespace A034355.P2548052091557720776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362977 (Nat.choose (n + 1) 9)

end

end A034355.P2548052091557720776

/-! ## A034355.P5830140030372152249

`round(∏[A298798(n)/15])`
-/

namespace A034355.P5830140030372152249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298798 n : ℚ) / 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034355.P5830140030372152249

/-! ## A034355.P16555064690504427124

`A178930(A265580(n))`
-/

namespace A034355.P16555064690504427124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178930 (A265580 n).toNat

end

end A034355.P16555064690504427124

/-! ## A034355.P1939320231809107943

`A275493(A303875(n))`
-/

namespace A034355.P1939320231809107943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275493 (A303875 n).toNat

end

end A034355.P1939320231809107943

/-!
# A034356: Triangle read by rows giving T(n,k) = number of inequivalent linear [n,k] binary codes (n >= 1, 1 <= k <= n).

The programs for A034356, there is no canonical definition to state claims against.
-/

/-! ## A034356.P9817925516764060024

`A076831(comp[∑[n]])`
-/

namespace A034356.P9817925516764060024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A034356.P9817925516764060024

/-! ## A034356.P8259266584878714124

`A250002(comp[∑[n]])+A135278(n)`
-/

namespace A034356.P8259266584878714124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A135278 n

end

end A034356.P8259266584878714124

/-! ## A034356.P10749047382931208124

`A250002(A080036(n))+A074909(n+1)`
-/

namespace A034356.P10749047382931208124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A080036 n).toNat + A074909 (n + 1)

end

end A034356.P10749047382931208124

/-! ## A034356.P5596379547929771211

`A250002(A080036(n))+A007318(A014132(n+1))`
-/

namespace A034356.P5596379547929771211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A080036 n).toNat + A007318 (A014132 (n + 1)).toNat

end

end A034356.P5596379547929771211

/-! ## A034356.P6798394426229737295

`A250002(A080036(n))+A007318(A003057(n+2)+n)`
-/

namespace A034356.P6798394426229737295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A080036 n).toNat + A007318 (A003057 (n + 2) + (n : ℤ)).toNat

end

end A034356.P6798394426229737295

/-!
# A034357: Number of binary [ n,3 ] codes.

The programs for A034357, there is no canonical definition to state claims against.
-/

/-! ## A034357.P8721500459000252793

`∑[A034344(n+1)]`
-/

namespace A034357.P8721500459000252793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034357.P8721500459000252793

/-! ## A034357.P14138592836500306803

`∑[A034337(n+1)-Δ[A000601(n)]]`
-/

namespace A034357.P14138592836500306803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034357.P14138592836500306803

/-! ## A034357.P6620080576139540726

`∑[A034337(n+1)-record[A266755(n)]]`
-/

namespace A034357.P6620080576139540726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034357.P6620080576139540726

/-! ## A034357.P8153711378677346543

`∑[A034337(n+1)-A001399(n+1)]`
-/

namespace A034357.P8153711378677346543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - A001399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034357.P8153711378677346543

/-! ## A034357.P10191650940909842935

`∑[A034337(n+1)-A069905(n+4)]`
-/

namespace A034357.P10191650940909842935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034337 (n + 1) - A069905 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034357.P10191650940909842935

/-! ## A034357.P7878945276631150811

`a(n-1)+A034344(n+1)+A000007(n)` with `a(0)=0`
-/

namespace A034357.P7878945276631150811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A034344 (n + 1) + A000007 n)

end

end A034357.P7878945276631150811

/-!
# A034358: Number of binary [ n,4 ] codes.

The programs for A034358, there is no canonical definition to state claims against.
-/

/-! ## A034358.P12273225176459335979

`∑[A034345(n+1)]`
-/

namespace A034358.P12273225176459335979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034358.P12273225176459335979

/-! ## A034358.P7385382511512247403

`A034345(n^floor(atan(n))+1)+a(n-1)` with `a(0)=0`
-/

namespace A034358.P7385382511512247403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034345 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) + 1)).toNat + a (n - 1)

end

end A034358.P7385382511512247403

/-! ## A034358.P9765320723735206162

`A034345(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A034358.P9765320723735206162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034345 (n + 1) + a (A023443 n).toNat

end

end A034358.P9765320723735206162

/-! ## A034358.P5282851638771397897

`∑[A034338(n+1)-A034337(n+1)]`
-/

namespace A034358.P5282851638771397897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - A034337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034358.P5282851638771397897

/-! ## A034358.P12553838295474634332

`A034345(n+1)+a(A000027(n+2)-3)` with `a(0)=0`
-/

namespace A034358.P12553838295474634332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034345 (n + 1) + a (A000027 (n + 2) - 3).toNat

end

end A034358.P12553838295474634332

/-! ## A034358.P5442365979730383780

`a(n-1)+A034345(n+1)+A008683(9*(n+1))` with `a(0)=0`
-/

namespace A034358.P5442365979730383780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A034345 (n + 1) + A008683 (9 * (n + 1)))

end

end A034358.P5442365979730383780

/-! ## A034358.P9720007806803040379

`∑[A034338(n+1)-(A034344(n+1)+A001399(n+1))]`
-/

namespace A034358.P9720007806803040379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - (A034344 (n + 1) + A001399 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034358.P9720007806803040379

/-! ## A034358.P9453169571851047922

`∑[A034338(n+1)-(A069905(n+4)+A034344(n+1))]`
-/

namespace A034358.P9453169571851047922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034338 (n + 1) - (A069905 (n + 4) + A034344 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034358.P9453169571851047922

/-!
# A034359: Number of binary [ n,5 ] codes.

The programs for A034359, there is no canonical definition to state claims against.
-/

/-! ## A034359.P16818231475174108320

`∑[A034346(n+1)]`
-/

namespace A034359.P16818231475174108320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034359.P16818231475174108320

/-! ## A034359.P11743075647494840474

`∑[A034339(n+1)-A034338(n+1)]`
-/

namespace A034359.P11743075647494840474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) - A034338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034359.P11743075647494840474

/-! ## A034359.P5016387575969184325

`∑[A034339(n+1)-(A034345(n+1)+A034337(n+1))]`
-/

namespace A034359.P5016387575969184325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034339 (n + 1) - (A034345 (n + 1) + A034337 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034359.P5016387575969184325

/-! ## A034359.P4462485784484518447

`∑[A034340(n+1)-(A034347(n+1)+A034338(n+1))]`
-/

namespace A034359.P4462485784484518447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - (A034347 (n + 1) + A034338 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034359.P4462485784484518447

/-! ## A034359.P2533919212707502977

`a(n-1)+A034346(n+1)%A248341(n)` with `a(0)=0`
-/

namespace A034359.P2533919212707502977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A034346 (n + 1)) (A248341 n)

end

end A034359.P2533919212707502977

/-!
# A034360: Number of binary [ n,6 ] codes.

The programs for A034360, there is no canonical definition to state claims against.
-/

/-! ## A034360.P18123877367114556755

`∑[A034347(n+1)]`
-/

namespace A034360.P18123877367114556755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034360.P18123877367114556755

/-! ## A034360.P11286536464286556650

`A034347(ceil(abs(γ-n))+1)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A034360.P11286536464286556650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A034347 (⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ + 1).toNat + a (n - 1)

end

end A034360.P11286536464286556650

/-! ## A034360.P12758569013878148790

`∑[A034340(n+1)-A034339(n+1)]`
-/

namespace A034360.P12758569013878148790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - A034339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034360.P12758569013878148790

/-! ## A034360.P4459507560200416611

`∑[A034340(n+1)-(A034346(n+1)+A034338(n+1))]`
-/

namespace A034360.P4459507560200416611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034340 (n + 1) - (A034346 (n + 1) + A034338 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034360.P4459507560200416611

/-! ## A034360.P13268752948827616594

`∑[A034341(n+1)-(A034348(n+1)+A034339(n+1))]`
-/

namespace A034360.P13268752948827616594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - (A034348 (n + 1) + A034339 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034360.P13268752948827616594

/-!
# A034361: Number of binary [ n,7 ] codes.

The programs for A034361, there is no canonical definition to state claims against.
-/

/-! ## A034361.P15174030519483788028

`∑[A034348(n+1)]`
-/

namespace A034361.P15174030519483788028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034361.P15174030519483788028

/-! ## A034361.P6825837237616482500

`∑[A034341(n+1)-A034340(n+1)]`
-/

namespace A034361.P6825837237616482500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034341 (n + 1) - A034340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034361.P6825837237616482500

/-! ## A034361.P12329259056780368014

`a(n-1)+A034348(n+1)+A000007(n)` with `a(0)=0, a(1)=0`
-/

namespace A034361.P12329259056780368014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A034348 (n + 1) + A000007 n)

end

end A034361.P12329259056780368014

/-! ## A034361.P3480581688515635294

`a(n-1)+A034348(n+1)%A020978(n)` with `a(0)=0, a(1)=0`
-/

namespace A034361.P3480581688515635294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + Int.tmod (A034348 (n + 1)) (A020978 n)

end

end A034361.P3480581688515635294

/-! ## A034361.P4171081150879073806

`a(n-1)+A034348(n+1)+A000035(2*n)` with `a(0)=0`
-/

namespace A034361.P4171081150879073806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A034348 (n + 1) + A000035 (2 * n))

end

end A034361.P4171081150879073806

/-!
# A034362: Number of binary [ n,8 ] codes.

The programs for A034362, there is no canonical definition to state claims against.
-/

/-! ## A034362.P14419458806130454392

`∑[A034342(n+1)-A034341(n+1)]`
-/

namespace A034362.P14419458806130454392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - A034341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034362.P14419458806130454392

/-! ## A034362.P7970355902509686635

`∑[A034342(n+1)-(A034348(n+1)+A034340(n+1))]`
-/

namespace A034362.P7970355902509686635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034342 (n + 1) - (A034348 (n + 1) + A034340 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034362.P7970355902509686635

/-! ## A034362.P17749504109502455073

`∑[A034349(n+1)]`
-/

namespace A034362.P17749504109502455073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034362.P17749504109502455073

/-! ## A034362.P16560092873432338058

`A034349(C(n+1, n))+a(n-1)` with `a(0)=0`
-/

namespace A034362.P16560092873432338058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034349 (Nat.choose (n + 1) n) + a (n - 1)

end

end A034362.P16560092873432338058

/-! ## A034362.P119188873707163912

`A034349(A065033(2*n)+1)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A034362.P119188873707163912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A034349 (A065033 (2 * n) + 1).toNat + a (n - 1)

end

end A034362.P119188873707163912

/-!
# A034363: Triangle of number of linear [ n,k ] ternary codes (n >= 1, k >= 1) without 0 columns.

The programs for A034363, there is no canonical definition to state claims against.
-/

/-! ## A034363.P15910654291736023960

`A364347(A026758(n)%A139065(n+5))`
-/

namespace A034363.P15910654291736023960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (Int.tmod (A026758 n) (A139065 (n + 5))).toNat

end

end A034363.P15910654291736023960

/-! ## A034363.P5737786069965902477

`A039118(A026758(n))^A014963(A072998(n))`
-/

namespace A034363.P5737786069965902477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039118 (A026758 n).toNat : ℚ) ^ (A014963 (A072998 n).toNat : ℤ)

end

end A034363.P5737786069965902477

/-! ## A034363.P2861636445724685124

`A080664(A026758(n))`
-/

namespace A034363.P2861636445724685124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080664 (A026758 n).toNat

end

end A034363.P2861636445724685124

/-! ## A034363.P4950595327545792424

`A366563(A154372(n))`
-/

namespace A034363.P4950595327545792424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A154372 n).toNat

end

end A034363.P4950595327545792424

/-! ## A034363.P5858147823215445246

`A225634(A139622(n+1))`
-/

namespace A034363.P5858147823215445246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 (A139622 (n + 1)).toNat

end

end A034363.P5858147823215445246

/-!
# A034364: Triangle of number of indecomposable linear [ n,k ] ternary codes (n >= 1, k >= 1) without 0 columns.

The programs for A034364, there is no canonical definition to state claims against.
-/

/-! ## A034364.P16039875327682887506

`A276611(A008619(A034372(n+1)²))`
-/

namespace A034364.P16039875327682887506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A008619 (A034372 (n + 1) ^ 2).toNat).toNat

end

end A034364.P16039875327682887506

/-! ## A034364.P11131851255212198519

`A143824(A099036(A139600(n)))`
-/

namespace A034364.P11131851255212198519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A099036 (A139600 n).toNat).toNat

end

end A034364.P11131851255212198519

/-! ## A034364.P9077612269696114996

`A108229(A156882(n))`
-/

namespace A034364.P9077612269696114996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108229 (A156882 n).toNat

end

end A034364.P9077612269696114996

/-! ## A034364.P4367181220286540621

`A070939(A139600(n)!)`
-/

namespace A034364.P4367181220286540621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.factorial (A139600 n).toNat)

end

end A034364.P4367181220286540621

/-! ## A034364.P16137222745279325129

`A324473(A034372(n+1))`
-/

namespace A034364.P16137222745279325129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (A034372 (n + 1)).toNat

end

end A034364.P16137222745279325129

/-!
# A034365: Triangle of number of projective linear [ n,k ] ternary codes (n >= 1, k >= 1) without 0 columns.

The programs for A034365, there is no canonical definition to state claims against.
-/

/-! ## A034365.P4297608427229356982

`A007828(2*A144402(n)+1)`
-/

namespace A034365.P4297608427229356982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (2 * A144402 n + 1).toNat

end

end A034365.P4297608427229356982

/-! ## A034365.P17816071013613128039

`floor(A256914(A144402(n)²)^(1/3))`
-/

namespace A034365.P17816071013613128039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256914 (A144402 n ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A034365.P17816071013613128039

/-! ## A034365.P16065886260264222936

`A007828(A005408(A144402(n)))`
-/

namespace A034365.P16065886260264222936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (A005408 (A144402 n).toNat).toNat

end

end A034365.P16065886260264222936

/-! ## A034365.P16364125070854052488

`A048766(A256914(A144402(n)²))`
-/

namespace A034365.P16364125070854052488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A256914 (A144402 n ^ 2).toNat).toNat

end

end A034365.P16364125070854052488

/-! ## A034365.P10374916568288189537

`A007828(A144402(n)+A144402(n)+1)`
-/

namespace A034365.P10374916568288189537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (A144402 n + (A144402 n + 1)).toNat

end

end A034365.P10374916568288189537

/-!
# A034366: Triangle of number of indecomposable projective linear [ n,k ] ternary codes (n >= 1, k >= 1) without 0 columns.

The programs for A034366, there is no canonical definition to state claims against.
-/

/-! ## A034366.P6149660159234849951

`and(A034370(n+1), A119732(A034372(n+1)))`
-/

namespace A034366.P6149660159234849951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034370 (n + 1)) (A119732 (A034372 (n + 1)).toNat)

end

end A034366.P6149660159234849951

/-! ## A034366.P17154006877597456957

`A108291(A221573(n+1))%A060587(A001316(n))`
-/

namespace A034366.P17154006877597456957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108291 (A221573 (n + 1)).toNat) (A060587 (A001316 n).toNat)

end

end A034366.P17154006877597456957

/-! ## A034366.P11855996467402302159

`and(A018853(A052964(n)), A101489(n))`
-/

namespace A034366.P11855996467402302159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018853 (A052964 n).toNat) (A101489 n)

end

end A034366.P11855996467402302159

/-! ## A034366.P1089586664373682707

`and(A064839(A130884(n)), A101489(n))`
-/

namespace A034366.P1089586664373682707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064839 (A130884 n).toNat) (A101489 n)

end

end A034366.P1089586664373682707

/-! ## A034366.P261797359212063220

`and(A018853(A052964(n)), A295260(n+1))`
-/

namespace A034366.P261797359212063220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018853 (A052964 n).toNat) (A295260 (n + 1))

end

end A034366.P261797359212063220

/-!
# A034367: Triangle of number of linear [ n,k ] GF(4) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034367, there is no canonical definition to state claims against.
-/

/-! ## A034367.P18146708360744380292

`A347520(A055080(n+1))`
-/

namespace A034367.P18146708360744380292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A055080 (n + 1)).toNat

end

end A034367.P18146708360744380292

/-! ## A034367.P2695475068326367590

`A182049(A055080(n+1)+1)`
-/

namespace A034367.P2695475068326367590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A055080 (n + 1) + 1).toNat

end

end A034367.P2695475068326367590

/-! ## A034367.P10189017958051997697

`A082859(A098568(n))+A055080(n+1)`
-/

namespace A034367.P10189017958051997697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A098568 n).toNat + A055080 (n + 1)

end

end A034367.P10189017958051997697

/-! ## A034367.P7749225116356074139

`A121373(A287166(2*n+5))+A055080(n+1)`
-/

namespace A034367.P7749225116356074139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A287166 (2 * n + 5)).toNat + A055080 (n + 1)

end

end A034367.P7749225116356074139

/-! ## A034367.P4226820341321356378

`A351039(A227333(2*n+5))+A055080(n+1)`
-/

namespace A034367.P4226820341321356378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351039 (A227333 (2 * n + 5)).toNat + A055080 (n + 1)

end

end A034367.P4226820341321356378

/-!
# A034368: Triangle of number of indecomposable linear [ n,k ] GF(4) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034368, there is no canonical definition to state claims against.
-/

/-! ## A034368.P11408205273307687871

`A213253(A266681(n+1))`
-/

namespace A034368.P11408205273307687871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213253 (A266681 (n + 1)).toNat

end

end A034368.P11408205273307687871

/-! ## A034368.P2422491099275970266

`A260998(A156953(n)*A256384(n))`
-/

namespace A034368.P2422491099275970266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260998 (A156953 n * A256384 n).toNat

end

end A034368.P2422491099275970266

/-! ## A034368.P11949113938824445096

`A070211(A139600(n))%A127820(3*n+2)`
-/

namespace A034368.P11949113938824445096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070211 (A139600 n).toNat) (A127820 (3 * n + 2))

end

end A034368.P11949113938824445096

/-!
# A034369: Triangle of number of projective linear [ n,k ] GF(4) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034369, there is no canonical definition to state claims against.
-/

/-! ## A034369.P12964616544750374553

`A004248(n)-A290531(A284979(n+1))`
-/

namespace A034369.P12964616544750374553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n - A290531 (A284979 (n + 1)).toNat

end

end A034369.P12964616544750374553

/-! ## A034369.P11907192659494507654

`A291883(n)-A038189(A281446(n))`
-/

namespace A034369.P11907192659494507654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 n - A038189 (A281446 n).toNat

end

end A034369.P11907192659494507654

/-! ## A034369.P15014273966647967820

`C(A048723(n), A125860(A069777(n)))`
-/

namespace A034369.P15014273966647967820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048723 n).toNat (A125860 (A069777 n).toNat).toNat

end

end A034369.P15014273966647967820

/-! ## A034369.P8386525737046707691

`C(A048723(n), A185620(A185620(n)))`
-/

namespace A034369.P8386525737046707691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048723 n).toNat (A185620 (A185620 n).toNat).toNat

end

end A034369.P8386525737046707691

/-! ## A034369.P5510636997202334966

`C(A048723(n), A178691(A326455(n)))`
-/

namespace A034369.P5510636997202334966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048723 n).toNat (A178691 (A326455 n).toNat).toNat

end

end A034369.P5510636997202334966

/-!
# A034370: Triangle of number of indecomposable projective linear [ n,k ] GF(4) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034370, there is no canonical definition to state claims against.
-/

/-! ## A034370.P17844353002274637882

`A309332(A309355(n+1)+A309289(n+1))`
-/

namespace A034370.P17844353002274637882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (A309355 (n + 1) + A309289 (n + 1)).toNat

end

end A034370.P17844353002274637882

/-! ## A034370.P18238079371625212803

`A224609(A116406(n+2))%A252375(n+1)`
-/

namespace A034370.P18238079371625212803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224609 (A116406 (n + 2)).toNat) (A252375 (n + 1))

end

end A034370.P18238079371625212803

/-! ## A034370.P3973298359131113096

`A034374(A032947(n+1))`
-/

namespace A034370.P3973298359131113096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034374 (A032947 (n + 1)).toNat

end

end A034370.P3973298359131113096

/-! ## A034370.P15979514475855189635

`A034374(A056960(n+1))`
-/

namespace A034370.P15979514475855189635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034374 (A056960 (n + 1)).toNat

end

end A034370.P15979514475855189635

/-! ## A034370.P17480663716605092443

`A034374(A161950(n+1))`
-/

namespace A034370.P17480663716605092443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034374 (A161950 (n + 1)).toNat

end

end A034370.P17480663716605092443

/-!
# A034371: Triangle of number of linear [ n,k ] GF(5) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034371, there is no canonical definition to state claims against.
-/

/-! ## A034371.P2468352002533318430

`A240600(A361731(n))`
-/

namespace A034371.P2468352002533318430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A361731 n).toNat

end

end A034371.P2468352002533318430

/-! ## A034371.P12169587723564838846

`A193838(A177976(n+1))`
-/

namespace A034371.P12169587723564838846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193838 (A177976 (n + 1)).toNat

end

end A034371.P12169587723564838846

/-! ## A034371.P13261544834461929312

`A213183(A185982(n+1))`
-/

namespace A034371.P13261544834461929312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213183 (A185982 (n + 1)).toNat

end

end A034371.P13261544834461929312

/-! ## A034371.P17111792931721311806

`A351058(A193387(n+1))`
-/

namespace A034371.P17111792931721311806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351058 (A193387 (n + 1)).toNat

end

end A034371.P17111792931721311806

/-! ## A034371.P9268213571970788029

`A324473(A263294(n+1))`
-/

namespace A034371.P9268213571970788029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (A263294 (n + 1)).toNat

end

end A034371.P9268213571970788029

/-!
# A034372: Triangle of number of indecomposable linear [ n,k ] GF(5) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034372, there is no canonical definition to state claims against.
-/

/-! ## A034372.P1412657714724607508

`A018645(A183610(n))%19`
-/

namespace A034372.P1412657714724607508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018645 (A183610 n).toNat) 19

end

end A034372.P1412657714724607508

/-!
# A034373: Triangle of number of projective linear [ n,k ] GF(5) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034373, there is no canonical definition to state claims against.
-/

/-! ## A034373.P4728592664016841372

`A007093(A004248(n)%A096637(n))`
-/

namespace A034373.P4728592664016841372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A004248 n) (A096637 n)).toNat

end

end A034373.P4728592664016841372

/-! ## A034373.P8228737527539194085

`A037080(A004248(n))%A263610(n+3)`
-/

namespace A034373.P8228737527539194085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037080 (A004248 n).toNat) (A263610 (n + 3))

end

end A034373.P8228737527539194085

/-! ## A034373.P15140424605620061188

`A007093(A004248(n))%A048531(n+4)`
-/

namespace A034373.P15140424605620061188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 (A004248 n).toNat) (A048531 (n + 4))

end

end A034373.P15140424605620061188

/-! ## A034373.P16866612715277333877

`A037080(A004248(n))^A014963(A067783(n+1))!`
-/

namespace A034373.P16866612715277333877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037080 (A004248 n).toNat ^ Nat.factorial (A014963 (A067783 (n + 1)).toNat).toNat

end

end A034373.P16866612715277333877

/-!
# A034374: Triangle of number of indecomposable projective linear [ n,k ] GF(5) codes (n >= 1, k >= 1) without 0 columns.

The programs for A034374, there is no canonical definition to state claims against.
-/

/-! ## A034374.P13815254422531509023

`A034370(n+1)+∑[A111859(A126291(n))]`
-/

namespace A034374.P13815254422531509023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (A126291 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034370 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034374.P13815254422531509023

/-! ## A034374.P953475901260924353

`and(A199296(2*n+1), A373073(A057756(n+1)))`
-/

namespace A034374.P953475901260924353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199296 (2 * n + 1)) (A373073 (A057756 (n + 1)).toNat)

end

end A034374.P953475901260924353

/-! ## A034374.P16082697139192914

`comp[∑[n%3]+n]%A242465(char[3*n]+2*n)`
-/

namespace A034374.P16082697139192914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A242465 ((if ∃ j, f3 j = n then 1 else 0) + 2 * n))

end

end A034374.P16082697139192914

/-! ## A034374.P11014348828887283164

`A343914(A118897(n))`
-/

namespace A034374.P11014348828887283164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343914 (A118897 n).toNat

end

end A034374.P11014348828887283164

/-! ## A034374.P17643865183220781704

`A118269(A106135(n+1))`
-/

namespace A034374.P17643865183220781704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118269 (A106135 (n + 1)).toNat

end

end A034374.P17643865183220781704

/-!
# A034375: Fibonacci numbers with all odd digits (probably finite).

The programs for A034375, there is no canonical definition to state claims against.
-/

/-! ## A034375.P1695690128959043279

`A177231(floor((n/2)²)+2)`
-/

namespace A034375.P1695690128959043279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177231 (⌊((n : ℚ) / 2) ^ 2⌋ + 2).toNat

end

end A034375.P1695690128959043279

/-! ## A034375.P19836954514666579

`A076899(A047958(n))`
-/

namespace A034375.P19836954514666579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076899 (A047958 n).toNat

end

end A034375.P19836954514666579

/-! ## A034375.P15951302787905080165

`A104220(A212986(n))`
-/

namespace A034375.P15951302787905080165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 (A212986 n).toNat

end

end A034375.P15951302787905080165

/-! ## A034375.P9887270848969909368

`A014437(A304428(n))`
-/

namespace A034375.P9887270848969909368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (A304428 n).toNat

end

end A034375.P9887270848969909368

/-! ## A034375.P16918852813678337620

`A014437(A347657(n))`
-/

namespace A034375.P16918852813678337620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (A347657 n).toNat

end

end A034375.P16918852813678337620

/-!
# A034376: Cubes with all digits even.

The programs for A034376, there is no canonical definition to state claims against.
-/

/-! ## A034376.P13050312547217872559

`A052004(n+1)^3`
-/

namespace A034376.P13050312547217872559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1) ^ 3

end

end A034376.P13050312547217872559

/-! ## A034376.P18162223075080408937

`A052004(2*n-(n-1))²*A052004(n+1)`
-/

namespace A034376.P18162223075080408937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2 * A052004 (n + 1)

end

end A034376.P18162223075080408937

/-! ## A034376.P8882263637714128513

`A016743(A052004(n+1)/2)`
-/

namespace A034376.P8882263637714128513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (SequenceMachineLib.roundAway ((A052004 (n + 1) : ℚ) / 2)).toNat

end

end A034376.P8882263637714128513

/-! ## A034376.P3362306160935245893

`A000578(A052004(n+1))`
-/

namespace A034376.P3362306160935245893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A052004 (n + 1)).toNat

end

end A034376.P3362306160935245893

/-! ## A034376.P8598909316783333451

`A034828(2*A052004(n+1))`
-/

namespace A034376.P8598909316783333451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A052004 (n + 1)).toNat

end

end A034376.P8598909316783333451

/-!
# A034377: Squares that remain a square if a suitably chosen digit is dropped.

The programs for A034377, there is no canonical definition to state claims against.
-/

/-! ## A034377.P14291853281461463450

`record[A128282(A007091(n))²]`
-/

namespace A034377.P14291853281461463450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 (A007091 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034377.P14291853281461463450

/-! ## A034377.P10751926774069223676

`∑[A123275(A236628(n+1))]²`
-/

namespace A034377.P10751926774069223676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A236628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A034377.P10751926774069223676

/-! ## A034377.P1806662663633082228

`lt[A120422(n+1), A120387(n+3)]²`
-/

namespace A034377.P1806662663633082228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120387 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A034377.P1806662663633082228

/-! ## A034377.P7266209605218967928

`lt[A207031(3*n+2), A120387(n+3)]²`
-/

namespace A034377.P7266209605218967928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207031 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120387 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A034377.P7266209605218967928

/-! ## A034377.P9787303438156751790

`(A169606(n+1)-A028234(A162491(n)))²`
-/

namespace A034377.P9787303438156751790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169606 (n + 1) - A028234 (A162491 n).toNat) ^ 2

end

end A034377.P9787303438156751790

/-!
# A034378: Squares and omitting some digit gives another number in this list.

The programs for A034378, there is no canonical definition to state claims against.
-/

/-! ## A034378.P10233485159245195583

`A062387(round(sqrt(n²+1)))%(n*2^(n+1)-1)`
-/

namespace A034378.P10233485159245195583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062387 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) ((n * 2 ^ (n + 1) : ℤ) - 1)

end

end A034378.P10233485159245195583

/-! ## A034378.P10058281534649237924

`A062387(A028310(n))-A000007(n)`
-/

namespace A034378.P10058281534649237924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062387 (A028310 n).toNat - A000007 n

end

end A034378.P10058281534649237924

/-! ## A034378.P5117314521892177802

`A057427(n)*A062387(A028310(n))`
-/

namespace A034378.P5117314521892177802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A062387 (A028310 n).toNat

end

end A034378.P5117314521892177802

/-! ## A034378.P2294467229998772748

`A062387(A000007(n)+n)-A000007(n)`
-/

namespace A034378.P2294467229998772748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062387 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A034378.P2294467229998772748

/-! ## A034378.P12445630448697231186

`A062387(A028310(n))-∏{d}[n, A236842(#)]`
-/

namespace A034378.P12445630448697231186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062387 (A028310 n).toNat - ∏ d ∈ Nat.divisors (f1 n), A236842 d

end

end A034378.P12445630448697231186

/-! ## A034378.P5734769119056588709

`and(1, A000040(n+1))*A062387(A000007(n)+n)`
-/

namespace A034378.P5734769119056588709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A062387 (A000007 n + (n : ℤ)).toNat

end

end A034378.P5734769119056588709

/-!
# A034379: Expansion of 1/(1-x)^2/(1-x^2)/(1-x^3)/(1-x^5)/(1-x^8).

The programs for A034379, the canonical program `A034379.P296084521053309257` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034379 has offset 0).

The definition of A034379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^3+x^4-x^5+x^7-2x^8+x^9+x^11-2x^12+x^13-x^15+x^16+x^17-2x^19+x^20))` (program `A034379.P296084521053309257`, by `A034379.P296084521053309257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034379.P296084521053309257

`ogf(1/(1-2x+x^3+x^4-x^5+x^7-2x^8+x^9+x^11-2x^12+x^13-x^15+x^16+x^17-2x^19+x^20))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034379

/-- `ogf(1/(1-2x+x^3+x^4-x^5+x^7-2x^8+x^9+x^11-2x^12+x^13-x^15+x^16+x^17-2x^19+x^20))` -/
def P296084521053309257.Spec : Prop :=
  ∀ n, P296084521053309257.a n = A034379 n

theorem P296084521053309257.correct : P296084521053309257.Spec := by
  intro n
  simp only [A034379]

end A034379

/-! ## A034379.P17734185077283583363

`∑[A028290(n)]`
-/

namespace A034379.P17734185077283583363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034379.P17734185077283583363

namespace A034379

/-- `∑[A028290(n)]` -/
def P17734185077283583363.Spec : Prop :=
  ∀ n, P17734185077283583363.a n = A034379 n

end A034379

/-! ## A034379.P1257975008220498040

`∑[∑[A029145(n)]]`
-/

namespace A034379.P1257975008220498040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034379.P1257975008220498040

namespace A034379

/-- `∑[∑[A029145(n)]]` -/
def P1257975008220498040.Spec : Prop :=
  ∀ n, P1257975008220498040.a n = A034379 n

end A034379

/-! ## A034379.P11858509479073302504

`∑[A029040(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A034379.P11858509479073302504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A029040 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034379.P11858509479073302504

namespace A034379

/-- `∑[A029040(n)+a(n-2)]` -/
def P11858509479073302504.Spec : Prop :=
  ∀ n, P11858509479073302504.a n = A034379 n

end A034379

/-! ## A034379.P12053714255000336132

`∑[A029013(n)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A034379.P12053714255000336132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A029013 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034379.P12053714255000336132

namespace A034379

/-- `∑[A029013(n)+a(n-3)]` -/
def P12053714255000336132.Spec : Prop :=
  ∀ n, P12053714255000336132.a n = A034379 n

end A034379

/-! ## A034379.P3634166453812688851

`A028290(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A034379.P3634166453812688851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028290 n + a (A023443 n).toNat

end

end A034379.P3634166453812688851

namespace A034379

/-- `A028290(n)+a(A023443(n))` -/
def P3634166453812688851.Spec : Prop :=
  ∀ n, P3634166453812688851.a n = A034379 n

end A034379

/-!
# A034380: Ratio of totient to Carmichael's lambda function: a(n) = A000010(n) / A002322(n).

The programs for A034380, there is no canonical definition to state claims against.
-/

/-! ## A034380.P4910700530603709707

`A000010(n+1)/A002322(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034380.P4910700530603709707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P4910700530603709707

/-! ## A034380.P10566515053391709084

`Δ[A002088(n)]/A002322(n+1)`
-/

namespace A034380.P10566515053391709084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P10566515053391709084

/-! ## A034380.P12588092759839169027

`A010554(n+1)/A206941(n+1)`
-/

namespace A034380.P12588092759839169027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010554 (n + 1) : ℚ) / (A206941 (n + 1) : ℚ)

end

end A034380.P12588092759839169027

/-! ## A034380.P4013538170918371369

`A220345(n+1)/A001615(n+1)`
-/

namespace A034380.P4013538170918371369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220345 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A034380.P4013538170918371369

/-! ## A034380.P8029737284621929080

`sqrt(A127473(n+1))/A002322(n+1)`
-/

namespace A034380.P8029737284621929080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) / (A002322 (n + 1) : ℝ)

end

end A034380.P8029737284621929080

/-! ## A034380.P9394185825926434418

`A104194(n+1)/A002322(n+1)+1`
-/

namespace A034380.P9394185825926434418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104194 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ) + 1

end

end A034380.P9394185825926434418

/-! ## A034380.P13982353382969618338

`(A039649(n+1)-1)/A002322(n+1)`
-/

namespace A034380.P13982353382969618338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P13982353382969618338

/-! ## A034380.P5370332308894447990

`(n-A219428(n+1))/A002322(n+1)`
-/

namespace A034380.P5370332308894447990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P5370332308894447990

/-! ## A034380.P8209026257107569830

`ceil(A002246(n+1)/4)/A002322(n+1)`
-/

namespace A034380.P8209026257107569830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A002246 (n + 1) : ℚ) / 4⌉ : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P8209026257107569830

/-! ## A034380.P3131116333702836714

`(1-A051953(n+1)+n)/A002322(n+1)`
-/

namespace A034380.P3131116333702836714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P3131116333702836714

/-! ## A034380.P4620198478717316955

`∏{p}[n+1, #-1]*A003557(n+1)/A002322(n+1)`
-/

namespace A034380.P4620198478717316955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P4620198478717316955

/-! ## A034380.P15574598650792038038

`(n+1)/∏{p}[n+1, #]*A173557(n+1)/A002322(n+1)`
-/

namespace A034380.P15574598650792038038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P15574598650792038038

/-! ## A034380.P1051386439913207488

`(A002088(n+1)-A002088(n))/A002322(n+1)`
-/

namespace A034380.P1051386439913207488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P1051386439913207488

/-! ## A034380.P17799976679443166656

`(A048865(n+1)+A048864(n+1))/A002322(n+1)`
-/

namespace A034380.P17799976679443166656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A034380.P17799976679443166656

/-! ## A034380.P10668109353130812579

`A000010(n+1)/(A000010(n+1)-A104194(n+1))`
-/

namespace A034380.P10668109353130812579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (n + 1) - A104194 (n + 1) : ℚ)

end

end A034380.P10668109353130812579

/-! ## A034380.P9690374257677207313

`A000252(n+1)/(A000056(n+1)*A002322(n+1))`
-/

namespace A034380.P9690374257677207313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) * A002322 (n + 1) : ℚ)

end

end A034380.P9690374257677207313

/-! ## A034380.P3585730076553933403

`A007434(n+1)/(A001615(n+1)*A002322(n+1))`
-/

namespace A034380.P3585730076553933403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A001615 (n + 1) * A002322 (n + 1) : ℚ)

end

end A034380.P3585730076553933403

/-! ## A034380.P17762042290006815002

`A049559(n+1)/A002322(n+1)*A160595(n+1)`
-/

namespace A034380.P17762042290006815002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049559 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ) * (A160595 (n + 1) : ℚ)

end

end A034380.P17762042290006815002

/-! ## A034380.P9175060691690690272

`A063994(n+1)/A002322(n+1)*A247074(n+1)`
-/

namespace A034380.P9175060691690690272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ) * (A247074 (n + 1) : ℚ)

end

end A034380.P9175060691690690272

/-! ## A034380.P13424852613359620090

`A327570(n+1)/(A002322(n+1)*A002618(n+1))`
-/

namespace A034380.P13424852613359620090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327570 (n + 1) : ℚ) / (A002322 (n + 1) * A002618 (n + 1) : ℚ)

end

end A034380.P13424852613359620090

/-!
# A034381: Number of labeled cyclic groups with n elements.

The programs for A034381, the canonical program `A034381.P14312782436089900410` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034381 has offset 1).

The definition of A034381 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034381.P14963824827748960433

`(n+1)*A058161(n+1)`
-/

namespace A034381.P14963824827748960433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058161 (n + 1)

end

end A034381.P14963824827748960433

namespace A034381

/-- `(n+1)*A058161(n+1)` -/
def P14963824827748960433.Spec : Prop :=
  ∀ n, P14963824827748960433.a n = A034381 (n + 1)

end A034381

/-! ## A034381.P14312782436089900410

`A000142(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034381

/-- `A000142(n+1)/A000010(n+1)` -/
def P14312782436089900410.Spec : Prop :=
  ∀ n, P14312782436089900410.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P9144354049125793638

`A006882(n+1)/A000010(n+1)*A006882(n)`
-/

namespace A034381.P9144354049125793638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A006882 n : ℚ)

end

end A034381.P9144354049125793638

namespace A034381

/-- `A006882(n+1)/A000010(n+1)*A006882(n)` -/
def P9144354049125793638.Spec : Prop :=
  ∀ n, P9144354049125793638.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P9742979552502683189

`A048803(n+1)/A000010(n+1)*A085056(n+1)`
-/

namespace A034381.P9742979552502683189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A085056 (n + 1) : ℚ)

end

end A034381.P9742979552502683189

namespace A034381

/-- `A048803(n+1)/A000010(n+1)*A085056(n+1)` -/
def P9742979552502683189.Spec : Prop :=
  ∀ n, P9742979552502683189.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P8553617855381845590

`A076358(n+1)/A076359(n+1)*A273060(n+1)`
-/

namespace A034381.P8553617855381845590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076358 (n + 1) : ℚ) / (A076359 (n + 1) : ℚ) * (A273060 (n + 1) : ℚ)

end

end A034381.P8553617855381845590

namespace A034381

/-- `A076358(n+1)/A076359(n+1)*A273060(n+1)` -/
def P8553617855381845590.Spec : Prop :=
  ∀ n, P8553617855381845590.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P15397992564975385362

`(n+1)!/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A034381.P15397992564975385362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A034381.P15397992564975385362

namespace A034381

/-- `(n+1)!/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P15397992564975385362.Spec : Prop :=
  ∀ n, P15397992564975385362.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P4140442159807193399

`∏[n+1]/A000010(C(n+1, n))`
-/

namespace A034381.P4140442159807193399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000010 (Nat.choose (n + 1) n) : ℚ)

end

end A034381.P4140442159807193399

namespace A034381

/-- `∏[n+1]/A000010(C(n+1, n))` -/
def P4140442159807193399.Spec : Prop :=
  ∀ n, P4140442159807193399.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P8030136643759388388

`∏[n+1]/A000010(abs(xor(n, -1)))`
-/

namespace A034381.P8030136643759388388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000010 |Int.xor (n : ℤ) (-1)|.toNat : ℚ)

end

end A034381.P8030136643759388388

namespace A034381

/-- `∏[n+1]/A000010(abs(xor(n, -1)))` -/
def P8030136643759388388.Spec : Prop :=
  ∀ n, P8030136643759388388.a n = (A034381 (n + 1) : ℚ)

end A034381

/-! ## A034381.P9560009205806544607

`A001761(n+1)/(A000010(n+1)*A000108(n+1))`
-/

namespace A034381.P9560009205806544607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001761 (n + 1) : ℚ) / (A000010 (n + 1) * A000108 (n + 1) : ℚ)

end

end A034381.P9560009205806544607

namespace A034381

/-- `A001761(n+1)/(A000010(n+1)*A000108(n+1))` -/
def P9560009205806544607.Spec : Prop :=
  ∀ n, P9560009205806544607.a n = (A034381 (n + 1) : ℚ)

end A034381

/-!
# A034382: Number of labeled Abelian groups of order n.

The programs for A034382, there is no canonical definition to state claims against.
-/

/-! ## A034382.P6292423191410565729

`A058162(n+1)*(n+1)`
-/

namespace A034382.P6292423191410565729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058162 (n + 1) * (n + 1 : ℤ)

end

end A034382.P6292423191410565729

/-! ## A034382.P1362358475431474694

`(n+1)*A000688(n+1)*A138286(n+1)`
-/

namespace A034382.P1362358475431474694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000688 (n + 1) * A138286 (n + 1))

end

end A034382.P1362358475431474694

/-! ## A034382.P9837682299476609322

`A138286(n+1)*A238877(Δ[n²])*(n+1)`
-/

namespace A034382.P9837682299476609322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138286 (n + 1) * A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * (n + 1 : ℤ)

end

end A034382.P9837682299476609322

/-! ## A034382.P7035918181362528697

`(n+1)*A101872(A003961(n+1))*A138286(n+1)`
-/

namespace A034382.P7035918181362528697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A101872 (A003961 (n + 1)).toNat * A138286 (n + 1))

end

end A034382.P7035918181362528697

/-! ## A034382.P16477944559565890316

`A104404(A045965(n+1))*A138286(n+1)*(n+1)`
-/

namespace A034382.P16477944559565890316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A045965 (n + 1)).toNat * A138286 (n + 1) * (n + 1 : ℤ)

end

end A034382.P16477944559565890316

/-!
# A034383: Number of labeled groups.

The programs for A034383, there is no canonical definition to state claims against.
-/

/-! ## A034383.P14507250023277234666

`(n+1)*A058163(n+1)`
-/

namespace A034383.P14507250023277234666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058163 (n + 1)

end

end A034383.P14507250023277234666

/-! ## A034383.P7650197629310933423

`A058163(A077168(n))*A077168(n)`
-/

namespace A034383.P7650197629310933423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058163 (A077168 n).toNat * A077168 n

end

end A034383.P7650197629310933423

/-! ## A034383.P5433267873777694953

`A058157(∑[n]+1)`
-/

namespace A034383.P5433267873777694953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034383.P5433267873777694953

/-! ## A034383.P11627645790254387240

`(n+1)*A058158(∑[n]+1)`
-/

namespace A034383.P11627645790254387240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034383.P11627645790254387240

/-!
# A034384: Number of two-state cellular automaton rules on a (2n+1)-site neighborhood that conserve the number of 1's.

The programs for A034384, there is no canonical definition to state claims against.
-/

/-! ## A034384.P12212256762175472408

`A035632(n!+3*(n+1))`
-/

namespace A034384.P12212256762175472408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035632 (Nat.factorial n + 3 * (n + 1))

end

end A034384.P12212256762175472408

/-!
# A034385: Expansion of (1-16*x)^(-1/4), related to quartic factorial numbers.

The programs for A034385, there is no canonical definition to state claims against.
-/

/-! ## A034385.P9156329250685502196

`4^n/n!*A007696(n)`
-/

namespace A034385.P9156329250685502196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (Nat.factorial n : ℚ) * (A007696 n : ℚ)

end

end A034385.P9156329250685502196

/-! ## A034385.P14565501440863969292

`(4-3/n)*4*a(n-1)` with `a(0)=1`
-/

namespace A034385.P14565501440863969292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 3 / (n : ℚ)) * (4 * a (n - 1))

end

end A034385.P14565501440863969292

/-! ## A034385.P1644960178403681060

`A248325(∑[n])`
-/

namespace A034385.P1644960178403681060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034385.P1644960178403681060

/-! ## A034385.P5925665913613336002

`2^n*A004981(n)`
-/

namespace A034385.P5925665913613336002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A004981 n

end

end A034385.P5925665913613336002

/-! ## A034385.P533556606586481697

`A004985(n)/(4*n+1)*2^n`
-/

namespace A034385.P533556606586481697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004985 n : ℚ) / (4 * n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A034385.P533556606586481697

/-! ## A034385.P7449055948645223366

`A004981(n)*A016116(2*n)`
-/

namespace A034385.P7449055948645223366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n * A016116 (2 * n)

end

end A034385.P7449055948645223366

/-! ## A034385.P15290958903682701852

`A001316(n)*A004130(n)*2^n`
-/

namespace A034385.P15290958903682701852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A004130 n * (2 ^ n : ℤ)

end

end A034385.P15290958903682701852

/-! ## A034385.P17126717774717520188

`A000079(A000120(n)+n)*A004130(n)`
-/

namespace A034385.P17126717774717520188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n + (n : ℤ)).toNat * A004130 n

end

end A034385.P17126717774717520188

/-! ## A034385.P17138448829665826749

`A004981(n)/A000984(n)*A059304(n)`
-/

namespace A034385.P17138448829665826749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004981 n : ℚ) / (A000984 n : ℚ) * (A059304 n : ℚ)

end

end A034385.P17138448829665826749

/-! ## A034385.P5385121103063936474

`A001448(n)/A004982(n)*A059304(n)`
-/

namespace A034385.P5385121103063936474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / (A004982 n : ℚ) * (A059304 n : ℚ)

end

end A034385.P5385121103063936474

/-!
# A034386: Primorial numbers (second definition): n# = product of primes <= n.

The programs for A034386, the canonical program `A034386.P1755129826133478527` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034386 has offset 0).

The definition of A034386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034386.P13612729543729263653

`lcm(A006530(n), a(n-1))` with `a(0)=1`
-/

namespace A034386.P13612729543729263653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A006530 n) (a (n - 1) : ℤ)

end

end A034386.P13612729543729263653

namespace A034386

/-- `lcm(A006530(n), a(n-1))` -/
def P13612729543729263653.Spec : Prop :=
  ∀ n, (P13612729543729263653.a n : ℤ) = A034386 n

end A034386

/-! ## A034386.P1755129826133478527

`A007947(A003418(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034386

/-- `A007947(A003418(n))` -/
def P1755129826133478527.Spec : Prop :=
  ∀ n, P1755129826133478527.a n = A034386 n

theorem P1755129826133478527.correct : P1755129826133478527.Spec := by
  intro n
  simp only [A034386]

end A034386

/-! ## A034386.P10457559642563357959

`A007947(A000142(n))`
-/

namespace A034386.P10457559642563357959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000142 n).toNat

end

end A034386.P10457559642563357959

namespace A034386

/-- `A007947(A000142(n))` -/
def P10457559642563357959.Spec : Prop :=
  ∀ n, P10457559642563357959.a n = A034386 n

end A034386

/-! ## A034386.P17770118512542069406

`gcd(n, 1-gcd(n, a(n-1)))*a(n-1)` with `a(0)=1`
-/

namespace A034386.P17770118512542069406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (1 - (Nat.gcd n (a (n - 1)) : ℤ)) * a (n - 1)

end

end A034386.P17770118512542069406

namespace A034386

/-- `gcd(n, 1-gcd(n, a(n-1)))*a(n-1)` -/
def P17770118512542069406.Spec : Prop :=
  ∀ n, (P17770118512542069406.a n : ℤ) = A034386 n

end A034386

/-! ## A034386.P4858737944880784662

`A300951(2*n)`
-/

namespace A034386.P4858737944880784662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * n)

end

end A034386.P4858737944880784662

namespace A034386

/-- `A300951(2*n)` -/
def P4858737944880784662.Spec : Prop :=
  ∀ n, P4858737944880784662.a n = A034386 n

end A034386

/-! ## A034386.P14607084511292731610

`2^n-A319880(n)`
-/

namespace A034386.P14607084511292731610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A319880 n

end

end A034386.P14607084511292731610

namespace A034386

/-- `2^n-A319880(n)` -/
def P14607084511292731610.Spec : Prop :=
  ∀ n, P14607084511292731610.a n = A034386 n

theorem P14607084511292731610.correct : P14607084511292731610.Spec := by
  intro n
  simp only [A034386, Nat.add_sub_cancel, A034386.P14607084511292731610.a, A034386.P1755129826133478527.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A319880, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034386

/-! ## A034386.P13830048829947445576

`a(n-1)*A089026(n)` with `a(0)=1`
-/

namespace A034386.P13830048829947445576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A089026 n

end

end A034386.P13830048829947445576

namespace A034386

/-- `a(n-1)*A089026(n)` -/
def P13830048829947445576.Spec : Prop :=
  ∀ n, P13830048829947445576.a n = A034386 n

end A034386

/-! ## A034386.P1311241202484038326

`lcm(abs(a(n-1)), A020639(n))` with `a(0)=1`
-/

namespace A034386.P1311241202484038326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A020639 n)

end

end A034386.P1311241202484038326

namespace A034386

/-- `lcm(abs(a(n-1)), A020639(n))` -/
def P1311241202484038326.Spec : Prop :=
  ∀ n, (P1311241202484038326.a n : ℤ) = A034386 n

end A034386

/-! ## A034386.P5351376378916249993

`(A166260(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A034386.P5351376378916249993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A166260 n + 1) * a (n - 1)

end

end A034386.P5351376378916249993

namespace A034386

/-- `(A166260(n)+1)*a(n-1)` -/
def P5351376378916249993.Spec : Prop :=
  ∀ n, P5351376378916249993.a n = A034386 n

end A034386

/-! ## A034386.P4026403103343609143

`A066838(A151800(n))`
-/

namespace A034386.P4026403103343609143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A151800 n).toNat

end

end A034386.P4026403103343609143

namespace A034386

/-- `A066838(A151800(n))` -/
def P4026403103343609143.Spec : Prop :=
  ∀ n, P4026403103343609143.a n = A034386 n

end A034386

/-! ## A034386.P2652771451319634081

`A002110(A230980(n))`
-/

namespace A034386.P2652771451319634081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A230980 n).toNat

end

end A034386.P2652771451319634081

namespace A034386

/-- `A002110(A230980(n))` -/
def P2652771451319634081.Spec : Prop :=
  ∀ n, P2652771451319634081.a n = A034386 n

end A034386

/-! ## A034386.P10419158468549815106

`∏[A089026(A028310(n))]`
-/

namespace A034386.P10419158468549815106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034386.P10419158468549815106

namespace A034386

/-- `∏[A089026(A028310(n))]` -/
def P10419158468549815106.Spec : Prop :=
  ∀ n, P10419158468549815106.a n = A034386 n

end A034386

/-! ## A034386.P8993028672449265653

`A066838(A007918(n+1))`
-/

namespace A034386.P8993028672449265653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A007918 (n + 1)).toNat

end

end A034386.P8993028672449265653

namespace A034386

/-- `A066838(A007918(n+1))` -/
def P8993028672449265653.Spec : Prop :=
  ∀ n, P8993028672449265653.a n = A034386 n

end A034386

/-! ## A034386.P3142906506593991922

`A073039(A136548(n+1))`
-/

namespace A034386.P3142906506593991922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (A136548 (n + 1)).toNat

end

end A034386.P3142906506593991922

namespace A034386

/-- `A073039(A136548(n+1))` -/
def P3142906506593991922.Spec : Prop :=
  ∀ n, P3142906506593991922.a n = A034386 n

end A034386

/-! ## A034386.P17951171355037847306

`A066838(A159477(n+1))`
-/

namespace A034386.P17951171355037847306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A159477 (n + 1)).toNat

end

end A034386.P17951171355037847306

namespace A034386

/-- `A066838(A159477(n+1))` -/
def P17951171355037847306.Spec : Prop :=
  ∀ n, P17951171355037847306.a n = A034386 n

end A034386

/-! ## A034386.P5214628722788717107

`A002110(A095117(n)-n)`
-/

namespace A034386.P5214628722788717107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A095117 n - (n : ℤ)).toNat

end

end A034386.P5214628722788717107

namespace A034386

/-- `A002110(A095117(n)-n)` -/
def P5214628722788717107.Spec : Prop :=
  ∀ n, P5214628722788717107.a n = A034386 n

end A034386

/-! ## A034386.P11532309518643280124

`A276085(A013634(n)-n)`
-/

namespace A034386.P11532309518643280124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A013634 n - (n : ℤ)).toNat

end

end A034386.P11532309518643280124

namespace A034386

/-- `A276085(A013634(n)-n)` -/
def P11532309518643280124.Spec : Prop :=
  ∀ n, P11532309518643280124.a n = A034386 n

end A034386

/-! ## A034386.P4949011974714115864

`A163641(n)*A163644(n)`
-/

namespace A034386.P4949011974714115864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163641 n * A163644 n

end

end A034386.P4949011974714115864

namespace A034386

/-- `A163641(n)*A163644(n)` -/
def P4949011974714115864.Spec : Prop :=
  ∀ n, P4949011974714115864.a n = A034386 n

end A034386

/-! ## A034386.P12345922876282140636

`lcm(A084100(n), A121566(n))`
-/

namespace A034386.P12345922876282140636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084100 n) (A121566 n)

end

end A034386.P12345922876282140636

namespace A034386

/-- `lcm(A084100(n), A121566(n))` -/
def P12345922876282140636.Spec : Prop :=
  ∀ n, (P12345922876282140636.a n : ℤ) = A034386 n

end A034386

/-! ## A034386.P4140516248551120462

`lcm(A055773(n), A300951(n))`
-/

namespace A034386.P4140516248551120462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055773 n) (A300951 n)

end

end A034386.P4140516248551120462

namespace A034386

/-- `lcm(A055773(n), A300951(n))` -/
def P4140516248551120462.Spec : Prop :=
  ∀ n, (P4140516248551120462.a n : ℤ) = A034386 n

end A034386

/-!
# A034387: Sum of primes <= n.

The programs for A034387, the canonical program `A034387.P4934732080317010833` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034387 has offset 1).

The definition of A034387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158662, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034387.P4934732080317010833

`A158662(n+1)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034387

/-- `A158662(n+1)-1` -/
def P4934732080317010833.Spec : Prop :=
  ∀ n, P4934732080317010833.a n = A034387 (n + 1)

theorem P4934732080317010833.correct : P4934732080317010833.Spec := by
  intro n
  simp only [A034387, Nat.add_sub_cancel]

end A034387

/-! ## A034387.P245094864997850153

`A007504(A000720(n+1))`
-/

namespace A034387.P245094864997850153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (n + 1)).toNat

end

end A034387.P245094864997850153

namespace A034387

/-- `A007504(A000720(n+1))` -/
def P245094864997850153.Spec : Prop :=
  ∀ n, P245094864997850153.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P13801632802672513517

`(n+2)*A000720(n+1)-A046992(n+1)`
-/

namespace A034387.P13801632802672513517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000720 (n + 1) - A046992 (n + 1)

end

end A034387.P13801632802672513517

namespace A034387

/-- `(n+2)*A000720(n+1)-A046992(n+1)` -/
def P13801632802672513517.Spec : Prop :=
  ∀ n, P13801632802672513517.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P15344223037859503976

`∑[∑{p}[n+1, C(#, n)]]`
-/

namespace A034387.P15344223037859503976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P15344223037859503976

namespace A034387

/-- `∑[∑{p}[n+1, C(#, n)]]` -/
def P15344223037859503976.Spec : Prop :=
  ∀ n, (P15344223037859503976.a n : ℤ) = A034387 (n + 1)

end A034387

/-! ## A034387.P1382281003384808915

`∑[∏{p}[n+1, C(#, n)]]-1`
-/

namespace A034387.P1382281003384808915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A034387.P1382281003384808915

namespace A034387

/-- `∑[∏{p}[n+1, C(#, n)]]-1` -/
def P1382281003384808915.Spec : Prop :=
  ∀ n, P1382281003384808915.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P17275303845074849907

`∑[∑{p}[n+1, #-#%(n+1)]]`
-/

namespace A034387.P17275303845074849907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - ((p % (n + 1) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P17275303845074849907

namespace A034387

/-- `∑[∑{p}[n+1, #-#%(n+1)]]` -/
def P17275303845074849907.Spec : Prop :=
  ∀ n, P17275303845074849907.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P2466535823871526016

`∑[∑{p}[n+1, #*val(#, n+1)]]`
-/

namespace A034387.P2466535823871526016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P2466535823871526016

namespace A034387

/-- `∑[∑{p}[n+1, #*val(#, n+1)]]` -/
def P2466535823871526016.Spec : Prop :=
  ∀ n, (P2466535823871526016.a n : ℤ) = A034387 (n + 1)

end A034387

/-! ## A034387.P16224613134647323278

`∑[A061397(n+1)]`
-/

namespace A034387.P16224613134647323278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P16224613134647323278

namespace A034387

/-- `∑[A061397(n+1)]` -/
def P16224613134647323278.Spec : Prop :=
  ∀ n, P16224613134647323278.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P1594275748340500879

`A301707(n+1)/(n+1)`
-/

namespace A034387.P1594275748340500879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301707 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A034387.P1594275748340500879

namespace A034387

/-- `A301707(n+1)/(n+1)` -/
def P1594275748340500879.Spec : Prop :=
  ∀ n, P1594275748340500879.a n = (A034387 (n + 1) : ℚ)

end A034387

/-! ## A034387.P8836800917069323482

`∑[n+1]-A101203(n+1)`
-/

namespace A034387.P8836800917069323482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A101203 (n + 1)

end

end A034387.P8836800917069323482

namespace A034387

/-- `∑[n+1]-A101203(n+1)` -/
def P8836800917069323482.Spec : Prop :=
  ∀ n, P8836800917069323482.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P10698551610938614324

`∑[A143545(n+1)-(n+1)]`
-/

namespace A034387.P10698551610938614324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P10698551610938614324

namespace A034387

/-- `∑[A143545(n+1)-(n+1)]` -/
def P10698551610938614324.Spec : Prop :=
  ∀ n, P10698551610938614324.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P576949892251456768

`∑[n+1-A191558(n+1)]`
-/

namespace A034387.P576949892251456768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P576949892251456768

namespace A034387

/-- `∑[n+1-A191558(n+1)]` -/
def P576949892251456768.Spec : Prop :=
  ∀ n, P576949892251456768.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P16946476795547172104

`∑[(n+1)*A010051(n+1)]`
-/

namespace A034387.P16946476795547172104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P16946476795547172104

namespace A034387

/-- `∑[(n+1)*A010051(n+1)]` -/
def P16946476795547172104.Spec : Prop :=
  ∀ n, P16946476795547172104.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P2769954918451432084

`∑[C(A006530(n+1), n)]-1`
-/

namespace A034387.P2769954918451432084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A034387.P2769954918451432084

namespace A034387

/-- `∑[C(A006530(n+1), n)]-1` -/
def P2769954918451432084.Spec : Prop :=
  ∀ n, P2769954918451432084.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P14806957767077991405

`∑[C(A020639(n+1), n)]-1`
-/

namespace A034387.P14806957767077991405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A034387.P14806957767077991405

namespace A034387

/-- `∑[C(A020639(n+1), n)]-1` -/
def P14806957767077991405.Spec : Prop :=
  ∀ n, P14806957767077991405.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P16903507442675987804

`∑[(n+1)*A129950(n+1)²]`
-/

namespace A034387.P16903507442675987804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A129950 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P16903507442675987804

namespace A034387

/-- `∑[(n+1)*A129950(n+1)²]` -/
def P16903507442675987804.Spec : Prop :=
  ∀ n, P16903507442675987804.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P1572998691735870238

`∑[(n+1)*char[A000040(n+1)-1]]`
-/

namespace A034387.P1572998691735870238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034387.P1572998691735870238

namespace A034387

/-- `∑[(n+1)*char[A000040(n+1)-1]]` -/
def P1572998691735870238.Spec : Prop :=
  ∀ n, (P1572998691735870238.a n : ℤ) = A034387 (n + 1)

end A034387

/-! ## A034387.P15541852911675750723

`∑[(n+1)*C(2, A000005(n+1))]-2`
-/

namespace A034387.P15541852911675750723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 2 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A034387.P15541852911675750723

namespace A034387

/-- `∑[(n+1)*C(2, A000005(n+1))]-2` -/
def P15541852911675750723.Spec : Prop :=
  ∀ n, P15541852911675750723.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P10105890262056163886

`∑[(n+1)*C(A000010(n+1), n)]-1`
-/

namespace A034387.P10105890262056163886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A034387.P10105890262056163886

namespace A034387

/-- `∑[(n+1)*C(A000010(n+1), n)]-1` -/
def P10105890262056163886.Spec : Prop :=
  ∀ n, P10105890262056163886.a n = A034387 (n + 1)

end A034387

/-! ## A034387.P11806970705148832438

`a(n-1)+C(A006530(2*(n+1)), n)` with `a(0)=0`
-/

namespace A034387.P11806970705148832438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (A006530 (2 * (n + 1))).toNat n

end

end A034387.P11806970705148832438

namespace A034387

/-- `a(n-1)+C(A006530(2*(n+1)), n)` -/
def P11806970705148832438.Spec : Prop :=
  ∀ n, (P11806970705148832438.a n : ℤ) = A034387 (n + 1)

end A034387

/-!
# A034388: Smallest prime containing at least n consecutive identical digits.

The programs for A034388, there is no canonical definition to state claims against.
-/

/-! ## A034388.P6389597451039819768

`p?[A131316(n+1)]`
-/

namespace A034388.P6389597451039819768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034388.P6389597451039819768

/-!
# A034389: Multiplicity of highest weight (or singular) vectors associated with character chi_1 of Monster module.

The programs for A034389, there is no canonical definition to state claims against.
-/

/-! ## A034389.P17646128305346899934

`A154955(gcd(n+1, A238935(n+1)))`
-/

namespace A034389.P17646128305346899934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (Int.gcd (n + 1 : ℤ) (A238935 (n + 1)))

end

end A034389.P17646128305346899934

/-! ## A034389.P9804653961904421206

`A121373(C((n+1)²/∏{p}[n+1, #], A192013(n+1)))`
-/

namespace A034389.P9804653961904421206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Nat.choose (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat (A192013 (n + 1)).toNat)

end

end A034389.P9804653961904421206

/-! ## A034389.P11530055815248670530

`A016413(A026637(n)*A273859(n+1))`
-/

namespace A034389.P11530055815248670530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016413 (A026637 n * A273859 (n + 1)).toNat

end

end A034389.P11530055815248670530

/-! ## A034389.P12707937681097497688

`A005171(A309406(n+1))-n%2`
-/

namespace A034389.P12707937681097497688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A309406 (n + 1)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A034389.P12707937681097497688

/-! ## A034389.P16768167583405182524

`A096606(A003961(n+1))^A109925(n+4)`
-/

namespace A034389.P16768167583405182524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096606 (A003961 (n + 1)).toNat : ℚ) ^ (A109925 (n + 4) : ℤ)

end

end A034389.P16768167583405182524

/-!
# A034390: Multiplicity of highest weight (or singular) vectors associated with character chi_2 of Monster module.

The programs for A034390, there is no canonical definition to state claims against.
-/

/-! ## A034390.P9510757446972934139

`A308064(∑[A002954(or(1, n))])`
-/

namespace A034390.P9510757446972934139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002954 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034390.P9510757446972934139

/-! ## A034390.P4483822021851714316

`A025581(A018382(n+1)%∑[log2(gcd(2, n))])`
-/

namespace A034390.P4483822021851714316
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.tmod (A018382 (n + 1)) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A034390.P4483822021851714316

/-! ## A034390.P248503464709430691

`A029330(A239242(n^A024937(n)))`
-/

namespace A034390.P248503464709430691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029330 (A239242 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A024937 n : ℤ))).toNat).toNat

end

end A034390.P248503464709430691

/-! ## A034390.P15893845466254800613

`A037800(or(A068932(n), A105313(n)))`
-/

namespace A034390.P15893845466254800613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.lor (A068932 n) (A105313 n)).toNat

end

end A034390.P15893845466254800613

/-!
# A034391: Multiplicity of highest weight (or singular) vectors associated with character chi_3 of Monster module.

The programs for A034391, there is no canonical definition to state claims against.
-/

/-! ## A034391.P15986154222629742098

`A025463(∑[p?[A089107(n+1)]])`
-/

namespace A034391.P15986154222629742098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034391.P15986154222629742098

/-! ## A034391.P2725620630925201371

`A025459(A243507(n+1)+A051162(n))`
-/

namespace A034391.P2725620630925201371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A243507 (n + 1) + A051162 n).toNat

end

end A034391.P2725620630925201371

/-! ## A034391.P4733032382515641532

`Δ[A127321(A201061(n+2))]`
-/

namespace A034391.P4733032382515641532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A201061 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034391.P4733032382515641532

/-! ## A034391.P15925729805980242274

`A287272(A002113(n+1))-A008615(n)`
-/

namespace A034391.P15925729805980242274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A002113 (n + 1)).toNat - A008615 n

end

end A034391.P15925729805980242274

/-! ## A034391.P2579118507464588964

`A352129(n)%A097360(A260273(n+1))`
-/

namespace A034391.P2579118507464588964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352129 n) (A097360 (A260273 (n + 1)).toNat)

end

end A034391.P2579118507464588964

/-!
# A034392: Multiplicity of highest weight (or singular) vectors associated with character chi_4 of Monster module.

The programs for A034392, there is no canonical definition to state claims against.
-/

/-! ## A034392.P13364748356263489572

`A124764(A197904(n+1)%A035961(n))`
-/

namespace A034392.P13364748356263489572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (Int.tmod (A197904 (n + 1)) (A035961 n)).toNat

end

end A034392.P13364748356263489572

/-! ## A034392.P8356399001932250220

`A089617(A086700(n+1)+Δ[A100637(n)])`
-/

namespace A034392.P8356399001932250220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089617 (A086700 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A034392.P8356399001932250220

/-! ## A034392.P5820880644127804652

`A000041(floor(n²/60))-A088911(A081407(n))`
-/

namespace A034392.P5820880644127804652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n ^ 2 : ℚ) / 60⌋.toNat - A088911 (A081407 n).toNat

end

end A034392.P5820880644127804652

/-! ## A034392.P9458153822758044841

`∑{e}[(n-1)*a(n-2), floor(1/#)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=5, a(5)=4, a(6)=27, a(7)=9`
-/

namespace A034392.P9458153822758044841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 5, 4, 27, 9] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋

end

end A034392.P9458153822758044841

/-! ## A034392.P17614045287658096373

`A082858(record[A127832(n+1)])`
-/

namespace A034392.P17614045287658096373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034392.P17614045287658096373

/-!
# A034393: Multiplicity of highest weight (or singular) vectors associated with character chi_5 of Monster module.

The programs for A034393, there is no canonical definition to state claims against.
-/

/-! ## A034393.P6570705551730585435

`A283315(A185316(n))%6`
-/

namespace A034393.P6570705551730585435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283315 (A185316 n).toNat) 6

end

end A034393.P6570705551730585435

/-! ## A034393.P9527318181405172692

`A107782(A265704(A185316(n)²))`
-/

namespace A034393.P9527318181405172692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A265704 (A185316 n ^ 2).toNat).toNat

end

end A034393.P9527318181405172692

/-! ## A034393.P7084664961381603891

`A291749(A325129(n+1)+A160724(n))`
-/

namespace A034393.P7084664961381603891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291749 (A325129 (n + 1) + A160724 n).toNat

end

end A034393.P7084664961381603891

/-! ## A034393.P7337474438243824508

`A306383(or(11, A213710(n)))`
-/

namespace A034393.P7337474438243824508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306383 (Int.lor 11 (A213710 n)).toNat

end

end A034393.P7337474438243824508

/-! ## A034393.P5831349211328196659

`A153000(A241825(n%A080208(n)))`
-/

namespace A034393.P5831349211328196659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 (A241825 (Int.tmod (n : ℤ) (A080208 n)).toNat).toNat

end

end A034393.P5831349211328196659

/-!
# A034394: Multiplicity of highest weight (or singular) vectors associated with character chi_6 of Monster module.

The programs for A034394, there is no canonical definition to state claims against.
-/

/-! ## A034394.P17597834179028688694

`Δ[A134119(A003056(A182522(n)))]`
-/

namespace A034394.P17597834179028688694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A003056 (A182522 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034394.P17597834179028688694

/-! ## A034394.P1949003252956913836

`A097430(A282892(n)+A113010(n))`
-/

namespace A034394.P1949003252956913836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A282892 n + A113010 n).toNat

end

end A034394.P1949003252956913836

/-! ## A034394.P800110797153278314

`A324325(A271229(n+4))%A065033(n)`
-/

namespace A034394.P800110797153278314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324325 (A271229 (n + 4)).toNat) (A065033 n)

end

end A034394.P800110797153278314

/-! ## A034394.P6549803320021380756

`A029424(eq[A029388(n), A029422(n+1)])`
-/

namespace A034394.P6549803320021380756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029424 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A034394.P6549803320021380756

/-! ## A034394.P18177015203006340045

`A341025(A341031(n+1)+A189728(n+1))`
-/

namespace A034394.P18177015203006340045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A341031 (n + 1) + A189728 (n + 1)).toNat + 120)

end

end A034394.P18177015203006340045

/-!
# A034398: Multiplicity of highest weight (or singular) vectors associated with character chi_10 of Monster module.

The programs for A034398, there is no canonical definition to state claims against.
-/

/-! ## A034398.P6835701058050732150

`Δ[A259361(∑[A218874(n+1)])]`
-/

namespace A034398.P6835701058050732150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218874 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034398.P6835701058050732150

