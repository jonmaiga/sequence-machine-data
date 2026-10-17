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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A201425: Number of n X n 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201425, there is no canonical definition to state claims against.
-/

/-! ## A201425.P1058202447821921592

`A201432(∑[4*n]+1)`
-/

namespace A201425.P1058202447821921592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201425.P1058202447821921592

/-! ## A201425.P13604323051690064769

`record[A003982(n)*A201432(n+1)]`
-/

namespace A201425.P13604323051690064769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201425.P13604323051690064769

/-! ## A201425.P5413161568267073399

`record[A201432(n+1)*A214505(n)]`
-/

namespace A201425.P5413161568267073399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201425.P5413161568267073399

/-!
# A201426: Number of nX2 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201426, there is no canonical definition to state claims against.
-/

/-! ## A201426.P5174475468419565279

`A201432(∑[n+1]+2)`
-/

namespace A201426.P5174475468419565279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201426.P5174475468419565279

/-! ## A201426.P12324417030980585978

`lcm(A033999(n), A201432(A000096(n)+3))`
-/

namespace A201426.P12324417030980585978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A201432 (A000096 n + 3).toNat)

end

end A201426.P12324417030980585978

/-! ## A201426.P9446915730915320610

`or(A201432(A000096(n)+3), A343344(n))`
-/

namespace A201426.P9446915730915320610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A201432 (A000096 n + 3).toNat) (A343344 n)

end

end A201426.P9446915730915320610

/-! ## A201426.P17829771361082256443

`A201432(A000096(n)+3)%A152670(n+2)`
-/

namespace A201426.P17829771361082256443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201432 (A000096 n + 3).toNat) (A152670 (n + 2))

end

end A201426.P17829771361082256443

/-! ## A201426.P10996660116779411278

`A000027(A201432(∑[n+2]))`
-/

namespace A201426.P10996660116779411278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A201432 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A201426.P10996660116779411278

/-!
# A201427: Number of nX3 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201427, there is no canonical definition to state claims against.
-/

/-! ## A201427.P11705779841633939004

`A201432(∑[n+2]+4)`
-/

namespace A201427.P11705779841633939004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201427.P11705779841633939004

/-! ## A201427.P14515840877709742406

`A201432(A167614(n+1))^ceil(acot(n))`
-/

namespace A201427.P14515840877709742406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201432 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A201427.P14515840877709742406

/-! ## A201427.P15826242486214720511

`record[A201432(A255130(2*n+5)+1)]`
-/

namespace A201427.P15826242486214720511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A255130 (2 * n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201427.P15826242486214720511

/-! ## A201427.P2935152192351383586

`record[gcd(A201432(n+5), A231602(n+1))]`
-/

namespace A201427.P2935152192351383586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201432 (n + 5)) (A231602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201427.P2935152192351383586

/-! ## A201427.P3647286815890426653

`A201432(A167614(n+1))+A011738(n)`
-/

namespace A201427.P3647286815890426653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A167614 (n + 1)).toNat + A011738 n

end

end A201427.P3647286815890426653

/-!
# A201428: Number of nX4 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201428, there is no canonical definition to state claims against.
-/

/-! ## A201428.P17447165821678373886

`A201432(A141214(n)+7)`
-/

namespace A201428.P17447165821678373886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A141214 n + 7).toNat

end

end A201428.P17447165821678373886

/-! ## A201428.P4815474385869742918

`A201432(A052905(n)+9)`
-/

namespace A201428.P4815474385869742918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A052905 n + 9).toNat

end

end A201428.P4815474385869742918

/-! ## A201428.P11186408510423845899

`A201432(A055999(n)+10)`
-/

namespace A201428.P11186408510423845899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A055999 n + 10).toNat

end

end A201428.P11186408510423845899

/-! ## A201428.P8475729902464327737

`A201432(eq[5, A066657(n)])`
-/

namespace A201428.P8475729902464327737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201428.P8475729902464327737

/-! ## A201428.P7255253658859122091

`A201432(Δ[A201618(n+5)])`
-/

namespace A201428.P7255253658859122091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201618 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (f1 (n + 1) - f1 n).toNat

end

end A201428.P7255253658859122091

/-!
# A201429: Number of nX5 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201429, there is no canonical definition to state claims against.
-/

/-! ## A201429.P169982769747887224

`record[A201432(A077169(n))]`
-/

namespace A201429.P169982769747887224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201429.P169982769747887224

/-! ## A201429.P11174842785401203231

`A201432(A155212(n)+13)`
-/

namespace A201429.P11174842785401203231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A155212 n + 13).toNat

end

end A201429.P11174842785401203231

/-! ## A201429.P5152546941069162008

`A201432(A056000(n)+15)`
-/

namespace A201429.P5152546941069162008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A056000 n + 15).toNat

end

end A201429.P5152546941069162008

/-! ## A201429.P4030162702393418155

`A201432(eq[7, A066657(n)])`
-/

namespace A201429.P4030162702393418155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201429.P4030162702393418155

/-! ## A201429.P1252084710878544506

`A201432(A167614(n+3)+2)`
-/

namespace A201429.P1252084710878544506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A167614 (n + 3) + 2).toNat

end

end A201429.P1252084710878544506

/-!
# A201430: Number of nX6 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201430, there is no canonical definition to state claims against.
-/

/-! ## A201430.P10903250146177154913

`A201432(A000217(n+5)+6)`
-/

namespace A201430.P10903250146177154913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A000217 (n + 5) + 6).toNat

end

end A201430.P10903250146177154913

/-! ## A201430.P6125727362108537217

`A201432(A161680(n+6)+6)`
-/

namespace A201430.P6125727362108537217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A161680 (n + 6) + 6).toNat

end

end A201430.P6125727362108537217

/-! ## A201430.P17151197698126731306

`A201432(A155212(n+1)+14)`
-/

namespace A201430.P17151197698126731306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A155212 (n + 1) + 14).toNat

end

end A201430.P17151197698126731306

/-! ## A201430.P13548211251574170221

`A201432(A246172(n+1)+20)`
-/

namespace A201430.P13548211251574170221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A246172 (n + 1) + 20).toNat

end

end A201430.P13548211251574170221

/-! ## A201430.P10972859925707970147

`A201432(eq[7, A131818(n+1)])`
-/

namespace A201430.P10972859925707970147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201430.P10972859925707970147

/-!
# A201431: Number of nX7 0..2 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201431, there is no canonical definition to state claims against.
-/

/-! ## A201431.P4032105351771348024

`A201432(A374008(n+1))`
-/

namespace A201431.P4032105351771348024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A374008 (n + 1)).toNat

end

end A201431.P4032105351771348024

/-! ## A201431.P18150979531687264906

`A201432(A055999(n+4))`
-/

namespace A201431.P18150979531687264906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (A055999 (n + 4)).toNat

end

end A201431.P18150979531687264906

/-! ## A201431.P2725565003833018086

`A201432(eq[4, A219347(n)])`
-/

namespace A201431.P2725565003833018086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201431.P2725565003833018086

/-!
# A201433: Number of zero-sum -2..2 arrays of n elements with first through fourth differences also in -2..2.

The programs for A201433, there is no canonical definition to state claims against.
-/

/-! ## A201433.P8093108484667502176

`A201439(∑[n+2])`
-/

namespace A201433.P8093108484667502176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201433.P8093108484667502176

/-! ## A201433.P11241541268583717081

`record[A201439(A114092(2*n+1))]`
-/

namespace A201433.P11241541268583717081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A114092 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201433.P11241541268583717081

/-! ## A201433.P2639258459039468664

`record[A201439(A000096(A004736(n+1)))]`
-/

namespace A201433.P2639258459039468664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201433.P2639258459039468664

/-! ## A201433.P878547697353256462

`record[A201439(A000096(A067003(n+1)))]`
-/

namespace A201433.P878547697353256462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000096 (A067003 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201433.P878547697353256462

/-! ## A201433.P427539433262488050

`record[A201439(A000096(A347374(n+1)))]`
-/

namespace A201433.P427539433262488050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000096 (A347374 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201433.P427539433262488050

/-!
# A201434: Number of zero-sum -3..3 arrays of n elements with first through fourth differences also in -3..3.

The programs for A201434, there is no canonical definition to state claims against.
-/

/-! ## A201434.P9073727736270011435

`A201439(∑[n+3]+1)`
-/

namespace A201434.P9073727736270011435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201434.P9073727736270011435

/-! ## A201434.P3037027243546088029

`abs(1-A201439(A055999(n)+4))+1`
-/

namespace A201434.P3037027243546088029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A201439 (A055999 n + 4).toNat| + 1

end

end A201434.P3037027243546088029

/-! ## A201434.P5175594781634902694

`record[A201439(n+1)/A201453(n+3)]`
-/

namespace A201434.P5175594781634902694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201439 (n + 1) : ℚ) / (A201453 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201434.P5175594781634902694

/-! ## A201434.P7344963394949585393

`record[A201439(n+1)/A213118(n+3)]`
-/

namespace A201434.P7344963394949585393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201439 (n + 1) : ℚ) / (A213118 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201434.P7344963394949585393

/-!
# A201435: Number of zero-sum -4..4 arrays of n elements with first through fourth differences also in -4..4.

The programs for A201435, there is no canonical definition to state claims against.
-/

/-! ## A201435.P3217769695787217903

`A201439(A141214(n+1))`
-/

namespace A201435.P3217769695787217903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A141214 (n + 1)).toNat

end

end A201435.P3217769695787217903

/-! ## A201435.P13228897961751723323

`A201439(A027379(n+2))`
-/

namespace A201435.P13228897961751723323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A027379 (n + 2)).toNat

end

end A201435.P13228897961751723323

/-! ## A201435.P18260528968787344186

`A201439(A055998(n+2))`
-/

namespace A201435.P18260528968787344186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A055998 (n + 2)).toNat

end

end A201435.P18260528968787344186

/-! ## A201435.P1539371797156192068

`A201439(A155212(n)+5)`
-/

namespace A201435.P1539371797156192068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A155212 n + 5).toNat

end

end A201435.P1539371797156192068

/-! ## A201435.P17170617608341445933

`A201439(A052905(n+1)+2)`
-/

namespace A201435.P17170617608341445933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A052905 (n + 1) + 2).toNat

end

end A201435.P17170617608341445933

/-!
# A201436: Number of zero-sum -5..5 arrays of n elements with first through fourth differences also in -5..5.

The programs for A201436, there is no canonical definition to state claims against.
-/

/-! ## A201436.P8635055439677661854

`A201439(Δ[A264443(n)])`
-/

namespace A201436.P8635055439677661854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (f1 (n + 1) - f1 n).toNat

end

end A201436.P8635055439677661854

/-! ## A201436.P1174465024955662988

`A201439(A046691(n+3))`
-/

namespace A201436.P1174465024955662988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A046691 (n + 3)).toNat

end

end A201436.P1174465024955662988

/-! ## A201436.P16733361287619658787

`A201439(A141214(n+1)+n+4)`
-/

namespace A201436.P16733361287619658787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A141214 (n + 1) + (n + 4 : ℤ)).toNat

end

end A201436.P16733361287619658787

/-! ## A201436.P12881887457300270685

`record[A201439(A038722(A167499(n)))]`
-/

namespace A201436.P12881887457300270685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201436.P12881887457300270685

/-! ## A201436.P913239824918184855

`A201439(A166136(n+1)+A016789(n))`
-/

namespace A201436.P913239824918184855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A166136 (n + 1) + A016789 n).toNat

end

end A201436.P913239824918184855

/-!
# A201437: Number of zero-sum -6..6 arrays of n elements with first through fourth differences also in -6..6.

The programs for A201437, there is no canonical definition to state claims against.
-/

/-! ## A201437.P13734339236174342840

`A201439(A052905(n+3))`
-/

namespace A201437.P13734339236174342840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A052905 (n + 3)).toNat

end

end A201437.P13734339236174342840

/-! ## A201437.P7295111556219235127

`A201439(A034856(n+5)-3)`
-/

namespace A201437.P7295111556219235127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A034856 (n + 5) - 3).toNat

end

end A201437.P7295111556219235127

/-! ## A201437.P11431014451237217820

`A201439(A000124(n+6)-6)`
-/

namespace A201437.P11431014451237217820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000124 (n + 6) - 6).toNat

end

end A201437.P11431014451237217820

/-! ## A201437.P3972366071267878874

`A201439(Δ[Δ[A006504(n+1)]])`
-/

namespace A201437.P3972366071267878874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (f1 (n + 1) - f1 n).toNat

end

end A201437.P3972366071267878874

/-! ## A201437.P79250268208943310

`A201439(Δ[A264443(n+1)]-1)`
-/

namespace A201437.P79250268208943310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (f1 (n + 1) - f1 n - 1).toNat

end

end A201437.P79250268208943310

/-!
# A201438: Number of zero-sum -7..7 arrays of n elements with first through fourth differences also in -7..7.

The programs for A201438, there is no canonical definition to state claims against.
-/

/-! ## A201438.P313355882793251550

`A201439(A055999(n+4))`
-/

namespace A201438.P313355882793251550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A055999 (n + 4)).toNat

end

end A201438.P313355882793251550

/-! ## A201438.P5943517292146082875

`A201439(A034856(n+6)-4)`
-/

namespace A201438.P5943517292146082875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A034856 (n + 6) - 4).toNat

end

end A201438.P5943517292146082875

/-! ## A201438.P10836817119699534661

`A201439(A000217(n+7)-6)`
-/

namespace A201438.P10836817119699534661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000217 (n + 7) - 6).toNat

end

end A201438.P10836817119699534661

/-! ## A201438.P8142823430487597879

`A201439(A000124(n+7)-7)`
-/

namespace A201438.P8142823430487597879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000124 (n + 7) - 7).toNat

end

end A201438.P8142823430487597879

/-! ## A201438.P3551832362920097222

`A201439(record[xor(1, n)]+A000124(n+5)+5)`
-/

namespace A201438.P3551832362920097222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A201438.P3551832362920097222

/-!
# A201440: Number of zero-sum -n..n arrays of 5 elements with first through fourth differences also in -n..n.

The programs for A201440, there is no canonical definition to state claims against.
-/

/-! ## A201440.P12865516056533548952

`A201439(A000124(n+4)+4)`
-/

namespace A201440.P12865516056533548952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000124 (n + 4) + 4).toNat

end

end A201440.P12865516056533548952

/-! ## A201440.P2932808649434729619

`A201439(A000096(n+3)+6)`
-/

namespace A201440.P2932808649434729619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000096 (n + 3) + 6).toNat

end

end A201440.P2932808649434729619

/-! ## A201440.P17400537627049289547

`A201439(A000217(n+4)+5)`
-/

namespace A201440.P17400537627049289547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000217 (n + 4) + 5).toNat

end

end A201440.P17400537627049289547

/-! ## A201440.P10063750935338701424

`A201439(A046691(n+2)+9)`
-/

namespace A201440.P10063750935338701424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A046691 (n + 2) + 9).toNat

end

end A201440.P10063750935338701424

/-! ## A201440.P2297222288164451533

`A201439(eq[6, A004736(n+1)]-2*n)`
-/

namespace A201440.P2297222288164451533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A201440.P2297222288164451533

/-!
# A201441: Number of zero-sum -n..n arrays of 6 elements with first through fourth differences also in -n..n.

The programs for A201441, there is no canonical definition to state claims against.
-/

/-! ## A201441.P8968752503400046997

`A201439(A000124(n+5)+5)`
-/

namespace A201441.P8968752503400046997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000124 (n + 5) + 5).toNat

end

end A201441.P8968752503400046997

/-! ## A201441.P569805907536528687

`A201439(A000096(n+4)+7)`
-/

namespace A201441.P569805907536528687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000096 (n + 4) + 7).toNat

end

end A201441.P569805907536528687

/-! ## A201441.P7589831191148789294

`A201439(A034856(n+4)+8)`
-/

namespace A201441.P7589831191148789294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A034856 (n + 4) + 8).toNat

end

end A201441.P7589831191148789294

/-! ## A201441.P8298718811014329841

`A201439(eq[6, A025581(n)]-2*n)`
-/

namespace A201441.P8298718811014329841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A201441.P8298718811014329841

/-! ## A201441.P4740003606851586374

`A201439(A055999(n+4)-(2*n+1))`
-/

namespace A201441.P4740003606851586374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A201441.P4740003606851586374

/-!
# A201442: Number of zero-sum -n..n arrays of 7 elements with first through fourth differences also in -n..n.

The programs for A201442, there is no canonical definition to state claims against.
-/

/-! ## A201442.P180111821323811430

`A201439(A166136(n+5)+1)`
-/

namespace A201442.P180111821323811430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A166136 (n + 5) + 1).toNat

end

end A201442.P180111821323811430

/-! ## A201442.P14139044571246131611

`A201439(A167499(n+5)+2)`
-/

namespace A201442.P14139044571246131611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A167499 (n + 5) + 2).toNat

end

end A201442.P14139044571246131611

/-! ## A201442.P16160562209275967357

`A201439(A034856(n+5)+9)`
-/

namespace A201442.P16160562209275967357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A034856 (n + 5) + 9).toNat

end

end A201442.P16160562209275967357

/-! ## A201442.P13482384638063909120

`A201439(A161680(n+7)+7)`
-/

namespace A201442.P13482384638063909120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A161680 (n + 7) + 7).toNat

end

end A201442.P13482384638063909120

/-! ## A201442.P18052370493597712714

`A201439(A000124(n+7)-(n+1))`
-/

namespace A201442.P18052370493597712714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201439 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A201442.P18052370493597712714

/-!
# A201444: Number of n X n 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201444, there is no canonical definition to state claims against.
-/

/-! ## A201444.P3226950010657666474

`A201451(∑[4*n]+1)`
-/

namespace A201444.P3226950010657666474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201444.P3226950010657666474

/-! ## A201444.P751636058078990880

`lcm(2, A201451(A001844(n)))`
-/

namespace A201444.P751636058078990880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A201451 (A001844 n).toNat)

end

end A201444.P751636058078990880

/-! ## A201444.P8150767651045437776

`A201451(A001844(n))+A014083(n)`
-/

namespace A201444.P8150767651045437776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A001844 n).toNat + A014083 n

end

end A201444.P8150767651045437776

/-! ## A201444.P2383414474163428692

`A201451(A001844(n))*A362302(n)`
-/

namespace A201444.P2383414474163428692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A001844 n).toNat * A362302 n

end

end A201444.P2383414474163428692

/-! ## A201444.P12280982975376712546

`A184240(n+1)*A201451(A001844(n))`
-/

namespace A201444.P12280982975376712546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184240 (n + 1) * A201451 (A001844 n).toNat

end

end A201444.P12280982975376712546

/-!
# A201445: Number of n X 2 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201445, there is no canonical definition to state claims against.
-/

/-! ## A201445.P2794797823843589055

`A201451(∑[n+1]+2)`
-/

namespace A201445.P2794797823843589055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201445.P2794797823843589055

/-! ## A201445.P14809852096579832393

`A000027(A201451(∑[n+2]))`
-/

namespace A201445.P14809852096579832393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A201451 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A201445.P14809852096579832393

/-! ## A201445.P11558135124746029620

`A201451(A000096(n+1))%A008534(n+1)`
-/

namespace A201445.P11558135124746029620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201451 (A000096 (n + 1)).toNat) (A008534 (n + 1))

end

end A201445.P11558135124746029620

/-! ## A201445.P7565114348182201002

`A102368(2*n+3)*A201451(A000096(n+1))`
-/

namespace A201445.P7565114348182201002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102368 (2 * n + 3) * A201451 (A000096 (n + 1)).toNat

end

end A201445.P7565114348182201002

/-!
# A201446: Number of nX3 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201446, there is no canonical definition to state claims against.
-/

/-! ## A201446.P9559873979796145931

`A201451(∑[n+2]+4)`
-/

namespace A201446.P9559873979796145931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201446.P9559873979796145931

/-! ## A201446.P3083910429219467775

`A201451(A046691(n)+7)+char[23]`
-/

namespace A201446.P3083910429219467775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201446.P3083910429219467775

/-! ## A201446.P13716234304489847751

`char[A004442(n)]*A201451(A167614(n+1))`
-/

namespace A201446.P13716234304489847751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A201451 (A167614 (n + 1)).toNat

end

end A201446.P13716234304489847751

/-! ## A201446.P5798806012024428033

`A201451(A167614(n+1))%A086874(n+1)`
-/

namespace A201446.P5798806012024428033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201451 (A167614 (n + 1)).toNat) (A086874 (n + 1))

end

end A201446.P5798806012024428033

/-! ## A201446.P12001147422192697658

`A201451(A046691(n)+7)%A000108(n+4)`
-/

namespace A201446.P12001147422192697658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201451 (A046691 n + 7).toNat) (A000108 (n + 4))

end

end A201446.P12001147422192697658

/-!
# A201447: Number of nX4 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201447, there is no canonical definition to state claims against.
-/

/-! ## A201447.P3757501799426167312

`A201451(A374004(n+1))`
-/

namespace A201447.P3757501799426167312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A374004 (n + 1)).toNat

end

end A201447.P3757501799426167312

/-! ## A201447.P6839664750669613688

`A201451(A141214(n)+7)`
-/

namespace A201447.P6839664750669613688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A141214 n + 7).toNat

end

end A201447.P6839664750669613688

/-! ## A201447.P625666177394498115

`A201451(A052905(n)+9)`
-/

namespace A201447.P625666177394498115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A052905 n + 9).toNat

end

end A201447.P625666177394498115

/-! ## A201447.P5937645313225277003

`A201451(A055999(n)+10)`
-/

namespace A201447.P5937645313225277003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A055999 n + 10).toNat

end

end A201447.P5937645313225277003

/-! ## A201447.P18270423725730727291

`A201451(Δ[A201618(n+5)])`
-/

namespace A201447.P18270423725730727291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201618 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (f1 (n + 1) - f1 n).toNat

end

end A201447.P18270423725730727291

/-!
# A201448: Number of nX5 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201448, there is no canonical definition to state claims against.
-/

/-! ## A201448.P4602110356340820277

`A201451(∑[n+4]+11)`
-/

namespace A201448.P4602110356340820277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A201448.P4602110356340820277

/-! ## A201448.P559253688429343991

`or(char[3], A201451(A000217(n+4)+5))`
-/

namespace A201448.P559253688429343991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A201451 (A000217 (n + 4) + 5).toNat)

end

end A201448.P559253688429343991

/-! ## A201448.P7113215794010988332

`A201451(A167499(n+3))%A221577(n+1)`
-/

namespace A201448.P7113215794010988332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201451 (A167499 (n + 3)).toNat) (A221577 (n + 1))

end

end A201448.P7113215794010988332

/-! ## A201448.P1994663696376965345

`A201451(A000217(n+4)+5)%A000108(n+6)`
-/

namespace A201448.P1994663696376965345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201451 (A000217 (n + 4) + 5).toNat) (A000108 (n + 6))

end

end A201448.P1994663696376965345

/-! ## A201448.P13264702085110470149

`A007318(C(2, n))*A201451(A000217(n+4)+5)`
-/

namespace A201448.P13264702085110470149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201451 (A000217 (n + 4) + 5).toNat

end

end A201448.P13264702085110470149

/-!
# A201449: Number of nX6 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201449, there is no canonical definition to state claims against.
-/

/-! ## A201449.P12698944932952405299

`A201451(A374007(n+1))`
-/

namespace A201449.P12698944932952405299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A374007 (n + 1)).toNat

end

end A201449.P12698944932952405299

/-! ## A201449.P10276526128464727245

`A201451(A056115(n)+21)`
-/

namespace A201449.P10276526128464727245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A056115 n + 21).toNat

end

end A201449.P10276526128464727245

/-! ## A201449.P6857896344753862680

`A201451(A167499(n+4)+1)`
-/

namespace A201449.P6857896344753862680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A167499 (n + 4) + 1).toNat

end

end A201449.P6857896344753862680

/-! ## A201449.P2134903012098604992

`A201451(A167614(n+4)+3)`
-/

namespace A201449.P2134903012098604992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A167614 (n + 4) + 3).toNat

end

end A201449.P2134903012098604992

/-! ## A201449.P12101135347105290197

`A201451(A000124(n+5)+5)`
-/

namespace A201449.P12101135347105290197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A000124 (n + 5) + 5).toNat

end

end A201449.P12101135347105290197

/-!
# A201450: Number of n X 7 0..3 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201450, there is no canonical definition to state claims against.
-/

/-! ## A201450.P17378108819269530877

`A201451(A374008(n+1))`
-/

namespace A201450.P17378108819269530877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A374008 (n + 1)).toNat

end

end A201450.P17378108819269530877

/-! ## A201450.P16861355971796499935

`A201451(A056119(n)+28)`
-/

namespace A201450.P16861355971796499935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A056119 n + 28).toNat

end

end A201450.P16861355971796499935

/-! ## A201450.P9900156734533695175

`A201451(A167499(n+5)+2)`
-/

namespace A201450.P9900156734533695175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A167499 (n + 5) + 2).toNat

end

end A201450.P9900156734533695175

/-! ## A201450.P1828793810762326382

`A201451(A167614(n+5)+4)`
-/

namespace A201450.P1828793810762326382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A167614 (n + 5) + 4).toNat

end

end A201450.P1828793810762326382

/-! ## A201450.P11371482987184415747

`A201451(A000124(n+6)+6)`
-/

namespace A201450.P11371482987184415747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201451 (A000124 (n + 6) + 6).toNat

end

end A201450.P11371482987184415747

/-!
# A201452: Number of permutations of [n] with both a fixed point and a succession.

The programs for A201452, there is no canonical definition to state claims against.
-/

/-! ## A201452.P3668706628436451475

`A002467(n)-A209326(n)`
-/

namespace A201452.P3668706628436451475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n - A209326 n

end

end A201452.P3668706628436451475

/-! ## A201452.P5654040269938548757

`A207819(n)-A207821(n)`
-/

namespace A201452.P5654040269938548757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207819 n - A207821 n

end

end A201452.P5654040269938548757

/-! ## A201452.P8033994684953849221

`A180191(A028310(n))-A209325(n)`
-/

namespace A201452.P8033994684953849221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (A028310 n).toNat - A209325 n

end

end A201452.P8033994684953849221

/-! ## A201452.P2569010172499832706

`A306015(A000217(n))-A209326(n)`
-/

namespace A201452.P2569010172499832706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (A000217 n).toNat - A209326 n

end

end A201452.P2569010172499832706

/-! ## A201452.P9139682552181175112

`A000142(n)-(A209322(n)+A207821(n))`
-/

namespace A201452.P9139682552181175112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A209322 n + A207821 n)

end

end A201452.P9139682552181175112

/-!
# A201453: Triangle of numerators of dual coefficients of Faulhaber.

The programs for A201453, there is no canonical definition to state claims against.
-/

/-! ## A201453.P12430066928009476215

`A230069(A002378(n)%A080036(n))`
-/

namespace A201453.P12430066928009476215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230069 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A201453.P12430066928009476215

/-! ## A201453.P11323164423715809464

`A230069(A061579(n)%A154537(n))`
-/

namespace A201453.P11323164423715809464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230069 (Int.tmod (A061579 n) (A154537 n)).toNat

end

end A201453.P11323164423715809464

/-! ## A201453.P12468694361661935150

`A230069(∑[2*n]%comp[∑[n]])`
-/

namespace A201453.P12468694361661935150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230069 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A201453.P12468694361661935150

/-! ## A201453.P5781429194412279544

`A230069(∑[char[∑[n]]]²-(n+1))`
-/

namespace A201453.P5781429194412279544
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230069 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A201453.P5781429194412279544

/-! ## A201453.P16935887306549111966

`or(A000007(n), A230069(A061579(n)))`
-/

namespace A201453.P16935887306549111966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A230069 (A061579 n).toNat)

end

end A201453.P16935887306549111966

/-! ## A201453.P12212457243344076384

`A057427(n+2)*A230069(A061579(n))`
-/

namespace A201453.P12212457243344076384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A230069 (A061579 n).toNat

end

end A201453.P12212457243344076384

/-!
# A201455: a(n) = 3*a(n-1) + 4*a(n-2) for n>1, a(0)=2, a(1)=3.

The programs for A201455, the canonical program `A201455.P16680651434910017143` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201455 has offset 0).

The definition of A201455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201455.P16680651434910017143

`4^n+(-1)^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201455

/-- `4^n+(-1)^n` -/
def P16680651434910017143.Spec : Prop :=
  ∀ n, P16680651434910017143.a n = A201455 n

theorem P16680651434910017143.correct : P16680651434910017143.Spec := by
  intro n
  simp only [A201455]

end A201455

/-! ## A201455.P2312582387214078944

`record[(-2)^n+1-and(2, n)]`
-/

namespace A201455.P2312582387214078944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201455.P2312582387214078944

namespace A201455

/-- `record[(-2)^n+1-and(2, n)]` -/
def P2312582387214078944.Spec : Prop :=
  ∀ n, P2312582387214078944.a n = A201455 n

end A201455

/-! ## A201455.P4728576520302848214

`record[abs(A009116(2*n)+1)]`
-/

namespace A201455.P4728576520302848214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009116 (2 * n) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201455.P4728576520302848214

namespace A201455

/-- `record[abs(A009116(2*n)+1)]` -/
def P4728576520302848214.Spec : Prop :=
  ∀ n, P4728576520302848214.a n = A201455 n

end A201455

/-!
# A201458: Expansion of 1/((1-2*x)*(1-3*x+3*x^2)*(1-4*x+6*x^2-4*x^3)).

The programs for A201458, there is no canonical definition to state claims against.
-/

/-! ## A201458.P12275740059761236092

`A053308(n)+A046660(A001147(n))`
-/

namespace A201458.P12275740059761236092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 n + A046660 (A001147 n).toNat

end

end A201458.P12275740059761236092

/-! ## A201458.P4522557636920950025

`A127323(A000166(n))+A053308(n)`
-/

namespace A201458.P4522557636920950025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 (A000166 n).toNat + A053308 n

end

end A201458.P4522557636920950025

/-!
# A201461: Triangle read by rows: n-th row (n>=0) gives coefficients of the polynomial ((x+1)^(2^n) + (x-1)^(2^n))/2.

The programs for A201461, the canonical program `A201461.P15060642789857487320` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201461 has offset 0).

The definition of A201461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201461.P10918506942363497370

`A340263(lt[0, A340263(n)])`
-/

namespace A201461.P10918506942363497370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A201461.P10918506942363497370

namespace A201461

/-- `A340263(lt[0, A340263(n)])` -/
def P10918506942363497370.Spec : Prop :=
  ∀ n, P10918506942363497370.a n = A201461 n

end A201461

/-! ## A201461.P15060642789857487320

`A345135(2*A103354(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A201461

/-- `A345135(2*A103354(n+1))` -/
def P15060642789857487320.Spec : Prop :=
  ∀ n, P15060642789857487320.a n = A201461 n

theorem P15060642789857487320.correct : P15060642789857487320.Spec := by
  intro n
  simp only [A201461]

end A201461

/-! ## A201461.P6591863635258605596

`A345135(A005843(A103354(n+1)))`
-/

namespace A201461.P6591863635258605596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (A005843 (A103354 (n + 1)).toNat).toNat

end

end A201461.P6591863635258605596

namespace A201461

/-- `A345135(A005843(A103354(n+1)))` -/
def P6591863635258605596.Spec : Prop :=
  ∀ n, P6591863635258605596.a n = A201461 n

end A201461

/-! ## A201461.P14272169853365228929

`A345135(A103354(n+1)+A103354(n+1))`
-/

namespace A201461.P14272169853365228929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345135 (A103354 (n + 1) + A103354 (n + 1)).toNat

end

end A201461.P14272169853365228929

namespace A201461

/-- `A345135(A103354(n+1)+A103354(n+1))` -/
def P14272169853365228929.Spec : Prop :=
  ∀ n, P14272169853365228929.a n = A201461 n

theorem P14272169853365228929.correct : P14272169853365228929.Spec := by
  intro n
  simp only [A201461, Nat.add_sub_cancel, A201461.P14272169853365228929.a, A201461.P15060642789857487320.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A201461

/-! ## A201461.P15108943645261738982

`A165253(A065562(∑[n+1]+1)+1)`
-/

namespace A201461.P15108943645261738982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A065562 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A201461.P15108943645261738982

namespace A201461

/-- `A165253(A065562(∑[n+1]+1)+1)` -/
def P15108943645261738982.Spec : Prop :=
  ∀ n, P15108943645261738982.a n = A201461 n

end A201461

/-! ## A201461.P10816606180440011680

`A085478(A130053(n))`
-/

namespace A201461.P10816606180440011680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A130053 n).toNat

end

end A201461.P10816606180440011680

namespace A201461

/-- `A085478(A130053(n))` -/
def P10816606180440011680.Spec : Prop :=
  ∀ n, P10816606180440011680.a n = A201461 n

end A201461

/-!
# A201462: Numbers that are not coprime to their 9's complement.

The programs for A201462, the canonical program `A201462.P13807279662606650267` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201462 has offset 1).

The definition of A201462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201462.P13807279662606650267

`1+lt[1, A109848(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A201462

/-- `1+lt[1, A109848(n+1)]` -/
def P13807279662606650267.Spec : Prop :=
  ∀ n, (P13807279662606650267.a n : ℤ) = A201462 (n + 1)

theorem P13807279662606650267.correct : P13807279662606650267.Spec := by
  intro n
  simp only [A201462, Nat.add_sub_cancel]

end A201462

/-! ## A201462.P6448756244478745557

`lt[A172500(n+1), n]+1`
-/

namespace A201462.P6448756244478745557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A201462.P6448756244478745557

namespace A201462

/-- `lt[A172500(n+1), n]+1` -/
def P6448756244478745557.Spec : Prop :=
  ∀ n, (P6448756244478745557.a n : ℤ) = A201462 (n + 1)

end A201462

/-! ## A201462.P3710838398011237009

`lt[1, A109848(n^floor(atan(n)))]`
-/

namespace A201462.P3710838398011237009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201462.P3710838398011237009

namespace A201462

/-- `lt[1, A109848(n^floor(atan(n)))]` -/
def P3710838398011237009.Spec : Prop :=
  ∀ n, (P3710838398011237009.a n : ℤ) = A201462 (n + 1)

end A201462

/-! ## A201462.P17637725014580173704

`lt[A172500(A028310(n)), n]`
-/

namespace A201462.P17637725014580173704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201462.P17637725014580173704

namespace A201462

/-- `lt[A172500(A028310(n)), n]` -/
def P17637725014580173704.Spec : Prop :=
  ∀ n, (P17637725014580173704.a n : ℤ) = A201462 (n + 1)

end A201462

/-! ## A201462.P10834919109937102204

`A020725(lt[1, A109848(n+1)])`
-/

namespace A201462.P10834919109937102204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A201462.P10834919109937102204

namespace A201462

/-- `A020725(lt[1, A109848(n+1)])` -/
def P10834919109937102204.Spec : Prop :=
  ∀ n, P10834919109937102204.a n = A201462 (n + 1)

end A201462

/-! ## A201462.P10844808801240340598

`lt[1, A109848(A000038(n)+n)]`
-/

namespace A201462.P10844808801240340598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201462.P10844808801240340598

namespace A201462

/-- `lt[1, A109848(A000038(n)+n)]` -/
def P10844808801240340598.Spec : Prop :=
  ∀ n, (P10844808801240340598.a n : ℤ) = A201462 (n + 1)

end A201462

/-!
# A201463: A list of 25 distinct numbers such that the sum of their reciprocals is 1 and each number is of the form p^i*q^j where p and q are distinct primes.

The programs for A201463, there is no canonical definition to state claims against.
-/

/-! ## A201463.P14058831229798342356

`∩[A078942(n+1), A299992(n+1)]`
-/

namespace A201463.P14058831229798342356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201463.P14058831229798342356

/-! ## A201463.P6975157095439418441

`A237051(lt[A164652(2*(n+1)), A250120(n)])`
-/

namespace A201463.P6975157095439418441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201463.P6975157095439418441

/-! ## A201463.P4741452070464832523

`A237051(lt[A164652(2*(n+1)), A175887(n+1)])`
-/

namespace A201463.P4741452070464832523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201463.P4741452070464832523

/-! ## A201463.P11061494842534256944

`A237051(lt[A164652(2*(n+1)), A003658(2*n+1)])`
-/

namespace A201463.P11061494842534256944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201463.P11061494842534256944

/-! ## A201463.P14218162043986179057

`A007774(lt[A058343(n+4), A309958(n)])`
-/

namespace A201463.P14218162043986179057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201463.P14218162043986179057

/-!
# A201464: A list of 63 distinct numbers such that the sum of their reciprocals is 1 and each number is of the form p*q where p and q are distinct primes.

The programs for A201464, there is no canonical definition to state claims against.
-/

/-! ## A201464.P11096615992375539612

`A006881(lt[A100405(n), A069799(n+1)])`
-/

namespace A201464.P11096615992375539612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201464.P11096615992375539612

/-! ## A201464.P11981682800909779478

`A006881(lt[A218868(n+1), A080793(n)])`
-/

namespace A201464.P11981682800909779478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201464.P11981682800909779478

/-! ## A201464.P15077824750351609743

`A006881(lt[A218868(n+1), A165017(n+1)])`
-/

namespace A201464.P15077824750351609743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201464.P15077824750351609743

/-! ## A201464.P3595201373898373311

`A006881(lt[A088156(n), A104620(3*n+5)])`
-/

namespace A201464.P3595201373898373311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104620 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201464.P3595201373898373311

/-! ## A201464.P15231981395925362971

`A201514(∑[A058343(n)!])`
-/

namespace A201464.P15231981395925362971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201514 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201464.P15231981395925362971

/-!
# A201465: E.g.f. A(x) satisfies A(x) = (x + 2*exp(A(x)) - 2)/3.

The programs for A201465, there is no canonical definition to state claims against.
-/

/-! ## A201465.P15295685596336518213

`A058562(n+1)-A058575(n+1)`
-/

namespace A201465.P15295685596336518213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058562 (n + 1) - A058575 (n + 1)

end

end A201465.P15295685596336518213

/-! ## A201465.P10820552903597083429

`A000084(n+1)/A058534(n+1)*A058562(n+1)`
-/

namespace A201465.P10820552903597083429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000084 (n + 1) : ℚ) / (A058534 (n + 1) : ℚ) * (A058562 (n + 1) : ℚ)

end

end A201465.P10820552903597083429

/-!
# A201470: E.g.f. satisfies: A(x) = 1/(1 - 2*x*exp(x*A(x))).

The programs for A201470, there is no canonical definition to state claims against.
-/

/-! ## A201470.P6213497274623669625

`A262869(A234506(n))+1`
-/

namespace A201470.P6213497274623669625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A234506 n).toNat + 1

end

end A201470.P6213497274623669625

/-!
# A201471: Maximal diameter of a connected n-gamma_t-vertex-critical graph.

The programs for A201471, the canonical program `A201471.P12147765584364781612` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201471 has offset 3).

The definition of A201471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201471.P12147765584364781612

`a(n-1)+gcd(n, a(n-2))+a(n-2)%2` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201471

/-- `a(n-1)+gcd(n, a(n-2))+a(n-2)%2` -/
def P12147765584364781612.Spec : Prop :=
  ∀ n, (P12147765584364781612.a n : ℤ) = A201471 (n + 3)

theorem P12147765584364781612.correct : P12147765584364781612.Spec := by
  intro n
  simp only [A201471, Nat.add_sub_cancel]

end A201471

/-!
# A201472: The Griesmer lower bound q_4(5,n) on the length of a linear code over GF(4) of dimension 5 and minimal distance n.

The programs for A201472, the canonical program `A201472.P5824991615880253569` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201472 has offset 1).

The definition of A201472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201472.P5824991615880253569

`a(floor(n/4))+n` with `a(0)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201472

/-- `a(floor(n/4))+n` -/
def P5824991615880253569.Spec : Prop :=
  ∀ n, (P5824991615880253569.a n : ℤ) = A201472 (n + 1)

theorem P5824991615880253569.correct : P5824991615880253569.Spec := by
  intro n
  simp only [A201472, Nat.add_sub_cancel]

end A201472

/-! ## A201472.P11962626939012510569

`∑[val(n+64, 4)+1]+1`
-/

namespace A201472.P11962626939012510569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 64) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201472.P11962626939012510569

namespace A201472

/-- `∑[val(n+64, 4)+1]+1` -/
def P11962626939012510569.Spec : Prop :=
  ∀ n, (P11962626939012510569.a n : ℤ) = A201472 (n + 1)

end A201472

/-! ## A201472.P1903239654572911287

`record[val(n, 4)-a(n-1)]` with `a(0)=5`
-/

namespace A201472.P1903239654572911287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201472.P1903239654572911287

namespace A201472

/-- `record[val(n, 4)-a(n-1)]` -/
def P1903239654572911287.Spec : Prop :=
  ∀ n, P1903239654572911287.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P2028250079004682991

`n-floor(-a(floor(n/4)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A201472.P2028250079004682991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) - (-a ⌊(n : ℚ) / 4⌋.toNat)

end

end A201472.P2028250079004682991

namespace A201472

/-- `n-floor(-a(floor(n/4)))` -/
def P2028250079004682991.Spec : Prop :=
  ∀ n, P2028250079004682991.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P17086448020474786147

`a(n-1)+val(n, 4)+1` with `a(0)=5`
-/

namespace A201472.P17086448020474786147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 4 + 1

end

end A201472.P17086448020474786147

namespace A201472

/-- `a(n-1)+val(n, 4)+1` -/
def P17086448020474786147.Spec : Prop :=
  ∀ n, (P17086448020474786147.a n : ℤ) = A201472 (n + 1)

end A201472

/-! ## A201472.P16441125529281952676

`∑[round(root(and(n, -n)+1, 3))]+4`
-/

namespace A201472.P16441125529281952676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-(n : ℤ)) + 1 : ℝ) ^ (1 / (3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A201472.P16441125529281952676

namespace A201472

/-- `∑[round(root(and(n, -n)+1, 3))]+4` -/
def P16441125529281952676.Spec : Prop :=
  ∀ n, P16441125529281952676.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P13698691762646563149

`Δ[n²]-n-(1-a(floor(n/4)))` with `a(0)=5`
-/

namespace A201472.P13698691762646563149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - (1 - a ⌊(n : ℚ) / 4⌋.toNat)

end

end A201472.P13698691762646563149

namespace A201472

/-- `Δ[n²]-n-(1-a(floor(n/4)))` -/
def P13698691762646563149.Spec : Prop :=
  ∀ n, P13698691762646563149.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P8830609815867388771

`A087069(n)+5`
-/

namespace A201472.P8830609815867388771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + 5

end

end A201472.P8830609815867388771

namespace A201472

/-- `A087069(n)+5` -/
def P8830609815867388771.Spec : Prop :=
  ∀ n, P8830609815867388771.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P3376526938149722597

`A120518(n+1)+4`
-/

namespace A201472.P3376526938149722597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120518 (n + 1) + 4

end

end A201472.P3376526938149722597

namespace A201472

/-- `A120518(n+1)+4` -/
def P3376526938149722597.Spec : Prop :=
  ∀ n, P3376526938149722597.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P3691826347449716019

`A054893(4*n)+5`
-/

namespace A201472.P3691826347449716019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 (4 * n) + 5

end

end A201472.P3691826347449716019

namespace A201472

/-- `A054893(4*n)+5` -/
def P3691826347449716019.Spec : Prop :=
  ∀ n, P3691826347449716019.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P13696826172082078690

`A054893(n)+5+n`
-/

namespace A201472.P13696826172082078690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n + 5 + (n : ℤ)

end

end A201472.P13696826172082078690

namespace A201472

/-- `A054893(n)+5+n` -/
def P13696826172082078690.Spec : Prop :=
  ∀ n, P13696826172082078690.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P9881523586432598255

`abs(a(A002265(n))+n)` with `a(0)=5`
-/

namespace A201472.P9881523586432598255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (A002265 n).toNat + n

end

end A201472.P9881523586432598255

namespace A201472

/-- `abs(a(A002265(n))+n)` -/
def P9881523586432598255.Spec : Prop :=
  ∀ n, (P9881523586432598255.a n : ℤ) = A201472 (n + 1)

end A201472

/-! ## A201472.P2625093683120290098

`A115362(n-1)+a(n-1)` with `a(0)=5`
-/

namespace A201472.P2625093683120290098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A115362 (n - 1) + a (n - 1)

end

end A201472.P2625093683120290098

namespace A201472

/-- `A115362(n-1)+a(n-1)` -/
def P2625093683120290098.Spec : Prop :=
  ∀ n, P2625093683120290098.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P9144562274619086503

`(n-A053737(n))/3+n+5`
-/

namespace A201472.P9144562274619086503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053737 n : ℚ) / 3 + (n + 5 : ℚ)

end

end A201472.P9144562274619086503

namespace A201472

/-- `(n-A053737(n))/3+n+5` -/
def P9144562274619086503.Spec : Prop :=
  ∀ n, P9144562274619086503.a n = (A201472 (n + 1) : ℚ)

end A201472

/-! ## A201472.P8541203049282070468

`A020710(A087069(n))`
-/

namespace A201472.P8541203049282070468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A087069 n).toNat

end

end A201472.P8541203049282070468

namespace A201472

/-- `A020710(A087069(n))` -/
def P8541203049282070468.Spec : Prop :=
  ∀ n, P8541203049282070468.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P9149032699603177263

`A020705(A120518(n+1))`
-/

namespace A201472.P9149032699603177263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A120518 (n + 1)).toNat

end

end A201472.P9149032699603177263

namespace A201472

/-- `A020705(A120518(n+1))` -/
def P9149032699603177263.Spec : Prop :=
  ∀ n, P9149032699603177263.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P15008602763946114280

`A020710(A054893(4*n))`
-/

namespace A201472.P15008602763946114280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A054893 (4 * n)).toNat

end

end A201472.P15008602763946114280

namespace A201472

/-- `A020710(A054893(4*n))` -/
def P15008602763946114280.Spec : Prop :=
  ∀ n, P15008602763946114280.a n = A201472 (n + 1)

end A201472

/-! ## A201472.P11915452693991557761

`A020710(A054893(n)+n)`
-/

namespace A201472.P11915452693991557761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A054893 n + (n : ℤ)).toNat

end

end A201472.P11915452693991557761

namespace A201472

/-- `A020710(A054893(n)+n)` -/
def P11915452693991557761.Spec : Prop :=
  ∀ n, P11915452693991557761.a n = A201472 (n + 1)

end A201472

/-!
# A201473: Primes of the form 2*k^2 + 3.

The programs for A201473, there is no canonical definition to state claims against.
-/

/-! ## A201473.P2145811316806627427

`A093328(A216968(n+1))`
-/

namespace A201473.P2145811316806627427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 (A216968 (n + 1)).toNat

end

end A201473.P2145811316806627427

/-! ## A201473.P12424779931181525691

`A001105(A216968(n+1))*A057427(n)+3`
-/

namespace A201473.P12424779931181525691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A216968 (n + 1)).toNat * A057427 n + 3

end

end A201473.P12424779931181525691

/-! ## A201473.P342715461926234942

`A006257(4-(-1)^n)+A001105(A216968(n+1))`
-/

namespace A201473.P342715461926234942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (4 - (-1) ^ n).toNat + A001105 (A216968 (n + 1)).toNat

end

end A201473.P342715461926234942

/-! ## A201473.P1668260694484682687

`A006519(2*n+1)+A001105(A216968(n+1))+2`
-/

namespace A201473.P1668260694484682687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) + (A001105 (A216968 (n + 1)).toNat + 2)

end

end A201473.P1668260694484682687

/-! ## A201473.P17239111026585208530

`6*A007318(C(2, n))+A001105(A216968(n+1))-3`
-/

namespace A201473.P17239111026585208530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007318 (Nat.choose 2 n) + (A001105 (A216968 (n + 1)).toNat - 3)

end

end A201473.P17239111026585208530

/-! ## A201473.P9602396774363767136

`A001105(A216968(n+1))-A326415(A118625(n+1))`
-/

namespace A201473.P9602396774363767136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A216968 (n + 1)).toNat - A326415 (A118625 (n + 1)).toNat

end

end A201473.P9602396774363767136

/-! ## A201473.P8706196427183011644

`p?[2*n²+3]`
-/

namespace A201473.P8706196427183011644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201473.P8706196427183011644

/-! ## A201473.P15692163108370749165

`or(1, p?[2*n*n+3])`
-/

namespace A201473.P15692163108370749165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201473.P15692163108370749165

/-! ## A201473.P13473722737711100404

`abs(p?[A000982(n)+3]-1)+1`
-/

namespace A201473.P13473722737711100404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A201473.P13473722737711100404

/-! ## A201473.P1818001633457932612

`∩[A079545(n+1), A093328(n)]`
-/

namespace A201473.P1818001633457932612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201473.P1818001633457932612

/-!
# A201474: Primes of the form 2n^2 + 5.

The programs for A201474, the canonical program `A201474.P16685138752624601872` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201474 has offset 1).

The definition of A201474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201474.P16685138752624601872

`p?[2*n²+5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201474

/-- `p?[2*n²+5]` -/
def P16685138752624601872.Spec : Prop :=
  ∀ n, (P16685138752624601872.a n : ℤ) = A201474 (n + 1)

theorem P16685138752624601872.correct : P16685138752624601872.Spec := by
  intro n
  simp only [A201474, Nat.add_sub_cancel]

end A201474

/-! ## A201474.P11558379381693098305

`or(1, p?[or(5, 2*n²)])`
-/

namespace A201474.P11558379381693098305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201474.P11558379381693098305

namespace A201474

/-- `or(1, p?[or(5, 2*n²)])` -/
def P11558379381693098305.Spec : Prop :=
  ∀ n, (P11558379381693098305.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P976935382925200325

`record[∑{p}[2*n²+5, #]]`
-/

namespace A201474.P976935382925200325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201474.P976935382925200325

namespace A201474

/-- `record[∑{p}[2*n²+5, #]]` -/
def P976935382925200325.Spec : Prop :=
  ∀ n, (P976935382925200325.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P18176775204542510518

`or(1, p?[n*2*n+5])`
-/

namespace A201474.P18176775204542510518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201474.P18176775204542510518

namespace A201474

/-- `or(1, p?[n*2*n+5])` -/
def P18176775204542510518.Spec : Prop :=
  ∀ n, (P18176775204542510518.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P2247914165166041616

`∏{d}[p?[n*2*n+5], #]`
-/

namespace A201474.P2247914165166041616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201474.P2247914165166041616

namespace A201474

/-- `∏{d}[p?[n*2*n+5], #]` -/
def P2247914165166041616.Spec : Prop :=
  ∀ n, (P2247914165166041616.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P2280751115975700917

`∑{p}[p?[n*2*n+5], #]`
-/

namespace A201474.P2280751115975700917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201474.P2280751115975700917

namespace A201474

/-- `∑{p}[p?[n*2*n+5], #]` -/
def P2280751115975700917.Spec : Prop :=
  ∀ n, (P2280751115975700917.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P17087158129170477447

`∏{p}[p?[n*2*n+5], #]`
-/

namespace A201474.P17087158129170477447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201474.P17087158129170477447

namespace A201474

/-- `∏{p}[p?[n*2*n+5], #]` -/
def P17087158129170477447.Spec : Prop :=
  ∀ n, (P17087158129170477447.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P7249740058881668259

`or(p?[or(5, n*2*n)], char[1])`
-/

namespace A201474.P7249740058881668259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (n * (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (if ∃ j, f2 j = n then 1 else 0)

end

end A201474.P7249740058881668259

namespace A201474

/-- `or(p?[or(5, n*2*n)], char[1])` -/
def P7249740058881668259.Spec : Prop :=
  ∀ n, (P7249740058881668259.a n : ℤ) = A201474 (n + 1)

end A201474

/-! ## A201474.P6625409803876016631

`xor(1, p?[n*2*n+5]-1)`
-/

namespace A201474.P6625409803876016631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A201474.P6625409803876016631

namespace A201474

/-- `xor(1, p?[n*2*n+5]-1)` -/
def P6625409803876016631.Spec : Prop :=
  ∀ n, P6625409803876016631.a n = A201474 (n + 1)

end A201474

/-! ## A201474.P8285057164447322836

`p?[A056220(n)+6]/(n-Δ[n²]+n+2)`
-/

namespace A201474.P8285057164447322836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + (n + 2 : ℤ) : ℚ)

end

end A201474.P8285057164447322836

namespace A201474

/-- `p?[A056220(n)+6]/(n-Δ[n²]+n+2)` -/
def P8285057164447322836.Spec : Prop :=
  ∀ n, P8285057164447322836.a n = (A201474 (n + 1) : ℚ)

end A201474

/-!
# A201475: Primes of the form 2n^2 + 7.

The programs for A201475, there is no canonical definition to state claims against.
-/

/-! ## A201475.P444219324168934417

`p?[2*n²+7]`
-/

namespace A201475.P444219324168934417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201475.P444219324168934417

/-! ## A201475.P10065315984087119693

`or(1, p?[n*(n+n)+7])`
-/

namespace A201475.P10065315984087119693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + n) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201475.P10065315984087119693

/-! ## A201475.P7904523412577215356

`∏{p}[p?[A195321(n)+7], #]`
-/

namespace A201475.P7904523412577215356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201475.P7904523412577215356

/-! ## A201475.P16256089046437751002

`lcm(p?[A000982(n)+7], A033999(n))`
-/

namespace A201475.P16256089046437751002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A201475.P16256089046437751002

/-! ## A201475.P6640170464975823870

`or(p?[A000982(n)+7], A023531(n))`
-/

namespace A201475.P6640170464975823870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A023531 n)

end

end A201475.P6640170464975823870

/-! ## A201475.P13512665776667873506

`or(p?[A000982(n)+7], A321016(n+1))`
-/

namespace A201475.P13512665776667873506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A321016 (n + 1))

end

end A201475.P13512665776667873506

/-! ## A201475.P10742446030790268299

`p?[A000982(n)+7]%A000594(2*(n+1))`
-/

namespace A201475.P10742446030790268299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000594 (2 * (n + 1)))

end

end A201475.P10742446030790268299

/-!
# A201476: Primes of the form 2*k^2 + 9.

The programs for A201476, there is no canonical definition to state claims against.
-/

/-! ## A201476.P1866891926061329947

`A339048(A111040(n+1))`
-/

namespace A201476.P1866891926061329947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339048 (A111040 (n + 1)).toNat

end

end A201476.P1866891926061329947

/-! ## A201476.P16460237401119257528

`A155966(A111040(n+1))+dr(A145644(n))`
-/

namespace A201476.P16460237401119257528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A145644 n) : ℤ)

end

end A201476.P16460237401119257528

/-! ## A201476.P7856903857502299099

`A155966(A111040(n+1))+char[A057163(n)]`
-/

namespace A201476.P7856903857502299099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201476.P7856903857502299099

/-! ## A201476.P623157930828575293

`A155966(A111040(n+1))+char[A289234(n)]`
-/

namespace A201476.P623157930828575293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201476.P623157930828575293

/-! ## A201476.P12608951823774195631

`A193957(C(2, n))+A155966(A111040(n+1))`
-/

namespace A201476.P12608951823774195631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193957 (Nat.choose 2 n) + A155966 (A111040 (n + 1)).toNat

end

end A201476.P12608951823774195631

/-! ## A201476.P3144682100530049974

`A155966(A111040(n+1))+A055664(n+2)%3`
-/

namespace A201476.P3144682100530049974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + Int.tmod (A055664 (n + 2)) 3

end

end A201476.P3144682100530049974

/-! ## A201476.P12838872145479673570

`A155966(A111040(n+1))+A000792(C(2, n+2))`
-/

namespace A201476.P12838872145479673570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A000792 (Nat.choose 2 (n + 2))

end

end A201476.P12838872145479673570

/-! ## A201476.P7756845724962223644

`A155966(A111040(n+1))+A066657(C(2, n+2))`
-/

namespace A201476.P7756845724962223644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A066657 (Nat.choose 2 (n + 2))

end

end A201476.P7756845724962223644

/-! ## A201476.P902127585370642310

`A155966(A111040(n+1))+A063050(∑{digits}[n, and(1, #)])`
-/

namespace A201476.P902127585370642310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A063050 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A201476.P902127585370642310

/-! ## A201476.P11178612134493866898

`A155966(A111040(n+1))+A063053(∑{digits}[n, and(1, #)])`
-/

namespace A201476.P11178612134493866898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A063053 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A201476.P11178612134493866898

/-! ## A201476.P13488258816407733261

`A155966(A111040(n+1))+A063056(∑{digits}[n, and(1, #)])`
-/

namespace A201476.P13488258816407733261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A063056 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A201476.P13488258816407733261

/-! ## A201476.P10173618329570940525

`A155966(A111040(n+1))+A063059(∑{digits}[n, and(1, #)])`
-/

namespace A201476.P10173618329570940525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A063059 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A201476.P10173618329570940525

/-! ## A201476.P11355949322719368193

`A320105(A000040(n+1))+A155966(A111040(n+1))`
-/

namespace A201476.P11355949322719368193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A000040 (n + 1)).toNat + A155966 (A111040 (n + 1)).toNat

end

end A201476.P11355949322719368193

/-! ## A201476.P13156476522173266687

`A320105(3*p?[round(8*n/7)])+A155966(A111040(n+1))`
-/

namespace A201476.P13156476522173266687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A155966 (A111040 (n + 1)).toNat

end

end A201476.P13156476522173266687

/-! ## A201476.P3170606663310560228

`A320105(A234695(n+3))+A155966(A111040(n+1))`
-/

namespace A201476.P3170606663310560228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A234695 (n + 3)).toNat + A155966 (A111040 (n + 1)).toNat

end

end A201476.P3170606663310560228

/-! ## A201476.P7092992470470698538

`A155966(A111040(n+1))+A145644(30*n)`
-/

namespace A201476.P7092992470470698538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155966 (A111040 (n + 1)).toNat + A145644 (30 * n)

end

end A201476.P7092992470470698538

/-! ## A201476.P18120523911122550673

`p?[2*n²+9]`
-/

namespace A201476.P18120523911122550673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201476.P18120523911122550673

/-! ## A201476.P8525154259251134150

`or(1, p?[2*n*n+9])`
-/

namespace A201476.P8525154259251134150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201476.P8525154259251134150

/-! ## A201476.P11864456433502726813

`∏{d}[p?[n*2*n+9], #]`
-/

namespace A201476.P11864456433502726813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201476.P11864456433502726813

/-! ## A201476.P16798586600475909100

`∑{p}[p?[n*2*n+9], #]`
-/

namespace A201476.P16798586600475909100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201476.P16798586600475909100

/-!
# A201477: Primes of the form 3n^2 + 4.

The programs for A201477, there is no canonical definition to state claims against.
-/

/-! ## A201477.P10615973741287497044

`A005918(A111052(n+1))+2`
-/

namespace A201477.P10615973741287497044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (A111052 (n + 1)).toNat + 2

end

end A201477.P10615973741287497044

/-! ## A201477.P10202741805610481548

`p?[3*n²+4]`
-/

namespace A201477.P10202741805610481548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201477.P10202741805610481548

/-! ## A201477.P2995609623877849566

`∏{d}[p?[xor(4, 3*n²)], #]`
-/

namespace A201477.P2995609623877849566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (3 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201477.P2995609623877849566

/-! ## A201477.P14405339511019253126

`∏{p}[p?[xor(4, 3*n²)], #]`
-/

namespace A201477.P14405339511019253126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (3 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201477.P14405339511019253126

/-! ## A201477.P138574737437642182

`or(1, p?[n*3*n+4])`
-/

namespace A201477.P138574737437642182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201477.P138574737437642182

/-! ## A201477.P6418868115540259902

`∑{p}[p?[n*3*n+4], #]`
-/

namespace A201477.P6418868115540259902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201477.P6418868115540259902

/-! ## A201477.P5106164488853180357

`∏{p}[p?[lcm(3, n²+1)+1], #]`
-/

namespace A201477.P5106164488853180357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n ^ 2 + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201477.P5106164488853180357

/-! ## A201477.P1159847911510283870

`∏{p}[p?[3*(n*(n+2)+2)+1], #]`
-/

namespace A201477.P1159847911510283870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (n + 2) + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201477.P1159847911510283870

/-!
# A201478: Primes of the form 3n^2 + 5.

The programs for A201478, there is no canonical definition to state claims against.
-/

/-! ## A201478.P10097477489748672609

`p?[3*n²+5]`
-/

namespace A201478.P10097477489748672609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201478.P10097477489748672609

/-! ## A201478.P17816426720011052573

`or(1, p?[n*3*n+5])`
-/

namespace A201478.P17816426720011052573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201478.P17816426720011052573

/-! ## A201478.P10981402976156949359

`∏{p}[p?[n*3*n+5], #]`
-/

namespace A201478.P10981402976156949359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201478.P10981402976156949359

/-! ## A201478.P4098805846666574042

`abs(2-p?[n*3*n+5])+2`
-/

namespace A201478.P4098805846666574042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 2

end

end A201478.P4098805846666574042

/-! ## A201478.P11188179464000671487

`or(p?[A084684(n)+4], char[2])`
-/

namespace A201478.P11188179464000671487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201478.P11188179464000671487

/-! ## A201478.P11032057748399418309

`or(1, p?[A158480(n)+4]-1)`
-/

namespace A201478.P11032057748399418309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A201478.P11032057748399418309

/-! ## A201478.P17212527849631836403

`A007318(C(3, n))*p?[A033428(n)+5]`
-/

namespace A201478.P17212527849631836403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201478.P17212527849631836403

/-! ## A201478.P25256346067086184

`A000041(n*char[1])*p?[A033428(n)+5]`
-/

namespace A201478.P25256346067086184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n * (if ∃ j, f1 j = n then 1 else 0)) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201478.P25256346067086184

/-! ## A201478.P13406086197581328635

`A014963(10*(n+1))*p?[A033428(n)+5]`
-/

namespace A201478.P13406086197581328635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201478.P13406086197581328635

/-! ## A201478.P17770859411037884275

`p?[A033428(n)+5]+val(A000040(n+1), 8)`
-/

namespace A201478.P17770859411037884275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 8 : ℤ)

end

end A201478.P17770859411037884275

/-!
# A201479: Primes of the form 3n^2 + 7.

The programs for A201479, there is no canonical definition to state claims against.
-/

/-! ## A201479.P8454500528591881510

`p?[3*n²+7]`
-/

namespace A201479.P8454500528591881510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201479.P8454500528591881510

/-!
# A201480: Primes of the form 3n^2 + 10.

The programs for A201480, there is no canonical definition to state claims against.
-/

/-! ## A201480.P14510170337719800456

`p?[3*n²+10]`
-/

namespace A201480.P14510170337719800456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201480.P14510170337719800456

/-! ## A201480.P14966733835322656262

`or(1, p?[A106648(n)+5])`
-/

namespace A201480.P14966733835322656262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201480.P14966733835322656262

/-! ## A201480.P12811128146332539053

`∏{p}[p?[A106648(2*n)+5], #]`
-/

namespace A201480.P12811128146332539053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 (2 * n) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201480.P12811128146332539053

/-! ## A201480.P14023186002525533045

`lcm(A020985(n)², p?[A106648(n)+5])`
-/

namespace A201480.P14023186002525533045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201480.P14023186002525533045

/-! ## A201480.P4601271661439858416

`A000038(n+1)+p?[A106648(n)+5]`
-/

namespace A201480.P4601271661439858416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201480.P4601271661439858416

/-! ## A201480.P3131841480422715633

`A007318(C(2, n))*p?[A106648(n)+5]`
-/

namespace A201480.P3131841480422715633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201480.P3131841480422715633

/-! ## A201480.P1141784747887747474

`p?[A106648(n)+5]%A000032(n+13)`
-/

namespace A201480.P1141784747887747474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000032 (n + 13))

end

end A201480.P1141784747887747474

/-! ## A201480.P6076804945887922625

`p?[A106648(n)+5]+C(n, A238327(n))`
-/

namespace A201480.P6076804945887922625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose n (A238327 n).toNat : ℤ)

end

end A201480.P6076804945887922625

/-! ## A201480.P13927129559394168186

`A018252(gcd(n, n+1))*p?[A106648(n)+5]`
-/

namespace A201480.P13927129559394168186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201480.P13927129559394168186

/-! ## A201480.P11298253688385635921

`p?[A106648(n)+5]+A000045(C(n, n+1))`
-/

namespace A201480.P11298253688385635921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (Nat.choose n (n + 1))

end

end A201480.P11298253688385635921

/-!
# A201481: Primes of the form 5*k^2 + 2, k >= 0.

The programs for A201481, there is no canonical definition to state claims against.
-/

/-! ## A201481.P13963975646545542420

`p?[5*n²+2]`
-/

namespace A201481.P13963975646545542420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201481.P13963975646545542420

/-! ## A201481.P4538969513613679860

`or(2, p?[or(2, 5*n²)])`
-/

namespace A201481.P4538969513613679860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (5 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201481.P4538969513613679860

/-! ## A201481.P1634023137534983953

`∏{d}[p?[xor(2, 5*n²)], #]`
-/

namespace A201481.P1634023137534983953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201481.P1634023137534983953

/-! ## A201481.P4624339801007143213

`∑{p}[p?[xor(2, 5*n²)], #]`
-/

namespace A201481.P4624339801007143213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201481.P4624339801007143213

/-! ## A201481.P11182926770091015214

`∏{p}[p?[xor(2, 5*n²)], #]`
-/

namespace A201481.P11182926770091015214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201481.P11182926770091015214

/-! ## A201481.P8494172140104867042

`or(2, p?[n*5*n+2])`
-/

namespace A201481.P8494172140104867042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201481.P8494172140104867042

/-! ## A201481.P8689301325831611722

`root(p?[xor(2, 5*n²)], 2)²`
-/

namespace A201481.P8689301325831611722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 * n ^ 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A201481.P8689301325831611722

/-! ## A201481.P11189246911467094744

`∏{d}[p?[n*5*n+2], #]`
-/

namespace A201481.P11189246911467094744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201481.P11189246911467094744

/-! ## A201481.P11697302256616602858

`((-1)^n)²*p?[xor(2, 5*n²)]`
-/

namespace A201481.P11697302256616602858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A201481.P11697302256616602858

/-!
# A201482: Primes of the form 5n^2 + 3.

The programs for A201482, there is no canonical definition to state claims against.
-/

/-! ## A201482.P14716037156915688737

`p?[5*n²+3]`
-/

namespace A201482.P14716037156915688737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201482.P14716037156915688737

/-! ## A201482.P17691395397300830664

`or(1, p?[xor(3, 5*n²)])`
-/

namespace A201482.P17691395397300830664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201482.P17691395397300830664

/-! ## A201482.P7808138763728871243

`∏{d}[p?[xor(3, 5*n²)], #]`
-/

namespace A201482.P7808138763728871243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201482.P7808138763728871243

/-! ## A201482.P679290669523621693

`∏{p}[p?[xor(3, 5*n²)], #]`
-/

namespace A201482.P679290669523621693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201482.P679290669523621693

/-! ## A201482.P2826484367252384598

`or(2, p?[n*5*n+3])`
-/

namespace A201482.P2826484367252384598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201482.P2826484367252384598

/-! ## A201482.P1933034399440135571

`∏{d}[p?[n*5*n+3], #]`
-/

namespace A201482.P1933034399440135571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201482.P1933034399440135571

/-! ## A201482.P10695630671439690266

`xor(xor(p?[xor(3, 5*n²)]-n, -1)-n, -1)`
-/

namespace A201482.P10695630671439690266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (5 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)) (-1) - (n : ℤ)) (-1)

end

end A201482.P10695630671439690266

/-! ## A201482.P17673442860856802003

`p?[A059100(n)+A053755(n)]+A008683(4*(n+1))`
-/

namespace A201482.P17673442860856802003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n + A053755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201482.P17673442860856802003

/-! ## A201482.P4128214924341187174

`A000040(n+2)%2*p?[A059100(n)+A053755(n)]`
-/

namespace A201482.P4128214924341187174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n + A053755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201482.P4128214924341187174

/-! ## A201482.P16585541948088657843

`p?[A059100(n)+A053755(n)]%A000040(n+1)²²`
-/

namespace A201482.P16585541948088657843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n + A053755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A000040 (n + 1) ^ 2) ^ 2)

end

end A201482.P16585541948088657843

/-!
# A201483: primes of the form 5n^2 + 4.

The programs for A201483, there is no canonical definition to state claims against.
-/

/-! ## A201483.P9771491145315099476

`A010001(A111148(n+1))+2`
-/

namespace A201483.P9771491145315099476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 (A111148 (n + 1)).toNat + 2

end

end A201483.P9771491145315099476

/-! ## A201483.P12806505412672134107

`∩[A142314(n+1), A193765(n+2)]`
-/

namespace A201483.P12806505412672134107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193765 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201483.P12806505412672134107

/-! ## A201483.P3914373024192518021

`p?[5*n²+4]`
-/

namespace A201483.P3914373024192518021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201483.P3914373024192518021

/-! ## A201483.P1933505527662350141

`or(1, p?[n*5*n+4])`
-/

namespace A201483.P1933505527662350141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201483.P1933505527662350141

/-! ## A201483.P15345566099516219413

`p?[(n+2)*5*n+9]%A175747(n+1)`
-/

namespace A201483.P15345566099516219413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (5 * n) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A175747 (n + 1))

end

end A201483.P15345566099516219413

/-!
# A201484: Primes of the form 5n^2 + 6.

The programs for A201484, there is no canonical definition to state claims against.
-/

/-! ## A201484.P17105623463596203717

`p?[5*n²+6]`
-/

namespace A201484.P17105623463596203717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201484.P17105623463596203717

/-! ## A201484.P6967470855378869272

`or(1, p?[n*5*n+6])`
-/

namespace A201484.P6967470855378869272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201484.P6967470855378869272

/-! ## A201484.P9961114170948699998

`∏{p}[p?[A033429(n)+6], #]`
-/

namespace A201484.P9961114170948699998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201484.P9961114170948699998

/-! ## A201484.P9263882401099646780

`A007318(∑[n])*p?[A033429(n)+6]`
-/

namespace A201484.P9263882401099646780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201484.P9263882401099646780

/-! ## A201484.P4290604151615514023

`A000108(C(2, n+2))*p?[A033429(n)+6]`
-/

namespace A201484.P4290604151615514023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201484.P4290604151615514023

/-!
# A201485: Primes of the form 5n^2 + 7.

The programs for A201485, there is no canonical definition to state claims against.
-/

/-! ## A201485.P13612286359493068053

`p?[5*n²+7]`
-/

namespace A201485.P13612286359493068053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201485.P13612286359493068053

/-! ## A201485.P14866082215322915378

`∑{p}[p?[n*5*n+7], #]`
-/

namespace A201485.P14866082215322915378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201485.P14866082215322915378

/-! ## A201485.P6188847678450606561

`xor(1, p?[n*5*n+7]-1)`
-/

namespace A201485.P6188847678450606561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A201485.P6188847678450606561

/-! ## A201485.P4231651652464395045

`p?[n*5*n+7]*A211110(A000040(n+1))`
-/

namespace A201485.P4231651652464395045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A211110 (A000040 (n + 1)).toNat

end

end A201485.P4231651652464395045

/-! ## A201485.P2882304912505697402

`A000027(p?[∑[a(n-1)+40]])` with `a(0)=6, a(1)=1, a(2)=20`
-/

namespace A201485.P2882304912505697402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 20] fun n f2 =>
  f2 (n - 1) + 40

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201485.P2882304912505697402

/-!
# A201486: Primes of the form 5n^2 + 8.

The programs for A201486, there is no canonical definition to state claims against.
-/

/-! ## A201486.P17651719071019926210

`p?[5*n²+8]`
-/

namespace A201486.P17651719071019926210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201486.P17651719071019926210

/-! ## A201486.P6218573195166268784

`record[p?[a(n-2)+20*n]]` with `a(0)=13, a(1)=2`
-/

namespace A201486.P6218573195166268784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [13, 2] fun n f2 =>
  f2 (n - 2) + 20 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201486.P6218573195166268784

/-! ## A201486.P4805918449070218749

`or(1, p?[A134538(n+1)+9])`
-/

namespace A201486.P4805918449070218749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201486.P4805918449070218749

/-!
# A201487: Primes of the form 5n^2 + 9.

The programs for A201487, there is no canonical definition to state claims against.
-/

/-! ## A201487.P16079874591146164389

`p?[5*n²+9]`
-/

namespace A201487.P16079874591146164389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201487.P16079874591146164389

/-! ## A201487.P4429699492256007541

`∏{p}[p?[xor(9, 5*n²)], #]`
-/

namespace A201487.P4429699492256007541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 (5 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201487.P4429699492256007541

/-! ## A201487.P7778701318310381308

`xor(1, p?[n*5*n+9]-1)`
-/

namespace A201487.P7778701318310381308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A201487.P7778701318310381308

/-! ## A201487.P8391674608397805483

`abs(1-p?[n*5*n+9])+1`
-/

namespace A201487.P8391674608397805483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * n) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 1

end

end A201487.P8391674608397805483

/-! ## A201487.P8306081287346903340

`or(1, p?[A027578(n)-1])`
-/

namespace A201487.P8306081287346903340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201487.P8306081287346903340

/-! ## A201487.P16414262284687769053

`A007318(∑[n])*p?[A027578(n)-1]`
-/

namespace A201487.P16414262284687769053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201487.P16414262284687769053

/-! ## A201487.P5857549890277017741

`p?[A027578(n)-1]/A007318(C(2, n))`
-/

namespace A201487.P5857549890277017741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201487.P5857549890277017741

/-! ## A201487.P1134385615440393431

`p?[A027578(n)-1]^A007318(and(1, -n))`
-/

namespace A201487.P1134385615440393431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℤ)

end

end A201487.P1134385615440393431

/-! ## A201487.P8563721847095502926

`p?[A027578(n)-1]/A007318(∑[n+1])`
-/

namespace A201487.P8563721847095502926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A201487.P8563721847095502926

/-! ## A201487.P14993342173722747583

`p?[A027578(n)-1]+A008683(4*(n+1))`
-/

namespace A201487.P14993342173722747583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201487.P14993342173722747583

/-!
# A201488: Decimal expansion of maximal success probability of the CHSH game.

The programs for A201488, there is no canonical definition to state claims against.
-/

/-! ## A201488.P827222904336187771

`9-A100954(n+1)`
-/

namespace A201488.P827222904336187771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A100954 (n + 1 + 1)

end

end A201488.P827222904336187771

/-! ## A201488.P8493299938834031768

`A020765(n)+C(A020765(n+1), A271508(n+1))`
-/

namespace A201488.P8493299938834031768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020765 n + (Nat.choose (A020765 (n + 1)).toNat (A271508 (n + 1)).toNat : ℤ)

end

end A201488.P8493299938834031768

/-! ## A201488.P9546055448508934517

`A020765(n)+C(5, A086377(3*n+1))`
-/

namespace A201488.P9546055448508934517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020765 n + (Nat.choose 5 (A086377 (3 * n + 1)).toNat : ℤ)

end

end A201488.P9546055448508934517

/-!
# A201489: Number of n X n zero-sum -2..2 arrays with rows and columns lexicographically nondecreasing.

The programs for A201489, there is no canonical definition to state claims against.
-/

/-! ## A201489.P13222345866306323705

`A201496(∑[4*n]+1)`
-/

namespace A201489.P13222345866306323705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201489.P13222345866306323705

/-!
# A201490: Number of nX2 zero-sum -2..2 arrays with rows and columns lexicographically nondecreasing.

The programs for A201490, there is no canonical definition to state claims against.
-/

/-! ## A201490.P12974817607205041907

`A201496(∑[n+1]+2)`
-/

namespace A201490.P12974817607205041907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201490.P12974817607205041907

/-! ## A201490.P2763298599631835732

`record[A201496(record[A127672(n)])]`
-/

namespace A201490.P2763298599631835732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201490.P2763298599631835732

/-!
# A201491: Number of nX3 zero-sum -2..2 arrays with rows and columns lexicographically nondecreasing.

The programs for A201491, there is no canonical definition to state claims against.
-/

/-! ## A201491.P3290437189844223773

`A201496(∑[n+2]+4)`
-/

namespace A201491.P3290437189844223773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201491.P3290437189844223773

/-! ## A201491.P17669169518539328110

`A201496(A046691(n)+7)+char[22]`
-/

namespace A201491.P17669169518539328110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201491.P17669169518539328110

/-! ## A201491.P17441365506425404717

`A124778(n)*A201496(A167614(n+1))`
-/

namespace A201491.P17441365506425404717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n * A201496 (A167614 (n + 1)).toNat

end

end A201491.P17441365506425404717

/-! ## A201491.P8435547712488007216

`or(A000007(n), A201496(A167614(n+1)))`
-/

namespace A201491.P8435547712488007216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A201496 (A167614 (n + 1)).toNat)

end

end A201491.P8435547712488007216

/-! ## A201491.P10947465526493282005

`or(A005369(n), A201496(A167614(n+1)))`
-/

namespace A201491.P10947465526493282005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A201496 (A167614 (n + 1)).toNat)

end

end A201491.P10947465526493282005

/-!
# A201492: Number of n X 4 zero-sum -2..2 arrays with rows and columns lexicographically nondecreasing.

The programs for A201492, there is no canonical definition to state claims against.
-/

/-! ## A201492.P10840972187454394969

`A201496(A141214(n)+7)`
-/

namespace A201492.P10840972187454394969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A141214 n + 7).toNat

end

end A201492.P10840972187454394969

/-! ## A201492.P2661741268736028616

`A201496(A052905(n)+9)`
-/

namespace A201492.P2661741268736028616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A052905 n + 9).toNat

end

end A201492.P2661741268736028616

/-! ## A201492.P8165426942530936919

`A201496(A055999(n)+10)`
-/

namespace A201492.P8165426942530936919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A055999 n + 10).toNat

end

end A201492.P8165426942530936919

/-! ## A201492.P1042240447485130839

`A201496(eq[5, A066657(n)])`
-/

namespace A201492.P1042240447485130839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201492.P1042240447485130839

/-! ## A201492.P17575260724925661904

`A201496(A167614(n+2)+1)`
-/

namespace A201492.P17575260724925661904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A167614 (n + 2) + 1).toNat

end

end A201492.P17575260724925661904

/-!
# A201493: Number of nX5 zero-sum -2..2 arrays with rows and columns lexicographically nondecreasing.

The programs for A201493, there is no canonical definition to state claims against.
-/

/-! ## A201493.P3382077874674161730

`A201496(A374005(n+1))`
-/

namespace A201493.P3382077874674161730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A374005 (n + 1)).toNat

end

end A201493.P3382077874674161730

/-! ## A201493.P7648530410254525200

`A201496(eq[8, A057728(n+1)])`
-/

namespace A201493.P7648530410254525200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201493.P7648530410254525200

/-!
# A201494: Number of nX6 zero-sum -2..2 arrays with rows and columns lexicographically nondecreasing.

The programs for A201494, there is no canonical definition to state claims against.
-/

/-! ## A201494.P12952320690604449527

`A201496(A374007(n+1))`
-/

namespace A201494.P12952320690604449527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A374007 (n + 1)).toNat

end

end A201494.P12952320690604449527

/-!
# A201495: 

The programs for A201495, there is no canonical definition to state claims against.
-/

/-! ## A201495.P4987447776473069136

`A201496(A027379(n+4)+10)`
-/

namespace A201495.P4987447776473069136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201496 (A027379 (n + 4) + 10).toNat

end

end A201495.P4987447776473069136

/-!
# A201497: Number of permutations that avoid the barred pattern bar{1}43bar{5}2.

The programs for A201497, there is no canonical definition to state claims against.
-/

/-! ## A201497.P15210257734692158937

`A122993(n)-A123074(A122983(n))`
-/

namespace A201497.P15210257734692158937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122993 n - A123074 (A122983 n).toNat

end

end A201497.P15210257734692158937

/-!
# A201498: a(n) = (prime(n) - 1)*(prime(n+1) - 1)/2 + 3.

The programs for A201498, the canonical program `A201498.P15700971035858144036` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201498 has offset 1).

The definition of A201498 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099407, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A201498.P15700971035858144036

`A099407(n+1)+3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A201498

/-- `A099407(n+1)+3` -/
def P15700971035858144036.Spec : Prop :=
  ∀ n, P15700971035858144036.a n = A201498 (n + 1)

theorem P15700971035858144036.correct : P15700971035858144036.Spec := by
  intro n
  simp only [A201498, Nat.add_sub_cancel]

end A201498

/-! ## A201498.P1155087256792119460

`A083553(n+1)/2+3`
-/

namespace A201498.P1155087256792119460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 1) : ℚ) / 2 + 3

end

end A201498.P1155087256792119460

namespace A201498

/-- `A083553(n+1)/2+3` -/
def P1155087256792119460.Spec : Prop :=
  ∀ n, P1155087256792119460.a n = (A201498 (n + 1) : ℚ)

end A201498

/-! ## A201498.P9635779095017479815

`(A037165(n+1)+7)/2`
-/

namespace A201498.P9635779095017479815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037165 (n + 1) + 7 : ℚ) / 2

end

end A201498.P9635779095017479815

namespace A201498

/-- `(A037165(n+1)+7)/2` -/
def P9635779095017479815.Spec : Prop :=
  ∀ n, P9635779095017479815.a n = (A201498 (n + 1) : ℚ)

end A201498

/-! ## A201498.P10807079982543442883

`(A000040(n+1)-1)*A005097(n+1)+3`
-/

namespace A201498.P10807079982543442883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A005097 (n + 1) + 3

end

end A201498.P10807079982543442883

namespace A201498

/-- `(A000040(n+1)-1)*A005097(n+1)+3` -/
def P10807079982543442883.Spec : Prop :=
  ∀ n, P10807079982543442883.a n = A201498 (n + 1)

end A201498

/-! ## A201498.P1831503990914283185

`record[ceil(abs((1-n)/2))*A340071(n+1)]+3`
-/

namespace A201498.P1831503990914283185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ * A340071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A201498.P1831503990914283185

namespace A201498

/-- `record[ceil(abs((1-n)/2))*A340071(n+1)]+3` -/
def P1831503990914283185.Spec : Prop :=
  ∀ n, P1831503990914283185.a n = A201498 (n + 1)

end A201498

/-! ## A201498.P9034947083035585586

`A322809(A083553(n+1)+2)`
-/

namespace A201498.P9034947083035585586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A083553 (n + 1) + 2).toNat

end

end A201498.P9034947083035585586

namespace A201498

/-- `A322809(A083553(n+1)+2)` -/
def P9034947083035585586.Spec : Prop :=
  ∀ n, P9034947083035585586.a n = A201498 (n + 1)

end A201498

/-!
# A201499: Number of n X n 0..1 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201499, there is no canonical definition to state claims against.
-/

/-! ## A201499.P11926436429562000767

`A201503(∑[4*n]+1)`
-/

namespace A201499.P11926436429562000767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201499.P11926436429562000767

/-! ## A201499.P8124053548229468595

`gcd(2, n)*A029895(n+1)`
-/

namespace A201499.P8124053548229468595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A029895 (n + 1)

end

end A201499.P8124053548229468595

/-! ## A201499.P14249289937518959197

`Δ[A007494(n)]*A029895(n+1)`
-/

namespace A201499.P14249289937518959197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A029895 (n + 1)

end

end A201499.P14249289937518959197

/-! ## A201499.P13160909350723349824

`A000034(n+1)*A029895(n+1)`
-/

namespace A201499.P13160909350723349824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A029895 (n + 1)

end

end A201499.P13160909350723349824

/-! ## A201499.P16782272613529017953

`A014695((n+1)²)*A029895(n+1)`
-/

namespace A201499.P16782272613529017953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n + 1) ^ 2) * A029895 (n + 1)

end

end A201499.P16782272613529017953

