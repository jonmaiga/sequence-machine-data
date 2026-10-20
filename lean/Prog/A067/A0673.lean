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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A067300: One third of third column of triangle A067298.

The programs for A067300, there is no canonical definition to state claims against.
-/

/-! ## A067300.P774133653963255819

`A067304(∑[n+3])/3`
-/

namespace A067300.P774133653963255819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067304 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A067300.P774133653963255819

/-!
# A067301: One eighth of fourth column of triangle A067298.

The programs for A067301, there is no canonical definition to state claims against.
-/

/-! ## A067301.P8961129914047850635

`A067298(A052905(n)+8)/8`
-/

namespace A067301.P8961129914047850635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067298 (A052905 n + 8).toNat : ℚ) / 8

end

end A067301.P8961129914047850635

/-!
# A067302: Row sums of triangle A067298 and of A067304.

The programs for A067302, there is no canonical definition to state claims against.
-/

/-! ## A067302.P15779515853064333784

`(n/2+1)*A067297(n)`
-/

namespace A067302.P15779515853064333784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A067297 n : ℚ)

end

end A067302.P15779515853064333784

/-! ## A067302.P18189156064655563232

`∪[A067303(n), A067322(n)]`
-/

namespace A067302.P18189156064655563232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067302.P18189156064655563232

/-! ## A067302.P11935259652674650083

`∪[(n+1)*A067320(n), A067322(n)]`
-/

namespace A067302.P11935259652674650083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067302.P11935259652674650083

/-! ## A067302.P15610624117613629427

`∪[(n+1)*A067297(2*n), A067322(n)]`
-/

namespace A067302.P15610624117613629427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067297 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067302.P15610624117613629427

/-!
# A067303: Even-indexed members of A067302.

The programs for A067303, there is no canonical definition to state claims against.
-/

/-! ## A067303.P3421861697909810878

`A067302(2*n)`
-/

namespace A067303.P3421861697909810878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067302 (2 * n)

end

end A067303.P3421861697909810878

/-! ## A067303.P17180292770434713533

`(n+1)*A067297(2*n)`
-/

namespace A067303.P17180292770434713533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067297 (2 * n)

end

end A067303.P17180292770434713533

/-! ## A067303.P11588643632767142259

`(n+1)*A067320(n)`
-/

namespace A067303.P11588643632767142259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067320 n

end

end A067303.P11588643632767142259

/-! ## A067303.P6441018021109961964

`record[A067302(A014681(n))]`
-/

namespace A067303.P6441018021109961964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067302 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067303.P6441018021109961964

/-! ## A067303.P14440873323097883167

`record[A067302(A068527(n))]`
-/

namespace A067303.P14440873323097883167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067302 (A068527 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067303.P14440873323097883167

/-!
# A067304: Generalized Catalan triangle A067298 with row reversion.

The programs for A067304, there is no canonical definition to state claims against.
-/

/-! ## A067304.P1544375453501686721

`A067298(∑[2*n]%comp[∑[n]])`
-/

namespace A067304.P1544375453501686721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A067304.P1544375453501686721

/-! ## A067304.P38303875213559848

`A067298(∑[char[∑[n]]]²-(n+1))`
-/

namespace A067304.P38303875213559848
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A067304.P38303875213559848

/-! ## A067304.P4073791712824377138

`A067298(A061579(n))%A067298(2*n+3)`
-/

namespace A067304.P4073791712824377138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067298 (A061579 n).toNat) (A067298 (2 * n + 3))

end

end A067304.P4073791712824377138

/-! ## A067304.P3107596552948115625

`A067298(A061579(n))%A358830(n+2)`
-/

namespace A067304.P3107596552948115625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067298 (A061579 n).toNat) (A358830 (n + 2))

end

end A067304.P3107596552948115625

/-!
# A067305: Second column of triangle A067304.

The programs for A067305, there is no canonical definition to state claims against.
-/

/-! ## A067305.P2278474681424393685

`A067297(n+1)-A064340(n+1)`
-/

namespace A067305.P2278474681424393685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067297 (n + 1) - A064340 (n + 1)

end

end A067305.P2278474681424393685

/-! ## A067305.P13118160284719934118

`A067304(∑[n+1]+1)`
-/

namespace A067305.P13118160284719934118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067305.P13118160284719934118

/-! ## A067305.P14932906297359032473

`A067298(∑[n+1]+n)`
-/

namespace A067305.P14932906297359032473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A067305.P14932906297359032473

/-! ## A067305.P18198797733468762748

`A067297(n+1)-record[A067328(n)]`
-/

namespace A067305.P18198797733468762748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067297 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067305.P18198797733468762748

/-! ## A067305.P10336998393240922435

`A067297(n+1)-A067328(A000124(n+1))`
-/

namespace A067305.P10336998393240922435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067297 (n + 1) - A067328 (A000124 (n + 1)).toNat

end

end A067305.P10336998393240922435

/-! ## A067305.P5238461097592398892

`A067297(n+1)+A067307(n)-A067306(n+1)`
-/

namespace A067305.P5238461097592398892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067297 (n + 1) + (A067307 n - A067306 (n + 1))

end

end A067305.P5238461097592398892

/-!
# A067306: One-fourth of third column of triangle A067304.

The programs for A067306, there is no canonical definition to state claims against.
-/

/-! ## A067306.P9486480113531112593

`(A067297(n+2)-(A064340(n+2)+A064340(n+1)))/4`
-/

namespace A067306.P9486480113531112593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067297 (n + 2) - (A064340 (n + 2) + A064340 (n + 1)) : ℚ) / 4

end

end A067306.P9486480113531112593

/-! ## A067306.P18083400118409057821

`A067298(∑[n+3])/4`
-/

namespace A067306.P18083400118409057821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067298 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A067306.P18083400118409057821

/-!
# A067307: One-fourth of fourth column of triangle A067304.

The programs for A067307, there is no canonical definition to state claims against.
-/

/-! ## A067307.P9554940348944751212

`A067306(n+1)-record[A067328(n)]`
-/

namespace A067307.P9554940348944751212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067306 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067307.P9554940348944751212

/-! ## A067307.P9533184543040201950

`A067306(n+1)-A064340(n+1)`
-/

namespace A067307.P9533184543040201950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067306 (n + 1) - A064340 (n + 1)

end

end A067307.P9533184543040201950

/-! ## A067307.P11304788748116033647

`A067306(n+1)-A067328(A000124(n+1))`
-/

namespace A067307.P11304788748116033647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067306 (n + 1) - A067328 (A000124 (n + 1)).toNat

end

end A067307.P11304788748116033647

/-! ## A067307.P14029401030885302576

`A067306(n+1)+A067305(n)-A067297(n+1)`
-/

namespace A067307.P14029401030885302576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067306 (n + 1) + (A067305 n - A067297 (n + 1))

end

end A067307.P14029401030885302576

/-!
# A067309: Number of symmetric unlabeled digraphs (unlabeled digraphs with nontrivial automorphism group).

The programs for A067309, there is no canonical definition to state claims against.
-/

/-! ## A067309.P1529346397225551504

`A000273(n)-A051504(n)`
-/

namespace A067309.P1529346397225551504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - A051504 n

end

end A067309.P1529346397225551504

/-! ## A067309.P13860106375735607544

`∑[A053598(n)]-A051504(n)`
-/

namespace A067309.P13860106375735607544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051504 n

end

end A067309.P13860106375735607544

/-! ## A067309.P12417056584627529184

`∑[A217654(∑[n])]-A051504(n)`
-/

namespace A067309.P12417056584627529184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051504 n

end

end A067309.P12417056584627529184

/-! ## A067309.P8846445899023858740

`A329874(A028310(∑[n]))-A051504(n)`
-/

namespace A067309.P8846445899023858740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329874 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A051504 n

end

end A067309.P8846445899023858740

/-!
# A067310: Square table read by antidiagonals of number of ways of arranging n chords on a circle with k simple intersections (i.e., no intersections with 3 or more chords).

The programs for A067310, there is no canonical definition to state claims against.
-/

/-! ## A067310.P9832869459196090292

`A122890(n)-A324802(A046741(n))`
-/

namespace A067310.P9832869459196090292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A324802 (A046741 n).toNat

end

end A067310.P9832869459196090292

/-! ## A067310.P16871899784914873345

`A122890(n)-A341026(A156953(n))`
-/

namespace A067310.P16871899784914873345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A341026 ((A156953 n).toNat + 165)

end

end A067310.P16871899784914873345

/-! ## A067310.P10087480742060546258

`A072619(A122890(n)^A152798(n))`
-/

namespace A067310.P10087480742060546258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072619 (SequenceMachineLib.roundAway ((A122890 n : ℚ) ^ (A152798 n : ℤ))).toNat

end

end A067310.P10087480742060546258

/-! ## A067310.P13020589736333953318

`A072619(A122890(n)^A318191(n))`
-/

namespace A067310.P13020589736333953318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072619 (SequenceMachineLib.roundAway ((A122890 n : ℚ) ^ (A318191 n : ℤ))).toNat

end

end A067310.P13020589736333953318

/-! ## A067310.P5703756119884510941

`A395304(n)+A198381(A051390(n+1))`
-/

namespace A067310.P5703756119884510941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395304 n + A198381 (A051390 (n + 1)).toNat

end

end A067310.P5703756119884510941

/-!
# A067312: Largest leg in right triangle with relatively prime sides and hypotenuse 5^n.

The programs for A067312, there is no canonical definition to state claims against.
-/

/-! ## A067312.P5316388282304098609

`A230711(2*(n+1))`
-/

namespace A067312.P5316388282304098609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230711 (2 * (n + 1))

end

end A067312.P5316388282304098609

/-! ## A067312.P278767813876211156

`record[A230711(xor(1, n)+1)]`
-/

namespace A067312.P278767813876211156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230711 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067312.P278767813876211156

/-! ## A067312.P5230561630212973234

`record[A230711(∑[3-((n+1)%3)²])]`
-/

namespace A067312.P5230561630212973234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((((n + 1) % 3) ^ 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230711 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067312.P5230561630212973234

/-! ## A067312.P11930873357161241300

`record[A230711(A003417(n))]`
-/

namespace A067312.P11930873357161241300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230711 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067312.P11930873357161241300

/-! ## A067312.P15814994279036745254

`record[A230711(A133265(n))]`
-/

namespace A067312.P15814994279036745254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230711 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067312.P15814994279036745254

/-!
# A067313: Numbers k such that sigma_k(k)/k is an integer, where sigma_k(k) is the sum of the k-th powers of the divisors of k (A023887).

The programs for A067313, there is no canonical definition to state claims against.
-/

/-! ## A067313.P17302734851593580245

`A349155(n+1)+A073200(A362800(n))`
-/

namespace A067313.P17302734851593580245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349155 (n + 1) + A073200 (A362800 n).toNat

end

end A067313.P17302734851593580245

/-!
# A067315: Numbers k such that binomial(k, floor(k/2)) is not divisible by k.

The programs for A067315, the canonical program `A067315.P10432000283421290337` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067315 has offset 1).

The definition of A067315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067315.P1329579015083855332

`2*lt[1, A053214(n)]`
-/

namespace A067315.P1329579015083855332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067315.P1329579015083855332

namespace A067315

/-- `2*lt[1, A053214(n)]` -/
def P1329579015083855332.Spec : Prop :=
  ∀ n, (P1329579015083855332.a n : ℤ) = A067315 (n + 1)

end A067315

/-! ## A067315.P1528555772780652379

`lt[0, A042970(n+1)]+1`
-/

namespace A067315.P1528555772780652379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067315.P1528555772780652379

namespace A067315

/-- `lt[0, A042970(n+1)]+1` -/
def P1528555772780652379.Spec : Prop :=
  ∀ n, (P1528555772780652379.a n : ℤ) = A067315 (n + 1)

end A067315

/-! ## A067315.P3172148054078030346

`A056167(Δ[n²])+2`
-/

namespace A067315.P3172148054078030346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056167 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A067315.P3172148054078030346

namespace A067315

/-- `A056167(Δ[n²])+2` -/
def P3172148054078030346.Spec : Prop :=
  ∀ n, P3172148054078030346.a n = A067315 (n + 1)

end A067315

/-! ## A067315.P10432000283421290337

`lt[1, A049077(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067315

/-- `lt[1, A049077(n+1)]+1` -/
def P10432000283421290337.Spec : Prop :=
  ∀ n, (P10432000283421290337.a n : ℤ) = A067315 (n + 1)

theorem P10432000283421290337.correct : P10432000283421290337.Spec := by
  intro n
  simp only [A067315, Nat.add_sub_cancel]

end A067315

/-! ## A067315.P6160387499931743898

`lt[A057815(n+1), n]+1`
-/

namespace A067315.P6160387499931743898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067315.P6160387499931743898

namespace A067315

/-- `lt[A057815(n+1), n]+1` -/
def P6160387499931743898.Spec : Prop :=
  ∀ n, (P6160387499931743898.a n : ℤ) = A067315 (n + 1)

end A067315

/-! ## A067315.P6724258001692376408

`lt[gcd(n, A181861(n)), n]`
-/

namespace A067315.P6724258001692376408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A181861 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067315.P6724258001692376408

namespace A067315

/-- `lt[gcd(n, A181861(n)), n]` -/
def P6724258001692376408.Spec : Prop :=
  ∀ n, (P6724258001692376408.a n : ℤ) = A067315 (n + 1)

end A067315

/-! ## A067315.P11397893644580092889

`eq[0, A106458(A007012(n))]`
-/

namespace A067315.P11397893644580092889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A007012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067315.P11397893644580092889

namespace A067315

/-- `eq[0, A106458(A007012(n))]` -/
def P11397893644580092889.Spec : Prop :=
  ∀ n, (P11397893644580092889.a n : ℤ) = A067315 (n + 1)

end A067315

/-! ## A067315.P6101998113230764261

`eq[1, A215619(n+3)]+3`
-/

namespace A067315.P6101998113230764261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215619 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A067315.P6101998113230764261

namespace A067315

/-- `eq[1, A215619(n+3)]+3` -/
def P6101998113230764261.Spec : Prop :=
  ∀ n, (P6101998113230764261.a n : ℤ) = A067315 (n + 1)

end A067315

/-! ## A067315.P2516993144873329784

`eq[2, A091090(A007012(n)²)]`
-/

namespace A067315.P2516993144873329784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A007012 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067315.P2516993144873329784

namespace A067315

/-- `eq[2, A091090(A007012(n)²)]` -/
def P2516993144873329784.Spec : Prop :=
  ∀ n, (P2516993144873329784.a n : ℤ) = A067315 (n + 1)

end A067315

/-!
# A067317: Numbers k such that 1 + binomial(k,j) is prime for only 2 values of j (0 <= j <= k).

The programs for A067317, there is no canonical definition to state claims against.
-/

/-! ## A067317.P50113969444949368

`eq[2, A067316(n)]`
-/

namespace A067317.P50113969444949368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067317.P50113969444949368

/-! ## A067317.P13635951113087554498

`record[A106790(n+1)]`
-/

namespace A067317.P13635951113087554498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067317.P13635951113087554498

/-! ## A067317.P5951213450412728019

`eq[n, A106790(abs(1-n)+1)]`
-/

namespace A067317.P5951213450412728019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106790 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067317.P5951213450412728019

/-! ## A067317.P15602078634655088732

`record[gcd(n, A106790(A123108(2*n)))]`
-/

namespace A067317.P15602078634655088732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A106790 (A123108 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067317.P15602078634655088732

/-! ## A067317.P4283349148885441820

`eq[A000027(n+1), A106790(n+1)]+1`
-/

namespace A067317.P4283349148885441820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067317.P4283349148885441820

/-!
# A067318: Sum of the reflection lengths of all permutations of n letters.

The programs for A067318, the canonical program `A067318.P4371926111959039693` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067318 has offset 1).

The definition of A067318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067318.P4371926111959039693

`(n+1)*a(n-1)+n*n!` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067318

/-- `(n+1)*a(n-1)+n*n!` -/
def P4371926111959039693.Spec : Prop :=
  ∀ n, (P4371926111959039693.a n : ℤ) = A067318 (n + 1)

theorem P4371926111959039693.correct : P4371926111959039693.Spec := by
  intro n
  simp only [A067318, Nat.add_sub_cancel]

end A067318

/-! ## A067318.P1502054809760388428

`A062119(n+1)-A001705(n)`
-/

namespace A067318.P1502054809760388428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1) - A001705 n

end

end A067318.P1502054809760388428

namespace A067318

/-- `A062119(n+1)-A001705(n)` -/
def P1502054809760388428.Spec : Prop :=
  ∀ n, P1502054809760388428.a n = A067318 (n + 1)

end A067318

/-! ## A067318.P2223103850508566548

`(n+1)!*∑[n/(n+1)]`
-/

namespace A067318.P2223103850508566548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067318.P2223103850508566548

namespace A067318

/-- `(n+1)!*∑[n/(n+1)]` -/
def P2223103850508566548.Spec : Prop :=
  ∀ n, P2223103850508566548.a n = (A067318 (n + 1) : ℚ)

end A067318

/-! ## A067318.P7575596347111144238

`∑[n/(n+1)]*∏[n+1]`
-/

namespace A067318.P7575596347111144238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A067318.P7575596347111144238

namespace A067318

/-- `∑[n/(n+1)]*∏[n+1]` -/
def P7575596347111144238.Spec : Prop :=
  ∀ n, P7575596347111144238.a n = (A067318 (n + 1) : ℚ)

end A067318

/-! ## A067318.P11281252361807856121

`Δ[n!]+(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A067318.P11281252361807856121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ) * a (n - 1)

end

end A067318.P11281252361807856121

namespace A067318

/-- `Δ[n!]+(n+1)*a(n-1)` -/
def P11281252361807856121.Spec : Prop :=
  ∀ n, P11281252361807856121.a n = A067318 (n + 1)

end A067318

/-! ## A067318.P15129987171503638902

`∑[n*A121586(n)]`
-/

namespace A067318.P15129987171503638902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067318.P15129987171503638902

namespace A067318

/-- `∑[n*A121586(n)]` -/
def P15129987171503638902.Spec : Prop :=
  ∀ n, P15129987171503638902.a n = A067318 (n + 1)

end A067318

/-! ## A067318.P17691127510338669256

`A121586(n+1)-∏[n+1]`
-/

namespace A067318.P17691127510338669256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 (n + 1) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A067318.P17691127510338669256

namespace A067318

/-- `A121586(n+1)-∏[n+1]` -/
def P17691127510338669256.Spec : Prop :=
  ∀ n, P17691127510338669256.a n = A067318 (n + 1)

end A067318

/-! ## A067318.P15689928452719654139

`Δ[A121586(n)]-A000254(n)`
-/

namespace A067318.P15689928452719654139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000254 n

end

end A067318.P15689928452719654139

namespace A067318

/-- `Δ[A121586(n)]-A000254(n)` -/
def P15689928452719654139.Spec : Prop :=
  ∀ n, P15689928452719654139.a n = A067318 (n + 1)

end A067318

/-! ## A067318.P15439722328733595920

`2*A180119(n)-A001705(n)`
-/

namespace A067318.P15439722328733595920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180119 n - A001705 n

end

end A067318.P15439722328733595920

namespace A067318

/-- `2*A180119(n)-A001705(n)` -/
def P15439722328733595920.Spec : Prop :=
  ∀ n, P15439722328733595920.a n = A067318 (n + 1)

end A067318

/-! ## A067318.P874925496120138276

`n*Δ[A007489(n)]-A001705(n)`
-/

namespace A067318.P874925496120138276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A001705 n

end

end A067318.P874925496120138276

namespace A067318

/-- `n*Δ[A007489(n)]-A001705(n)` -/
def P874925496120138276.Spec : Prop :=
  ∀ n, P874925496120138276.a n = A067318 (n + 1)

end A067318

/-!
# A067320: Even-indexed members of A067297.

The programs for A067320, there is no canonical definition to state claims against.
-/

/-! ## A067320.P4955532866335621720

`A067297(2*n)`
-/

namespace A067320.P4955532866335621720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067297 (2 * n)

end

end A067320.P4955532866335621720

/-! ## A067320.P7589463538697073958

`A067304(n*Δ[n²])`
-/

namespace A067320.P7589463538697073958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A067320.P7589463538697073958

/-! ## A067320.P4541469318546352746

`A067298(n*(2*n+3))`
-/

namespace A067320.P4541469318546352746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 (n * (2 * n + 3))

end

end A067320.P4541469318546352746

/-! ## A067320.P16065931363910233242

`record[gcd(A067297(n), A090192(n))]`
-/

namespace A067320.P16065931363910233242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067297 n) (A090192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067320.P16065931363910233242

/-! ## A067320.P10946770764888872171

`A067303(n)/(n+1)`
-/

namespace A067320.P10946770764888872171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067303 n : ℚ) / (n + 1 : ℚ)

end

end A067320.P10946770764888872171

/-!
# A067321: One-half of odd-indexed members of A067297.

The programs for A067321, there is no canonical definition to state claims against.
-/

/-! ## A067321.P9074466263415421244

`A067297(2*n+1)/2`
-/

namespace A067321.P9074466263415421244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067297 (2 * n + 1) : ℚ) / 2

end

end A067321.P9074466263415421244

/-! ## A067321.P11358138496328335537

`A067304(2*(n+1)²)`
-/

namespace A067321.P11358138496328335537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067304 (2 * (n + 1) ^ 2)

end

end A067321.P11358138496328335537

/-! ## A067321.P2811565695707330381

`A067298(A056220(n+1))`
-/

namespace A067321.P2811565695707330381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067298 (A056220 (n + 1)).toNat

end

end A067321.P2811565695707330381

/-! ## A067321.P3358359397061723098

`A067322(n)/A005408(n+1)`
-/

namespace A067321.P3358359397061723098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067322 n : ℚ) / (A005408 (n + 1) : ℚ)

end

end A067321.P3358359397061723098

/-! ## A067321.P3344513593857387965

`A067304(A000217(2*n+1))/2`
-/

namespace A067321.P3344513593857387965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067304 (A000217 (2 * n + 1)).toNat : ℚ) / 2

end

end A067321.P3344513593857387965

/-!
# A067322: Odd-indexed members of A067302.

The programs for A067322, there is no canonical definition to state claims against.
-/

/-! ## A067322.P18437103375044830908

`A067302(2*n+1)`
-/

namespace A067322.P18437103375044830908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067302 (2 * n + 1)

end

end A067322.P18437103375044830908

/-! ## A067322.P12299718905569177180

`(2*n+3)*A067297(2*n+1)/2`
-/

namespace A067322.P12299718905569177180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3 : ℤ) * A067297 (2 * n + 1) : ℚ) / 2

end

end A067322.P12299718905569177180

/-! ## A067322.P14061392487786904231

`record[A067302(A014681(n)+1)]`
-/

namespace A067322.P14061392487786904231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067302 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067322.P14061392487786904231

/-! ## A067322.P17016737570643855662

`record[A067302(A068527(n)+1)]`
-/

namespace A067322.P17016737570643855662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067302 (A068527 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067322.P17016737570643855662

/-! ## A067322.P15461040857074146555

`A002024(A000217(2*n+3))*A067321(n)`
-/

namespace A067322.P15461040857074146555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000217 (2 * n + 3)).toNat * A067321 n

end

end A067322.P15461040857074146555

/-!
# A067323: Catalan triangle A028364 with row reversion.

The programs for A067323, there is no canonical definition to state claims against.
-/

/-! ## A067323.P5854898011220572941

`A028364(A061579(n))`
-/

namespace A067323.P5854898011220572941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A061579 n).toNat

end

end A067323.P5854898011220572941

/-! ## A067323.P11379982199778933613

`A028364(A114327(n)+n)`
-/

namespace A067323.P11379982199778933613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A114327 n + (n : ℤ)).toNat

end

end A067323.P11379982199778933613

/-! ## A067323.P13050193810052263336

`A028364(A038722(n+1)-1)`
-/

namespace A067323.P13050193810052263336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A038722 (n + 1) - 1).toNat

end

end A067323.P13050193810052263336

/-! ## A067323.P18186932683450673107

`A028364(A093995(n+1)-(n+1))`
-/

namespace A067323.P18186932683450673107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A067323.P18186932683450673107

/-! ## A067323.P11342610753428555253

`A028364((A003056(n)+1)²-(n+1))`
-/

namespace A067323.P11342610753428555253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A067323.P11342610753428555253

/-! ## A067323.P2470631723456372653

`A028364(A057944(n)+A025581(n))`
-/

namespace A067323.P2470631723456372653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A057944 n + A025581 n).toNat

end

end A067323.P2470631723456372653

/-! ## A067323.P7703001681058689915

`A028378(A038722(n+1)-A003056(n))`
-/

namespace A067323.P7703001681058689915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A038722 (n + 1) - A003056 n).toNat

end

end A067323.P7703001681058689915

/-!
# A067324: Third column of triangle A067323.

The programs for A067324, the canonical program `A067324.P1061078649515513046` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067324 has offset 0).

The definition of A067324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067324.P3111141359467269124

`Δ[∏[(n-3)/(n+3)+3]-1-∑[(4-6/(n+1))*a(n-1)]]` with `a(0)=1`
-/

namespace A067324.P3111141359467269124
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (n + 3 : ℚ) + 3

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  (4 - 6 / (n + 1 : ℚ)) * f3 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1 - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067324.P3111141359467269124

namespace A067324

/-- `Δ[∏[(n-3)/(n+3)+3]-1-∑[(4-6/(n+1))*a(n-1)]]` -/
def P3111141359467269124.Spec : Prop :=
  ∀ n, P3111141359467269124.a n = (A067324 n : ℚ)

end A067324

/-! ## A067324.P14524900566440678950

`Δ[A289450(n+2)]`
-/

namespace A067324.P14524900566440678950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289450 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067324.P14524900566440678950

namespace A067324

/-- `Δ[A289450(n+2)]` -/
def P14524900566440678950.Spec : Prop :=
  ∀ n, P14524900566440678950.a n = A067324 n

end A067324

/-! ## A067324.P6725919463592020448

`Δ[A289588(n+3)]`
-/

namespace A067324.P6725919463592020448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289588 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067324.P6725919463592020448

namespace A067324

/-- `Δ[A289588(n+3)]` -/
def P6725919463592020448.Spec : Prop :=
  ∀ n, P6725919463592020448.a n = A067324 n

end A067324

/-! ## A067324.P9219641248993222498

`Δ[A106271(n)+∏[(n-3)/(n+3)+3]-1]`
-/

namespace A067324.P9219641248993222498
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (n + 3 : ℚ) + 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106271 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067324.P9219641248993222498

namespace A067324

/-- `Δ[A106271(n)+∏[(n-3)/(n+3)+3]-1]` -/
def P9219641248993222498.Spec : Prop :=
  ∀ n, P9219641248993222498.a n = (A067324 n : ℚ)

end A067324

/-! ## A067324.P10420172512858600

`A071722(n)+A033434(n)`
-/

namespace A067324.P10420172512858600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 n + A033434 n

end

end A067324.P10420172512858600

namespace A067324

/-- `A071722(n)+A033434(n)` -/
def P10420172512858600.Spec : Prop :=
  ∀ n, P10420172512858600.a n = A067324 n

end A067324

/-! ## A067324.P11725353175848093179

`A114277(n)+A014137(n)`
-/

namespace A067324.P11725353175848093179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 n + A014137 n

end

end A067324.P11725353175848093179

namespace A067324

/-- `A114277(n)+A014137(n)` -/
def P11725353175848093179.Spec : Prop :=
  ∀ n, P11725353175848093179.a n = A067324 n

end A067324

/-! ## A067324.P1061078649515513046

`∑[A002057(n)+A000108(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067324

/-- `∑[A002057(n)+A000108(n)]` -/
def P1061078649515513046.Spec : Prop :=
  ∀ n, P1061078649515513046.a n = A067324 n

theorem P1061078649515513046.correct : P1061078649515513046.Spec := by
  intro n
  simp only [A067324]

end A067324

/-! ## A067324.P8893752751757862767

`record[A115140(n)+A071724(n)]`
-/

namespace A067324.P8893752751757862767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n + A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067324.P8893752751757862767

namespace A067324

/-- `record[A115140(n)+A071724(n)]` -/
def P8893752751757862767.Spec : Prop :=
  ∀ n, P8893752751757862767.a n = A067324 n

end A067324

/-! ## A067324.P8417802892718036199

`A002057(n)+A000245(n+1)`
-/

namespace A067324.P8417802892718036199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000245 (n + 1)

end

end A067324.P8417802892718036199

namespace A067324

/-- `A002057(n)+A000245(n+1)` -/
def P8417802892718036199.Spec : Prop :=
  ∀ n, P8417802892718036199.a n = A067324 n

end A067324

/-! ## A067324.P13763113205476126016

`A071719(n)+A000782(n+1)`
-/

namespace A067324.P13763113205476126016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 n + A000782 (n + 1)

end

end A067324.P13763113205476126016

namespace A067324

/-- `A071719(n)+A000782(n+1)` -/
def P13763113205476126016.Spec : Prop :=
  ∀ n, P13763113205476126016.a n = A067324 n

end A067324

/-! ## A067324.P3092903526735277140

`A071724(n+1)+A002057(n)`
-/

namespace A067324.P3092903526735277140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + A002057 n

end

end A067324.P3092903526735277140

namespace A067324

/-- `A071724(n+1)+A002057(n)` -/
def P3092903526735277140.Spec : Prop :=
  ∀ n, P3092903526735277140.a n = A067324 n

end A067324

/-! ## A067324.P4609177777836484784

`A070031(n)+A026016(n+1)`
-/

namespace A067324.P4609177777836484784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070031 n + A026016 (n + 1)

end

end A067324.P4609177777836484784

namespace A067324

/-- `A070031(n)+A026016(n+1)` -/
def P4609177777836484784.Spec : Prop :=
  ∀ n, P4609177777836484784.a n = A067324 n

end A067324

/-! ## A067324.P3752604216101357757

`A099376(n)+A026012(n+1)`
-/

namespace A067324.P3752604216101357757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026012 (n + 1)

end

end A067324.P3752604216101357757

namespace A067324

/-- `A099376(n)+A026012(n+1)` -/
def P3752604216101357757.Spec : Prop :=
  ∀ n, P3752604216101357757.a n = A067324 n

end A067324

/-! ## A067324.P18215805516136960384

`A014138(n)+A114277(n)+1`
-/

namespace A067324.P18215805516136960384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + (A114277 n + 1)

end

end A067324.P18215805516136960384

namespace A067324

/-- `A014138(n)+A114277(n)+1` -/
def P18215805516136960384.Spec : Prop :=
  ∀ n, P18215805516136960384.a n = A067324 n

end A067324

/-! ## A067324.P7742613452997083892

`A071736(n+1)-A026029(n)`
-/

namespace A067324.P7742613452997083892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 (n + 1) - A026029 n

end

end A067324.P7742613452997083892

namespace A067324

/-- `A071736(n+1)-A026029(n)` -/
def P7742613452997083892.Spec : Prop :=
  ∀ n, P7742613452997083892.a n = A067324 n

end A067324

/-! ## A067324.P8624962990430382995

`A279557(n+2)+A014138(n)`
-/

namespace A067324.P8624962990430382995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 (n + 2) + A014138 n

end

end A067324.P8624962990430382995

namespace A067324

/-- `A279557(n+2)+A014138(n)` -/
def P8624962990430382995.Spec : Prop :=
  ∀ n, P8624962990430382995.a n = A067324 n

end A067324

/-! ## A067324.P12055160195996599040

`∑[A099376(n+1)+A000108(n)]`
-/

namespace A067324.P12055160195996599040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067324.P12055160195996599040

namespace A067324

/-- `∑[A099376(n+1)+A000108(n)]` -/
def P12055160195996599040.Spec : Prop :=
  ∀ n, P12055160195996599040.a n = A067324 n

end A067324

/-! ## A067324.P2468448875883702992

`A002057(n)+Δ[A000108(n+1)]`
-/

namespace A067324.P2468448875883702992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (f1 (n + 1) - f1 n)

end

end A067324.P2468448875883702992

namespace A067324

/-- `A002057(n)+Δ[A000108(n+1)]` -/
def P2468448875883702992.Spec : Prop :=
  ∀ n, P2468448875883702992.a n = A067324 n

end A067324

/-! ## A067324.P7276260670810102564

`∑[A026012(n+1)-A000245(n)]`
-/

namespace A067324.P7276260670810102564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067324.P7276260670810102564

namespace A067324

/-- `∑[A026012(n+1)-A000245(n)]` -/
def P7276260670810102564.Spec : Prop :=
  ∀ n, P7276260670810102564.a n = A067324 n

end A067324

/-! ## A067324.P12899665905267630738

`A099376(n)+Δ[A000245(n+1)]`
-/

namespace A067324.P12899665905267630738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + (f1 (n + 1) - f1 n)

end

end A067324.P12899665905267630738

namespace A067324

/-- `A099376(n)+Δ[A000245(n+1)]` -/
def P12899665905267630738.Spec : Prop :=
  ∀ n, P12899665905267630738.a n = A067324 n

end A067324

/-!
# A067325: Fourth column of triangle A067323.

The programs for A067325, the canonical program `A067325.P15197000550133949116` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067325 has offset 0).

The definition of A067325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067325.P15197000550133949116

`A067324(n+1)-2*A000108(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067325

/-- `A067324(n+1)-2*A000108(n+1)` -/
def P15197000550133949116.Spec : Prop :=
  ∀ n, P15197000550133949116.a n = A067325 n

theorem P15197000550133949116.correct : P15197000550133949116.Spec := by
  intro n
  simp only [A067325]

end A067325

/-! ## A067325.P7633385247081252695

`A002057(n+1)+A099376(n)+A002057(n)`
-/

namespace A067325.P7633385247081252695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) + (A099376 n + A002057 n)

end

end A067325.P7633385247081252695

namespace A067325

/-- `A002057(n+1)+A099376(n)+A002057(n)` -/
def P7633385247081252695.Spec : Prop :=
  ∀ n, P7633385247081252695.a n = A067325 n

end A067325

/-! ## A067325.P11009233829706718729

`A071721(n+1)+A120989(n+1)+A002057(n)`
-/

namespace A067325.P11009233829706718729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 (n + 1) + (A120989 (n + 1) + A002057 n)

end

end A067325.P11009233829706718729

namespace A067325

/-- `A071721(n+1)+A120989(n+1)+A002057(n)` -/
def P11009233829706718729.Spec : Prop :=
  ∀ n, P11009233829706718729.a n = A067325 n

end A067325

/-! ## A067325.P10541899832289021808

`A071718(n+1)+A002057(n)+A000344(n+2)`
-/

namespace A067325.P10541899832289021808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) + (A002057 n + A000344 (n + 2))

end

end A067325.P10541899832289021808

namespace A067325

/-- `A071718(n+1)+A002057(n)+A000344(n+2)` -/
def P10541899832289021808.Spec : Prop :=
  ∀ n, P10541899832289021808.a n = A067325 n

end A067325

/-! ## A067325.P13149590048147723506

`A114277(n+1)+A014137(n)-A000108(n+1)`
-/

namespace A067325.P13149590048147723506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 (n + 1) + (A014137 n - A000108 (n + 1))

end

end A067325.P13149590048147723506

namespace A067325

/-- `A114277(n+1)+A014137(n)-A000108(n+1)` -/
def P13149590048147723506.Spec : Prop :=
  ∀ n, P13149590048147723506.a n = A067325 n

end A067325

/-! ## A067325.P3032523946600442104

`A071718(n+1)+A099376(n+1)+A000344(n+2)`
-/

namespace A067325.P3032523946600442104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) + (A099376 (n + 1) + A000344 (n + 2))

end

end A067325.P3032523946600442104

namespace A067325

/-- `A071718(n+1)+A099376(n+1)+A000344(n+2)` -/
def P3032523946600442104.Spec : Prop :=
  ∀ n, P3032523946600442104.a n = A067325 n

end A067325

/-! ## A067325.P17168417955269664022

`A000245(n+1)+A306423(n+4)+A000344(n+2)`
-/

namespace A067325.P17168417955269664022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A306423 (n + 4) + A000344 (n + 2))

end

end A067325.P17168417955269664022

namespace A067325

/-- `A000245(n+1)+A306423(n+4)+A000344(n+2)` -/
def P17168417955269664022.Spec : Prop :=
  ∀ n, P17168417955269664022.a n = A067325 n

end A067325

/-! ## A067325.P15026432122368542808

`A382668(n+3)-(A280891(n+2)+A000108(n+1))`
-/

namespace A067325.P15026432122368542808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382668 (n + 3) - (A280891 (n + 2) + A000108 (n + 1))

end

end A067325.P15026432122368542808

namespace A067325

/-- `A382668(n+3)-(A280891(n+2)+A000108(n+1))` -/
def P15026432122368542808.Spec : Prop :=
  ∀ n, P15026432122368542808.a n = A067325 n

end A067325

/-! ## A067325.P16613687156833038174

`A028378(∑[n+3]+1)`
-/

namespace A067325.P16613687156833038174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067325.P16613687156833038174

namespace A067325

/-- `A028378(∑[n+3]+1)` -/
def P16613687156833038174.Spec : Prop :=
  ∀ n, P16613687156833038174.a n = A067325 n

end A067325

/-! ## A067325.P1207839442579201790

`A028364(∑[n+4]+2)`
-/

namespace A067325.P1207839442579201790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A067325.P1207839442579201790

namespace A067325

/-- `A028364(∑[n+4]+2)` -/
def P1207839442579201790.Spec : Prop :=
  ∀ n, P1207839442579201790.a n = A067325 n

end A067325

/-! ## A067325.P5098581248433305977

`A067323(∑[n+3]+6)`
-/

namespace A067325.P5098581248433305977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A067325.P5098581248433305977

namespace A067325

/-- `A067323(∑[n+3]+6)` -/
def P5098581248433305977.Spec : Prop :=
  ∀ n, P5098581248433305977.a n = A067325 n

end A067325

/-! ## A067325.P16220461686908138952

`A028376(Δ[A264443(n)])`
-/

namespace A067325.P16220461686908138952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (f1 (n + 1) - f1 n).toNat

end

end A067325.P16220461686908138952

namespace A067325

/-- `A028376(Δ[A264443(n)])` -/
def P16220461686908138952.Spec : Prop :=
  ∀ n, P16220461686908138952.a n = A067325 n

end A067325

/-! ## A067325.P9223519439176348813

`A028376(A056115(n)+11)`
-/

namespace A067325.P9223519439176348813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A056115 n + 11).toNat

end

end A067325.P9223519439176348813

namespace A067325

/-- `A028376(A056115(n)+11)` -/
def P9223519439176348813.Spec : Prop :=
  ∀ n, P9223519439176348813.a n = A067325 n

end A067325

/-! ## A067325.P13926444866468421553

`A028376(A264443(n+1)-A264443(n))`
-/

namespace A067325.P13926444866468421553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A264443 (n + 1) - A264443 n).toNat

end

end A067325.P13926444866468421553

namespace A067325

/-- `A028376(A264443(n+1)-A264443(n))` -/
def P13926444866468421553.Spec : Prop :=
  ∀ n, P13926444866468421553.a n = A067325 n

end A067325

/-!
# A067326: Fifth column of triangle A067323.

The programs for A067326, there is no canonical definition to state claims against.
-/

/-! ## A067326.P4433746882625700901

`A028378(∑[n+4]+3)`
-/

namespace A067326.P4433746882625700901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A067326.P4433746882625700901

/-! ## A067326.P2972796641785211653

`A028364(∑[n+5]+5)`
-/

namespace A067326.P2972796641785211653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A067326.P2972796641785211653

/-! ## A067326.P11221030391509399418

`A067323(A155212(n)+12)`
-/

namespace A067326.P11221030391509399418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A155212 n + 12).toNat

end

end A067326.P11221030391509399418

/-! ## A067326.P9892695883781427948

`A067323(A056000(n)+14)`
-/

namespace A067326.P9892695883781427948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A056000 n + 14).toNat

end

end A067326.P9892695883781427948

/-! ## A067326.P2043494215995992776

`A067323(eq[3, A141169(n)])`
-/

namespace A067326.P2043494215995992776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067326.P2043494215995992776

/-! ## A067326.P7955257032226063137

`A028376(Δ[A264443(n+1)]-1)`
-/

namespace A067326.P7955257032226063137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (f1 (n + 1) - f1 n - 1).toNat

end

end A067326.P7955257032226063137

/-!
# A067327: Triangle related to generalized Catalan numbers A064340.

The programs for A067327, there is no canonical definition to state claims against.
-/

/-! ## A067327.P10297970354198304836

`A067328(n)*A122391(A158405(n+1))`
-/

namespace A067327.P10297970354198304836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067328 n * A122391 (A158405 (n + 1)).toNat

end

end A067327.P10297970354198304836

/-!
# A067328: Scaled triangle A067327.

The programs for A067328, there is no canonical definition to state claims against.
-/

/-! ## A067328.P17026157687616417983

`A067327(n)/A122391(A158405(n+1))`
-/

namespace A067328.P17026157687616417983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067327 n : ℚ) / (A122391 (A158405 (n + 1)).toNat : ℚ)

end

end A067328.P17026157687616417983

/-! ## A067328.P2931315671253926879

`A291636(A135878(n)%A050281(n+1))`
-/

namespace A067328.P2931315671253926879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (Int.tmod (A135878 n) (A050281 (n + 1))).toNat

end

end A067328.P2931315671253926879

/-! ## A067328.P8023047281547194182

`A291636(A135878(n)^A099634(2*(n+3)))`
-/

namespace A067328.P8023047281547194182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (SequenceMachineLib.roundAway ((A135878 n : ℚ) ^ (A099634 (2 * (n + 3)) : ℤ))).toNat

end

end A067328.P8023047281547194182

/-! ## A067328.P11638183712407238764

`A320269(C(A094587(n), A267383(n)))`
-/

namespace A067328.P11638183712407238764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (Nat.choose (A094587 n).toNat (A267383 n).toNat)

end

end A067328.P11638183712407238764

/-!
# A067330: Triangle read by rows of incomplete convolutions of Fibonacci numbers F(n+1) = A000045(n+1), n>=0.

The programs for A067330, there is no canonical definition to state claims against.
-/

/-! ## A067330.P5783326528967772624

`A067418(A061579(n))`
-/

namespace A067330.P5783326528967772624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A061579 n).toNat

end

end A067330.P5783326528967772624

/-! ## A067330.P3393381159129013683

`A067418(A038722(n+1)-1)`
-/

namespace A067330.P3393381159129013683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A038722 (n + 1) - 1).toNat

end

end A067330.P3393381159129013683

/-! ## A067330.P13493080324782215709

`A067418(A002024(n+1)²-(n+1))`
-/

namespace A067330.P13493080324782215709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A067330.P13493080324782215709

/-! ## A067330.P9547846355609389791

`A067418(round(n/(n+1)*A038722(n+1)))`
-/

namespace A067330.P9547846355609389791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ) * (A038722 (n + 1) : ℚ))).toNat

end

end A067330.P9547846355609389791

/-! ## A067330.P9796648354523762861

`A067418((n+1-A014132(n+1))²-(n+1))`
-/

namespace A067330.P9796648354523762861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (((n + 1 : ℤ) - A014132 (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A067330.P9796648354523762861

/-!
# A067331: Convolution of Fibonacci F(n+1), n >= 0, with F(n+3), n >= 0.

The programs for A067331, the canonical program `A067331.P2883430465799452445` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067331 has offset 0).

The definition of A067331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067331.P2883430465799452445

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067331

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P2883430465799452445.Spec : Prop :=
  ∀ n, P2883430465799452445.a n = A067331 n

theorem P2883430465799452445.correct : P2883430465799452445.Spec := by
  intro n
  simp only [A067331]

end A067331

/-! ## A067331.P12389563040339353027

`ogf((2+x)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A067331.P12389563040339353027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -2, -1, 2, 1] n

end

end A067331.P12389563040339353027

namespace A067331

/-- `ogf((2+x)/(1-2x-x^2+2x^3+x^4))` -/
def P12389563040339353027.Spec : Prop :=
  ∀ n, P12389563040339353027.a n = A067331 n

end A067331

/-! ## A067331.P16345467820068090870

`A166106(n+3)`
-/

namespace A067331.P16345467820068090870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166106 (n + 3)

end

end A067331.P16345467820068090870

namespace A067331

/-- `A166106(n+3)` -/
def P16345467820068090870.Spec : Prop :=
  ∀ n, P16345467820068090870.a n = A067331 n

end A067331

/-! ## A067331.P4926674188191024615

`∑[A226432(n+4)]`
-/

namespace A067331.P4926674188191024615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226432 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067331.P4926674188191024615

namespace A067331

/-- `∑[A226432(n+4)]` -/
def P4926674188191024615.Spec : Prop :=
  ∀ n, P4926674188191024615.a n = A067331 n

end A067331

/-! ## A067331.P16513072195547985214

`record[A166106(abs(3-n))]`
-/

namespace A067331.P16513072195547985214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166106 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067331.P16513072195547985214

namespace A067331

/-- `record[A166106(abs(3-n))]` -/
def P16513072195547985214.Spec : Prop :=
  ∀ n, P16513072195547985214.a n = A067331 n

end A067331

/-! ## A067331.P5464063602707543899

`∑[abs(1-A175722(n+1))]`
-/

namespace A067331.P5464063602707543899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A175722 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067331.P5464063602707543899

namespace A067331

/-- `∑[abs(1-A175722(n+1))]` -/
def P5464063602707543899.Spec : Prop :=
  ∀ n, P5464063602707543899.a n = A067331 n

end A067331

/-! ## A067331.P16070005617610832867

`A354044(n+1)+A001629(n)`
-/

namespace A067331.P16070005617610832867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (n + 1) + A001629 n

end

end A067331.P16070005617610832867

namespace A067331

/-- `A354044(n+1)+A001629(n)` -/
def P16070005617610832867.Spec : Prop :=
  ∀ n, P16070005617610832867.a n = A067331 n

end A067331

/-! ## A067331.P15885968878963250287

`A023610(n)+A001629(n+2)`
-/

namespace A067331.P15885968878963250287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + A001629 (n + 2)

end

end A067331.P15885968878963250287

namespace A067331

/-- `A023610(n)+A001629(n+2)` -/
def P15885968878963250287.Spec : Prop :=
  ∀ n, P15885968878963250287.a n = A067331 n

end A067331

/-! ## A067331.P10525471648600657105

`∑[∑[A001629(n)+A000032(n)]]`
-/

namespace A067331.P10525471648600657105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067331.P10525471648600657105

namespace A067331

/-- `∑[∑[A001629(n)+A000032(n)]]` -/
def P10525471648600657105.Spec : Prop :=
  ∀ n, P10525471648600657105.a n = A067331 n

end A067331

/-! ## A067331.P8170824821349775462

`∑[∑[A118658(n)+A029907(n)]]`
-/

namespace A067331.P8170824821349775462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A029907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067331.P8170824821349775462

namespace A067331

/-- `∑[∑[A118658(n)+A029907(n)]]` -/
def P8170824821349775462.Spec : Prop :=
  ∀ n, P8170824821349775462.a n = A067331 n

end A067331

/-! ## A067331.P14692490860013313142

`A004798(n+1)+A000045(n+1)`
-/

namespace A067331.P14692490860013313142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 1) + A000045 (n + 1)

end

end A067331.P14692490860013313142

namespace A067331

/-- `A004798(n+1)+A000045(n+1)` -/
def P14692490860013313142.Spec : Prop :=
  ∀ n, P14692490860013313142.a n = A067331 n

end A067331

/-! ## A067331.P18137779159905491342

`A023607(n+1)+A010049(n+1)`
-/

namespace A067331.P18137779159905491342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + A010049 (n + 1)

end

end A067331.P18137779159905491342

namespace A067331

/-- `A023607(n+1)+A010049(n+1)` -/
def P18137779159905491342.Spec : Prop :=
  ∀ n, P18137779159905491342.a n = A067331 n

end A067331

/-! ## A067331.P9135647031135770814

`A140992(n+2)+A000071(n+1)`
-/

namespace A067331.P9135647031135770814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140992 (n + 2) + A000071 (n + 1)

end

end A067331.P9135647031135770814

namespace A067331

/-- `A140992(n+2)+A000071(n+1)` -/
def P9135647031135770814.Spec : Prop :=
  ∀ n, P9135647031135770814.a n = A067331 n

end A067331

/-! ## A067331.P1608290392789560080

`A212804(n+2)+A004798(n+1)`
-/

namespace A067331.P1608290392789560080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A004798 (n + 1)

end

end A067331.P1608290392789560080

namespace A067331

/-- `A212804(n+2)+A004798(n+1)` -/
def P1608290392789560080.Spec : Prop :=
  ∀ n, P1608290392789560080.a n = A067331 n

end A067331

/-! ## A067331.P12779795726062600534

`A023610(n+1)-A000045(n+2)`
-/

namespace A067331.P12779795726062600534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (n + 1) - A000045 (n + 2)

end

end A067331.P12779795726062600534

namespace A067331

/-- `A023610(n+1)-A000045(n+2)` -/
def P12779795726062600534.Spec : Prop :=
  ∀ n, P12779795726062600534.a n = A067331 n

end A067331

/-! ## A067331.P7559640676914197905

`A113684(n+1)-A065220(n+2)`
-/

namespace A067331.P7559640676914197905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 (n + 1) - A065220 (n + 2)

end

end A067331.P7559640676914197905

namespace A067331

/-- `A113684(n+1)-A065220(n+2)` -/
def P7559640676914197905.Spec : Prop :=
  ∀ n, P7559640676914197905.a n = A067331 n

end A067331

/-! ## A067331.P1590125825762518902

`A079977(2*n)+A004798(n+1)`
-/

namespace A067331.P1590125825762518902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) + A004798 (n + 1)

end

end A067331.P1590125825762518902

namespace A067331

/-- `A079977(2*n)+A004798(n+1)` -/
def P1590125825762518902.Spec : Prop :=
  ∀ n, P1590125825762518902.a n = A067331 n

end A067331

/-! ## A067331.P7523805910974566351

`A006478(n+3)+A000071(n+3)`
-/

namespace A067331.P7523805910974566351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 3) + A000071 (n + 3)

end

end A067331.P7523805910974566351

namespace A067331

/-- `A006478(n+3)+A000071(n+3)` -/
def P7523805910974566351.Spec : Prop :=
  ∀ n, P7523805910974566351.a n = A067331 n

end A067331

/-! ## A067331.P10405100435777512532

`A045925(n+2)-A240847(n+3)`
-/

namespace A067331.P10405100435777512532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 2) - A240847 (n + 3)

end

end A067331.P10405100435777512532

namespace A067331

/-- `A045925(n+2)-A240847(n+3)` -/
def P10405100435777512532.Spec : Prop :=
  ∀ n, P10405100435777512532.a n = A067331 n

end A067331

/-! ## A067331.P15781435387675081313

`A000045(n+1)+∑[A055244(n+1)]`
-/

namespace A067331.P15781435387675081313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067331.P15781435387675081313

namespace A067331

/-- `A000045(n+1)+∑[A055244(n+1)]` -/
def P15781435387675081313.Spec : Prop :=
  ∀ n, P15781435387675081313.a n = A067331 n

end A067331

/-!
# A067332: Convolution of Fibonacci F(n+1), n>=0, with F(n+4), n>=0.

The programs for A067332, the canonical program `A067332.P854858703104768905` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067332 has offset 0).

The definition of A067332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067332.P854858703104768905

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=8, a(2)=19, a(3)=40`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067332

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P854858703104768905.Spec : Prop :=
  ∀ n, P854858703104768905.a n = A067332 n

theorem P854858703104768905.correct : P854858703104768905.Spec := by
  intro n
  simp only [A067332]

end A067332

/-! ## A067332.P7458139845053293376

`ogf((3+2x)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A067332.P7458139845053293376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -2, -1, 2, 1] n

end

end A067332.P7458139845053293376

namespace A067332

/-- `ogf((3+2x)/(1-2x-x^2+2x^3+x^4))` -/
def P7458139845053293376.Spec : Prop :=
  ∀ n, P7458139845053293376.a n = A067332 n

end A067332

/-! ## A067332.P11349167739424425308

`A067331(n)+A023610(n)`
-/

namespace A067332.P11349167739424425308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n + A023610 n

end

end A067332.P11349167739424425308

namespace A067332

/-- `A067331(n)+A023610(n)` -/
def P11349167739424425308.Spec : Prop :=
  ∀ n, P11349167739424425308.a n = A067332 n

end A067332

/-! ## A067332.P4669369801208414859

`∑[A055244(n)+A029907(n+2)]`
-/

namespace A067332.P4669369801208414859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n + A029907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067332.P4669369801208414859

namespace A067332

/-- `∑[A055244(n)+A029907(n+2)]` -/
def P4669369801208414859.Spec : Prop :=
  ∀ n, P4669369801208414859.a n = A067332 n

end A067332

/-! ## A067332.P8608865581919907479

`∑[A010049(n)+A006490(n+3)]`
-/

namespace A067332.P8608865581919907479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + A006490 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067332.P8608865581919907479

namespace A067332

/-- `∑[A010049(n)+A006490(n+3)]` -/
def P8608865581919907479.Spec : Prop :=
  ∀ n, P8608865581919907479.a n = A067332 n

end A067332

/-! ## A067332.P2967675047078245242

`A178521(n+2)+A001629(n+1)`
-/

namespace A067332.P2967675047078245242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (n + 2) + A001629 (n + 1)

end

end A067332.P2967675047078245242

namespace A067332

/-- `A178521(n+2)+A001629(n+1)` -/
def P2967675047078245242.Spec : Prop :=
  ∀ n, P2967675047078245242.a n = A067332 n

end A067332

/-! ## A067332.P9955339069189080488

`A004798(n+2)-A000045(n+2)`
-/

namespace A067332.P9955339069189080488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 2) - A000045 (n + 2)

end

end A067332.P9955339069189080488

namespace A067332

/-- `A004798(n+2)-A000045(n+2)` -/
def P9955339069189080488.Spec : Prop :=
  ∀ n, P9955339069189080488.a n = A067332 n

end A067332

/-! ## A067332.P4525335214186912224

`A006478(n+4)+A000071(n+1)`
-/

namespace A067332.P4525335214186912224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 4) + A000071 (n + 1)

end

end A067332.P4525335214186912224

namespace A067332

/-- `A006478(n+4)+A000071(n+1)` -/
def P4525335214186912224.Spec : Prop :=
  ∀ n, P4525335214186912224.a n = A067332 n

end A067332

/-! ## A067332.P2251544576200449283

`A023610(n+2)-A000204(n+3)`
-/

namespace A067332.P2251544576200449283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (n + 2) - A000204 (n + 3)

end

end A067332.P2251544576200449283

namespace A067332

/-- `A023610(n+2)-A000204(n+3)` -/
def P2251544576200449283.Spec : Prop :=
  ∀ n, P2251544576200449283.a n = A067332 n

end A067332

/-! ## A067332.P7054962357374237442

`A004798(n+2)-A212804(n+3)`
-/

namespace A067332.P7054962357374237442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 2) - A212804 (n + 3)

end

end A067332.P7054962357374237442

namespace A067332

/-- `A004798(n+2)-A212804(n+3)` -/
def P7054962357374237442.Spec : Prop :=
  ∀ n, P7054962357374237442.a n = A067332 n

end A067332

/-! ## A067332.P7397336129827424835

`A001629(n+1)+∑[A006490(n+3)]`
-/

namespace A067332.P7397336129827424835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067332.P7397336129827424835

namespace A067332

/-- `A001629(n+1)+∑[A006490(n+3)]` -/
def P7397336129827424835.Spec : Prop :=
  ∀ n, P7397336129827424835.a n = A067332 n

end A067332

/-! ## A067332.P8707420121069419866

`A004798(n+2)-A053602(2*n+1)`
-/

namespace A067332.P8707420121069419866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 2) - A053602 (2 * n + 1)

end

end A067332.P8707420121069419866

namespace A067332

/-- `A004798(n+2)-A053602(2*n+1)` -/
def P8707420121069419866.Spec : Prop :=
  ∀ n, P8707420121069419866.a n = A067332 n

end A067332

/-! ## A067332.P6261594967216035934

`A067331(n+1)-2*A000045(n+2)`
-/

namespace A067332.P6261594967216035934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 (n + 1) - 2 * A000045 (n + 2)

end

end A067332.P6261594967216035934

namespace A067332

/-- `A067331(n+1)-2*A000045(n+2)` -/
def P6261594967216035934.Spec : Prop :=
  ∀ n, P6261594967216035934.a n = A067332 n

end A067332

/-! ## A067332.P2000767660160926150

`A136376(n+2)+A045925(n)-A010049(n)`
-/

namespace A067332.P2000767660160926150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 2) + (A045925 n - A010049 n)

end

end A067332.P2000767660160926150

namespace A067332

/-- `A136376(n+2)+A045925(n)-A010049(n)` -/
def P2000767660160926150.Spec : Prop :=
  ∀ n, P2000767660160926150.a n = A067332 n

end A067332

/-! ## A067332.P855723605656461838

`A001595(n+1)+A002940(n+1)+A001595(n)`
-/

namespace A067332.P855723605656461838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) + (A002940 (n + 1) + A001595 n)

end

end A067332.P855723605656461838

namespace A067332

/-- `A001595(n+1)+A002940(n+1)+A001595(n)` -/
def P855723605656461838.Spec : Prop :=
  ∀ n, P855723605656461838.a n = A067332 n

end A067332

/-! ## A067332.P14187438220536011054

`A000045(n+1)+A023610(n)+A004798(n+1)`
-/

namespace A067332.P14187438220536011054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A023610 n + A004798 (n + 1))

end

end A067332.P14187438220536011054

namespace A067332

/-- `A000045(n+1)+A023610(n)+A004798(n+1)` -/
def P14187438220536011054.Spec : Prop :=
  ∀ n, P14187438220536011054.a n = A067332 n

end A067332

/-! ## A067332.P10055308912040930181

`A004798(n+1)+A055244(n+1)+A055244(n)`
-/

namespace A067332.P10055308912040930181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 1) + (A055244 (n + 1) + A055244 n)

end

end A067332.P10055308912040930181

namespace A067332

/-- `A004798(n+1)+A055244(n+1)+A055244(n)` -/
def P10055308912040930181.Spec : Prop :=
  ∀ n, P10055308912040930181.a n = A067332 n

end A067332

/-! ## A067332.P9800706600637792141

`A099920(n+1)+A146005(n+1)-A010049(n)`
-/

namespace A067332.P9800706600637792141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) + (A146005 (n + 1) - A010049 n)

end

end A067332.P9800706600637792141

namespace A067332

/-- `A099920(n+1)+A146005(n+1)-A010049(n)` -/
def P9800706600637792141.Spec : Prop :=
  ∀ n, P9800706600637792141.a n = A067332 n

end A067332

/-! ## A067332.P13452379241530319128

`A001629(n+1)+A099920(n+1)+A023607(n+1)`
-/

namespace A067332.P13452379241530319128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (A099920 (n + 1) + A023607 (n + 1))

end

end A067332.P13452379241530319128

namespace A067332

/-- `A001629(n+1)+A099920(n+1)+A023607(n+1)` -/
def P13452379241530319128.Spec : Prop :=
  ∀ n, P13452379241530319128.a n = A067332 n

end A067332

/-! ## A067332.P18161594652035817142

`A045925(n+1)+A004798(n+2)-A007502(n+2)`
-/

namespace A067332.P18161594652035817142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A004798 (n + 2) - A007502 (n + 2))

end

end A067332.P18161594652035817142

namespace A067332

/-- `A045925(n+1)+A004798(n+2)-A007502(n+2)` -/
def P18161594652035817142.Spec : Prop :=
  ∀ n, P18161594652035817142.a n = A067332 n

end A067332

/-!
# A067333: Convolution of Fibonacci F(n+1), n>=0, with F(n+5), n>=0.

The programs for A067333, the canonical program `A067333.P9718857003289382618` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067333 has offset 0).

The definition of A067333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067333.P9195078891810497480

`ogf((5+3x)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A067333.P9195078891810497480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3] [1, -2, -1, 2, 1] n

end

end A067333.P9195078891810497480

namespace A067333

/-- `ogf((5+3x)/(1-2x-x^2+2x^3+x^4))` -/
def P9195078891810497480.Spec : Prop :=
  ∀ n, P9195078891810497480.a n = A067333 n

end A067333

/-! ## A067333.P9718857003289382618

`A067332(n)+A067331(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067333

/-- `A067332(n)+A067331(n)` -/
def P9718857003289382618.Spec : Prop :=
  ∀ n, P9718857003289382618.a n = A067333 n

theorem P9718857003289382618.correct : P9718857003289382618.Spec := by
  intro n
  simp only [A067333]

end A067333

/-! ## A067333.P4127577809171733312

`A014739(n)+A002940(n+2)`
-/

namespace A067333.P4127577809171733312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + A002940 (n + 2)

end

end A067333.P4127577809171733312

namespace A067333

/-- `A014739(n)+A002940(n+2)` -/
def P4127577809171733312.Spec : Prop :=
  ∀ n, P4127577809171733312.a n = A067333 n

end A067333

/-! ## A067333.P13695465464426745655

`A023610(n)+2*A067331(n)`
-/

namespace A067333.P13695465464426745655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + 2 * A067331 n

end

end A067333.P13695465464426745655

namespace A067333

/-- `A023610(n)+2*A067331(n)` -/
def P13695465464426745655.Spec : Prop :=
  ∀ n, P13695465464426745655.a n = A067333 n

end A067333

/-! ## A067333.P10653163472965969151

`A067331(n+2)-A001060(n+2)`
-/

namespace A067333.P10653163472965969151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 (n + 2) - A001060 (n + 2)

end

end A067333.P10653163472965969151

namespace A067333

/-- `A067331(n+2)-A001060(n+2)` -/
def P10653163472965969151.Spec : Prop :=
  ∀ n, P10653163472965969151.a n = A067333 n

end A067333

/-! ## A067333.P17337683598466762521

`A067332(n)+A067332(n)-A023610(n)`
-/

namespace A067333.P17337683598466762521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067332 n + (A067332 n - A023610 n)

end

end A067333.P17337683598466762521

namespace A067333

/-- `A067332(n)+A067332(n)-A023610(n)` -/
def P17337683598466762521.Spec : Prop :=
  ∀ n, P17337683598466762521.a n = A067333 n

end A067333

/-! ## A067333.P12799145950435369311

`A004798(n+1)+A004798(n+2)-A000045(n)`
-/

namespace A067333.P12799145950435369311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 1) + (A004798 (n + 2) - A000045 n)

end

end A067333.P12799145950435369311

namespace A067333

/-- `A004798(n+1)+A004798(n+2)-A000045(n)` -/
def P12799145950435369311.Spec : Prop :=
  ∀ n, P12799145950435369311.a n = A067333 n

end A067333

/-! ## A067333.P16832858930519201013

`A004798(n+1)+A004798(n+2)-A212804(n+1)`
-/

namespace A067333.P16832858930519201013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004798 (n + 1) + (A004798 (n + 2) - A212804 (n + 1))

end

end A067333.P16832858930519201013

namespace A067333

/-- `A004798(n+1)+A004798(n+2)-A212804(n+1)` -/
def P16832858930519201013.Spec : Prop :=
  ∀ n, P16832858930519201013.a n = A067333 n

end A067333

/-! ## A067333.P88906507512509499

`A067334(n)-A067332(n)`
-/

namespace A067333.P88906507512509499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067334 n - A067332 n

end

end A067333.P88906507512509499

namespace A067333

/-- `A067334(n)-A067332(n)` -/
def P88906507512509499.Spec : Prop :=
  ∀ n, P88906507512509499.a n = A067333 n

end A067333

/-! ## A067333.P7552070192775990122

`2*A067332(n)-A023610(n)`
-/

namespace A067333.P7552070192775990122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067332 n - A023610 n

end

end A067333.P7552070192775990122

namespace A067333

/-- `2*A067332(n)-A023610(n)` -/
def P7552070192775990122.Spec : Prop :=
  ∀ n, P7552070192775990122.a n = A067333 n

end A067333

/-! ## A067333.P5012119186598793419

`A067430(n)-A067334(n)`
-/

namespace A067333.P5012119186598793419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n - A067334 n

end

end A067333.P5012119186598793419

namespace A067333

/-- `A067430(n)-A067334(n)` -/
def P5012119186598793419.Spec : Prop :=
  ∀ n, P5012119186598793419.a n = A067333 n

end A067333

/-! ## A067333.P9832707116030569583

`(A067334(n)+A067331(n))/2`
-/

namespace A067333.P9832707116030569583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067334 n + A067331 n : ℚ) / 2

end

end A067333.P9832707116030569583

namespace A067333

/-- `(A067334(n)+A067331(n))/2` -/
def P9832707116030569583.Spec : Prop :=
  ∀ n, P9832707116030569583.a n = (A067333 n : ℚ)

end A067333

/-! ## A067333.P16345349708502220456

`(A067430(n)-A067332(n))/2`
-/

namespace A067333.P16345349708502220456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067430 n - A067332 n : ℚ) / 2

end

end A067333.P16345349708502220456

namespace A067333

/-- `(A067430(n)-A067332(n))/2` -/
def P16345349708502220456.Spec : Prop :=
  ∀ n, P16345349708502220456.a n = (A067333 n : ℚ)

end A067333

/-! ## A067333.P17122009665997550381

`A067431(n)%A067334(n)`
-/

namespace A067333.P17122009665997550381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067431 n) (A067334 n)

end

end A067333.P17122009665997550381

namespace A067333

/-- `A067431(n)%A067334(n)` -/
def P17122009665997550381.Spec : Prop :=
  ∀ n, P17122009665997550381.a n = A067333 n

end A067333

/-! ## A067333.P3394183729809786806

`A067430(n)+A067430(n)-A067431(n)`
-/

namespace A067333.P3394183729809786806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n + (A067430 n - A067431 n)

end

end A067333.P3394183729809786806

namespace A067333

/-- `A067430(n)+A067430(n)-A067431(n)` -/
def P3394183729809786806.Spec : Prop :=
  ∀ n, P3394183729809786806.a n = A067333 n

end A067333

/-! ## A067333.P3981953583728937327

`2*A067430(n)-A067431(n)`
-/

namespace A067333.P3981953583728937327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067430 n - A067431 n

end

end A067333.P3981953583728937327

namespace A067333

/-- `2*A067430(n)-A067431(n)` -/
def P3981953583728937327.Spec : Prop :=
  ∀ n, P3981953583728937327.a n = A067333 n

end A067333

/-! ## A067333.P8251772114187730851

`((18*n+25)*A000045(n+1)+11*(n+1)*A000045(n))/5`
-/

namespace A067333.P8251772114187730851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * n + 25 : ℤ) * A000045 (n + 1) + 11 * ((n + 1 : ℤ) * A000045 n) : ℚ) / 5

end

end A067333.P8251772114187730851

namespace A067333

/-- `((18*n+25)*A000045(n+1)+11*(n+1)*A000045(n))/5` -/
def P8251772114187730851.Spec : Prop :=
  ∀ n, P8251772114187730851.a n = (A067333 n : ℚ)

end A067333

/-! ## A067333.P9995516129970685721

`A067977(n)-(A067431(n)+A067334(n))`
-/

namespace A067333.P9995516129970685721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067977 n - (A067431 n + A067334 n)

end

end A067333.P9995516129970685721

namespace A067333

/-- `A067977(n)-(A067431(n)+A067334(n))` -/
def P9995516129970685721.Spec : Prop :=
  ∀ n, P9995516129970685721.a n = A067333 n

end A067333

/-! ## A067333.P7397202844941741371

`A213777(A167614(n+2)+1)`
-/

namespace A067333.P7397202844941741371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A167614 (n + 2) + 1).toNat

end

end A067333.P7397202844941741371

namespace A067333

/-- `A213777(A167614(n+2)+1)` -/
def P7397202844941741371.Spec : Prop :=
  ∀ n, P7397202844941741371.a n = A067333 n

end A067333

/-! ## A067333.P5088140278140554410

`A213777(A167487(n+2)-3)`
-/

namespace A067333.P5088140278140554410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A167487 (n + 2) - 3).toNat

end

end A067333.P5088140278140554410

namespace A067333

/-- `A213777(A167487(n+2)-3)` -/
def P5088140278140554410.Spec : Prop :=
  ∀ n, P5088140278140554410.a n = A067333 n

end A067333

/-!
# A067334: Convolution of Fibonacci F(n+1), n>=0, with F(n+6), n>=0.

The programs for A067334, the canonical program `A067334.P13359382140778625802` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067334 has offset 0).

The definition of A067334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067334.P13359382140778625802

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=8, a(1)=21, a(2)=50, a(3)=105`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067334

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P13359382140778625802.Spec : Prop :=
  ∀ n, P13359382140778625802.a n = A067334 n

theorem P13359382140778625802.correct : P13359382140778625802.Spec := by
  intro n
  simp only [A067334]

end A067334

/-! ## A067334.P8797059538220255659

`ogf((8+5x)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A067334.P8797059538220255659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 5] [1, -2, -1, 2, 1] n

end

end A067334.P8797059538220255659

namespace A067334

/-- `ogf((8+5x)/(1-2x-x^2+2x^3+x^4))` -/
def P8797059538220255659.Spec : Prop :=
  ∀ n, P8797059538220255659.a n = A067334 n

end A067334

/-! ## A067334.P407224616060224868

`A067333(n)+A067332(n)`
-/

namespace A067334.P407224616060224868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067333 n + A067332 n

end

end A067334.P407224616060224868

namespace A067334

/-- `A067333(n)+A067332(n)` -/
def P407224616060224868.Spec : Prop :=
  ∀ n, P407224616060224868.a n = A067334 n

end A067334

/-! ## A067334.P16819645224858301321

`A067331(n)+2*A067332(n)`
-/

namespace A067334.P16819645224858301321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n + 2 * A067332 n

end

end A067334.P16819645224858301321

namespace A067334

/-- `A067331(n)+2*A067332(n)` -/
def P16819645224858301321.Spec : Prop :=
  ∀ n, P16819645224858301321.a n = A067334 n

end A067334

/-! ## A067334.P13059283388394673

`A002940(n+3)-A000211(n+1)`
-/

namespace A067334.P13059283388394673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002940 (n + 3) - A000211 (n + 1)

end

end A067334.P13059283388394673

namespace A067334

/-- `A002940(n+3)-A000211(n+1)` -/
def P13059283388394673.Spec : Prop :=
  ∀ n, P13059283388394673.a n = A067334 n

end A067334

/-! ## A067334.P3344283910807316730

`A023610(n)+A067333(n)+A067331(n)`
-/

namespace A067334.P3344283910807316730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + (A067333 n + A067331 n)

end

end A067334.P3344283910807316730

namespace A067334

/-- `A023610(n)+A067333(n)+A067331(n)` -/
def P3344283910807316730.Spec : Prop :=
  ∀ n, P3344283910807316730.a n = A067334 n

end A067334

/-! ## A067334.P16488168312895602008

`A067430(n)-A067333(n)`
-/

namespace A067334.P16488168312895602008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n - A067333 n

end

end A067334.P16488168312895602008

namespace A067334

/-- `A067430(n)-A067333(n)` -/
def P16488168312895602008.Spec : Prop :=
  ∀ n, P16488168312895602008.a n = A067334 n

end A067334

/-! ## A067334.P4248339668494533836

`2*A067333(n)-A067331(n)`
-/

namespace A067334.P4248339668494533836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067333 n - A067331 n

end

end A067334.P4248339668494533836

namespace A067334

/-- `2*A067333(n)-A067331(n)` -/
def P4248339668494533836.Spec : Prop :=
  ∀ n, P4248339668494533836.a n = A067334 n

end A067334

/-! ## A067334.P719871250487740780

`A067430(n)-A067331(n)-A067332(n)`
-/

namespace A067334.P719871250487740780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n - A067331 n - A067332 n

end

end A067334.P719871250487740780

namespace A067334

/-- `A067430(n)-A067331(n)-A067332(n)` -/
def P719871250487740780.Spec : Prop :=
  ∀ n, P719871250487740780.a n = A067334 n

end A067334

/-! ## A067334.P9134144688377869471

`A067431(n)-A067430(n)`
-/

namespace A067334.P9134144688377869471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n - A067430 n

end

end A067334.P9134144688377869471

namespace A067334

/-- `A067431(n)-A067430(n)` -/
def P9134144688377869471.Spec : Prop :=
  ∀ n, P9134144688377869471.a n = A067334 n

end A067334

/-! ## A067334.P17717731421253555832

`(A067430(n)+A067332(n))/2`
-/

namespace A067334.P17717731421253555832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067430 n + A067332 n : ℚ) / 2

end

end A067334.P17717731421253555832

namespace A067334

/-- `(A067430(n)+A067332(n))/2` -/
def P17717731421253555832.Spec : Prop :=
  ∀ n, P17717731421253555832.a n = (A067334 n : ℚ)

end A067334

/-! ## A067334.P4067700339616860540

`(A067431(n)-A067333(n))/2`
-/

namespace A067334.P4067700339616860540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067431 n - A067333 n : ℚ) / 2

end

end A067334.P4067700339616860540

namespace A067334

/-- `(A067431(n)-A067333(n))/2` -/
def P4067700339616860540.Spec : Prop :=
  ∀ n, P4067700339616860540.a n = (A067334 n : ℚ)

end A067334

/-! ## A067334.P16011196717490340508

`A067977(n)%A067430(n)`
-/

namespace A067334.P16011196717490340508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067977 n) (A067430 n)

end

end A067334.P16011196717490340508

namespace A067334

/-- `A067977(n)%A067430(n)` -/
def P16011196717490340508.Spec : Prop :=
  ∀ n, P16011196717490340508.a n = A067334 n

end A067334

/-! ## A067334.P10761037621310828759

`A067431(n)+A067431(n)-A067977(n)`
-/

namespace A067334.P10761037621310828759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n + (A067431 n - A067977 n)

end

end A067334.P10761037621310828759

namespace A067334

/-- `A067431(n)+A067431(n)-A067977(n)` -/
def P10761037621310828759.Spec : Prop :=
  ∀ n, P10761037621310828759.a n = A067334 n

end A067334

/-! ## A067334.P18441057855928715579

`2*A067431(n)-A067977(n)`
-/

namespace A067334.P18441057855928715579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067431 n - A067977 n

end

end A067334.P18441057855928715579

namespace A067334

/-- `2*A067431(n)-A067977(n)` -/
def P18441057855928715579.Spec : Prop :=
  ∀ n, P18441057855928715579.a n = A067334 n

end A067334

/-! ## A067334.P5127550198561705266

`((29*n+40)*A000045(n+1)+18*(n+1)*A000045(n))/5`
-/

namespace A067334.P5127550198561705266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((29 * n + 40 : ℤ) * A000045 (n + 1) + 18 * ((n + 1 : ℤ) * A000045 n) : ℚ) / 5

end

end A067334.P5127550198561705266

namespace A067334

/-- `((29*n+40)*A000045(n+1)+18*(n+1)*A000045(n))/5` -/
def P5127550198561705266.Spec : Prop :=
  ∀ n, P5127550198561705266.a n = (A067334 n : ℚ)

end A067334

/-! ## A067334.P13658545991435750170

`A067978(n)-(A067977(n)+A067430(n))`
-/

namespace A067334.P13658545991435750170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067978 n - (A067977 n + A067430 n)

end

end A067334.P13658545991435750170

namespace A067334

/-- `A067978(n)-(A067977(n)+A067430(n))` -/
def P13658545991435750170.Spec : Prop :=
  ∀ n, P13658545991435750170.a n = A067334 n

end A067334

/-! ## A067334.P17489017869560659396

`A067418(A000217(n+5)+5)`
-/

namespace A067334.P17489017869560659396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000217 (n + 5) + 5).toNat

end

end A067334.P17489017869560659396

namespace A067334

/-- `A067418(A000217(n+5)+5)` -/
def P17489017869560659396.Spec : Prop :=
  ∀ n, P17489017869560659396.a n = A067334 n

end A067334

/-! ## A067334.P16048314318879245017

`A067418(Δ[A005581(n+5)]-n)`
-/

namespace A067334.P16048314318879245017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A067334.P16048314318879245017

namespace A067334

/-- `A067418(Δ[A005581(n+5)]-n)` -/
def P16048314318879245017.Spec : Prop :=
  ∀ n, P16048314318879245017.a n = A067334 n

end A067334

/-! ## A067334.P2822659754148773362

`A067330(A000124(n+5)+n-1)`
-/

namespace A067334.P2822659754148773362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A067334.P2822659754148773362

namespace A067334

/-- `A067330(A000124(n+5)+n-1)` -/
def P2822659754148773362.Spec : Prop :=
  ∀ n, P2822659754148773362.a n = A067334 n

end A067334

/-!
# A067336: a(0)=1, a(1)=2, a(n) = a(n-1)*9/2 - Catalan(n-1) where Catalan(n) = binomial(2n,n)/(n+1) = A000108(n).

The programs for A067336, there is no canonical definition to state claims against.
-/

/-! ## A067336.P11894254610612935160

`ceil(2/3*A007854(n))`
-/

namespace A067336.P11894254610612935160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A007854 n : ℚ)⌉

end

end A067336.P11894254610612935160

/-! ## A067336.P12859176752316657898

`ratio[A011782(n)]*A049027(n)`
-/

namespace A067336.P12859176752316657898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A049027 n : ℚ)

end

end A067336.P12859176752316657898

/-! ## A067336.P816168373342363205

`A036453(n+1)*A049027(n)`
-/

namespace A067336.P816168373342363205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A049027 n

end

end A067336.P816168373342363205

/-! ## A067336.P12166891652141804165

`(A049027(n)+A007854(n))/2`
-/

namespace A067336.P12166891652141804165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049027 n + A007854 n : ℚ) / 2

end

end A067336.P12166891652141804165

/-! ## A067336.P12667890882130063913

`A043529(2*n)*A049027(n)`
-/

namespace A067336.P12667890882130063913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (2 * n) * A049027 n

end

end A067336.P12667890882130063913

/-! ## A067336.P12699951650322082160

`A049027(n)*A111982(2*n)`
-/

namespace A067336.P12699951650322082160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n * A111982 (2 * n)

end

end A067336.P12699951650322082160

/-! ## A067336.P6445068417232342600

`A049027(n)*A127750(2*n)`
-/

namespace A067336.P6445068417232342600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n * A127750 (2 * n)

end

end A067336.P6445068417232342600

/-! ## A067336.P6498456651929659070

`gcd(2, A000984(n))*A049027(n)`
-/

namespace A067336.P6498456651929659070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000984 n) : ℤ) * A049027 n

end

end A067336.P6498456651929659070

/-! ## A067336.P13248191438694282371

`A036452(2*n+1)*A049027(n)`
-/

namespace A067336.P13248191438694282371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A049027 n

end

end A067336.P13248191438694282371

/-! ## A067336.P14510054281871269436

`A014963(A001316(n))*A049027(n)`
-/

namespace A067336.P14510054281871269436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A049027 n

end

end A067336.P14510054281871269436

/-! ## A067336.P11296868017457403870

`A020639(A008458(n))*A049027(n)`
-/

namespace A067336.P11296868017457403870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A049027 n

end

end A067336.P11296868017457403870

/-! ## A067336.P8443283403489263615

`A020639(A008574(n))*A049027(n)`
-/

namespace A067336.P8443283403489263615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A049027 n

end

end A067336.P8443283403489263615

/-! ## A067336.P3815156232610026674

`A020639(Δ[A000040(n+1)])*A049027(n)`
-/

namespace A067336.P3815156232610026674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat * A049027 n

end

end A067336.P3815156232610026674

/-! ## A067336.P5923927799126984593

`(A064547(A020639(n+1))+1)*A049027(n)`
-/

namespace A067336.P5923927799126984593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064547 (A020639 (n + 1)).toNat + 1) * A049027 n

end

end A067336.P5923927799126984593

/-! ## A067336.P6721827916162302607

`A020639(A000040(n+1)-1)*A049027(n)`
-/

namespace A067336.P6721827916162302607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A049027 n

end

end A067336.P6721827916162302607

/-! ## A067336.P7563078880466596360

`A049027(n)+A049027(n)%A049027(n+1)`
-/

namespace A067336.P7563078880466596360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n + Int.tmod (A049027 n) (A049027 (n + 1))

end

end A067336.P7563078880466596360

/-! ## A067336.P4813378287521275940

`A000010(A007854(n)/A049027(n))*A049027(n)`
-/

namespace A067336.P4813378287521275940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A007854 n : ℚ) / (A049027 n : ℚ))).toNat * A049027 n

end

end A067336.P4813378287521275940

/-!
# A067337: Triangle where T(n,k)=2*T(n,k-1)+C(n-1,k)-C(n-1,k-1) and n>=k>=0.

The programs for A067337, there is no canonical definition to state claims against.
-/

/-! ## A067337.P17184168047091575931

`A160760(A061579(n))`
-/

namespace A067337.P17184168047091575931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A061579 n).toNat

end

end A067337.P17184168047091575931

/-! ## A067337.P7545818313473545516

`A160760(A114327(n)+n)`
-/

namespace A067337.P7545818313473545516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A114327 n + (n : ℤ)).toNat

end

end A067337.P7545818313473545516

/-! ## A067337.P6392000590384533937

`A160760(A038722(n+1)-1)`
-/

namespace A067337.P6392000590384533937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A038722 (n + 1) - 1).toNat

end

end A067337.P6392000590384533937

/-! ## A067337.P1964634218482032536

`A160760(A093995(n+1)-(n+1))`
-/

namespace A067337.P1964634218482032536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A067337.P1964634218482032536

/-! ## A067337.P6687603180362543549

`A160760((A007401(n+1)-n)²-(n+1))`
-/

namespace A067337.P6687603180362543549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 ((A007401 (n + 1) - (n : ℤ)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A067337.P6687603180362543549

/-! ## A067337.P10548896207491910296

`A160760(A185869(n+1)-A016789(n))`
-/

namespace A067337.P10548896207491910296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A185869 (n + 1) - A016789 n).toNat

end

end A067337.P10548896207491910296

/-! ## A067337.P16813361326269022471

`A160760(A002378(n)%A014132(n+1))`
-/

namespace A067337.P16813361326269022471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A067337.P16813361326269022471

/-!
# A067338: Divide the natural numbers in sets of consecutive numbers, starting with {1,2}, each set with number of elements equal to the sum of elements of the preceding set. The number of elements in the n-th set gives a(n).

The programs for A067338, there is no canonical definition to state claims against.
-/

/-! ## A067338.P14368271419141468773

`Δ[C(a(n-1), 2)+a(n-1)+2]` with `a(0)=0`
-/

namespace A067338.P14368271419141468773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (f1 (n - 1)) 2 + (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A067338.P14368271419141468773

/-! ## A067338.P11929524422234602458

`a(n-1)*(2*a(n-1)+a(n-2)*a(n-1)+a(n-2)²)/(2*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A067338.P11929524422234602458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) * ((2 * a (n - 1) + a (n - 2) * a (n - 1) + a (n - 2) ^ 2) / (2 * a (n - 2)))

end

end A067338.P11929524422234602458

/-! ## A067338.P8042176423466624626

`floor(acot(n)+Δ[A226588(n)])`
-/

namespace A067338.P8042176423466624626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A067338.P8042176423466624626

/-! ## A067338.P7651276385550896054

`A000007(n)+Δ[A226588(n)]`
-/

namespace A067338.P7651276385550896054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A067338.P7651276385550896054

/-! ## A067338.P12330545260663033501

`A028240(n)+Δ[A226588(n)]`
-/

namespace A067338.P12330545260663033501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n + (f1 (n + 1) - f1 n)

end

end A067338.P12330545260663033501

/-!
# A067339: Divide the natural numbers in sets of consecutive numbers, starting with {1,2}, each set with number of elements equal to the sum of elements of the preceding set. The final element of the n-th set gives a(n).

The programs for A067339, the canonical program `A067339.P4908525708289501376` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067339 has offset 1).

The definition of A067339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067339.P4908525708289501376

`a(n-1)*(a(n-1)+1)/2+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067339

/-- `a(n-1)*(a(n-1)+1)/2+2` -/
def P4908525708289501376.Spec : Prop :=
  ∀ n, P4908525708289501376.a n = (A067339 (n + 1) : ℚ)

end A067339

/-! ## A067339.P17504687759399453518

`a(n-1)+A067338(n+1)` with `a(0)=2`
-/

namespace A067339.P17504687759399453518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A067338 (n + 1)

end

end A067339.P17504687759399453518

namespace A067339

/-- `a(n-1)+A067338(n+1)` -/
def P17504687759399453518.Spec : Prop :=
  ∀ n, P17504687759399453518.a n = A067339 (n + 1)

end A067339

/-! ## A067339.P15201902757843757430

`C(a(n-1)+1, 2)+2` with `a(0)=2`
-/

namespace A067339.P15201902757843757430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (a (n - 1) + 1) 2 + 2

end

end A067339.P15201902757843757430

namespace A067339

/-- `C(a(n-1)+1, 2)+2` -/
def P15201902757843757430.Spec : Prop :=
  ∀ n, (P15201902757843757430.a n : ℤ) = A067339 (n + 1)

end A067339

/-! ## A067339.P15133358103874759690

`(a(n-1)+a(n-1)²)/2+2` with `a(0)=2`
-/

namespace A067339.P15133358103874759690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2 + 2

end

end A067339.P15133358103874759690

namespace A067339

/-- `(a(n-1)+a(n-1)²)/2+2` -/
def P15133358103874759690.Spec : Prop :=
  ∀ n, P15133358103874759690.a n = (A067339 (n + 1) : ℚ)

end A067339

/-! ## A067339.P14751452658378034804

`2-(C(a(n-1), 2)-a(n-1)²)` with `a(0)=2`
-/

namespace A067339.P14751452658378034804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((Nat.choose (a (n - 1)).toNat 2 : ℤ) - a (n - 1) ^ 2)

end

end A067339.P14751452658378034804

namespace A067339

/-- `2-(C(a(n-1), 2)-a(n-1)²)` -/
def P14751452658378034804.Spec : Prop :=
  ∀ n, P14751452658378034804.a n = A067339 (n + 1)

end A067339

/-!
# A067340: Numbers k such that (number of distinct prime factors of k) divides (number of prime factors of k).

The programs for A067340, the canonical program `A067340.P7171830791748777074` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067340 has offset 1).

The definition of A067340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067340.P10607275993570379730

`∪[A062770(n+1), A067341(n+1)]`
-/

namespace A067340.P10607275993570379730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067340.P10607275993570379730

namespace A067340

/-- `∪[A062770(n+1), A067341(n+1)]` -/
def P10607275993570379730.Spec : Prop :=
  ∀ n, (P10607275993570379730.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P6159939964409555140

`∪[A062770(n+1), A245080(n+1)]`
-/

namespace A067340.P6159939964409555140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067340.P6159939964409555140

namespace A067340

/-- `∪[A062770(n+1), A245080(n+1)]` -/
def P6159939964409555140.Spec : Prop :=
  ∀ n, (P6159939964409555140.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P7171830791748777074

`eq[1, A088530(n+2)]+2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A067340

/-- `eq[1, A088530(n+2)]+2` -/
def P7171830791748777074.Spec : Prop :=
  ∀ n, (P7171830791748777074.a n : ℤ) = A067340 (n + 1)

theorem P7171830791748777074.correct : P7171830791748777074.Spec := by
  intro n
  simp only [A067340, Nat.add_sub_cancel]

end A067340

/-! ## A067340.P5093392587997469426

`eq[A070012(n+2), A070014(n+2)]+2`
-/

namespace A067340.P5093392587997469426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067340.P5093392587997469426

namespace A067340

/-- `eq[A070012(n+2), A070014(n+2)]+2` -/
def P5093392587997469426.Spec : Prop :=
  ∀ n, (P5093392587997469426.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P11999163426958819463

`eq[A070012(n+2), A088529(n+2)]+2`
-/

namespace A067340.P11999163426958819463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067340.P11999163426958819463

namespace A067340

/-- `eq[A070012(n+2), A088529(n+2)]+2` -/
def P11999163426958819463.Spec : Prop :=
  ∀ n, (P11999163426958819463.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P13074076257627248888

`eq[A070013(n+2), A088529(n+2)]+2`
-/

namespace A067340.P13074076257627248888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070013 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067340.P13074076257627248888

namespace A067340

/-- `eq[A070013(n+2), A088529(n+2)]+2` -/
def P13074076257627248888.Spec : Prop :=
  ∀ n, (P13074076257627248888.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P3889664989773150792

`eq[A070014(n+2), A088529(n+2)]+2`
-/

namespace A067340.P3889664989773150792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A067340.P3889664989773150792

namespace A067340

/-- `eq[A070014(n+2), A088529(n+2)]+2` -/
def P3889664989773150792.Spec : Prop :=
  ∀ n, (P3889664989773150792.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P10911542514472199445

`∩[A085736(n+1), A360553(n+1)]`
-/

namespace A067340.P10911542514472199445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067340.P10911542514472199445

namespace A067340

/-- `∩[A085736(n+1), A360553(n+1)]` -/
def P10911542514472199445.Spec : Prop :=
  ∀ n, (P10911542514472199445.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P935713245411038792

`∩[A180925(n+1), A360553(n+1)]`
-/

namespace A067340.P935713245411038792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067340.P935713245411038792

namespace A067340

/-- `∩[A180925(n+1), A360553(n+1)]` -/
def P935713245411038792.Spec : Prop :=
  ∀ n, (P935713245411038792.a n : ℤ) = A067340 (n + 1)

end A067340

/-! ## A067340.P6557924736239226319

`∩[A265711(n+1), A360553(n+1)]`
-/

namespace A067340.P6557924736239226319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067340.P6557924736239226319

namespace A067340

/-- `∩[A265711(n+1), A360553(n+1)]` -/
def P6557924736239226319.Spec : Prop :=
  ∀ n, (P6557924736239226319.a n : ℤ) = A067340 (n + 1)

end A067340

/-!
# A067341: Number of prime factors divided by the number of distinct prime factors is an integer and n is neither squarefree, nor power of prime.

The programs for A067341, there is no canonical definition to state claims against.
-/

/-! ## A067341.P8129207424546739701

`filter[A245080(n+1), A355447(#)]`
-/

namespace A067341.P8129207424546739701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A067341.P8129207424546739701

/-! ## A067341.P17274472825694888663

`∩[A245080(n+1), A378878(n+1)]`
-/

namespace A067341.P17274472825694888663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P17274472825694888663

/-! ## A067341.P6209734807208443528

`∩[A245080(n+1), A393201(n+1)]`
-/

namespace A067341.P6209734807208443528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P6209734807208443528

/-! ## A067341.P3857672372856452317

`∩[A245080(n+1), A376271(n+1)]`
-/

namespace A067341.P3857672372856452317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P3857672372856452317

/-! ## A067341.P1596715177496480654

`∩[A067340(n+1), A376271(n+1)]`
-/

namespace A067341.P1596715177496480654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P1596715177496480654

/-! ## A067341.P14808977592333568067

`∩[A067340(n+1), A378878(n+1)]`
-/

namespace A067341.P14808977592333568067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P14808977592333568067

/-! ## A067341.P6404149598071888175

`∩[A067340(n+1), A393201(n+1)]`
-/

namespace A067341.P6404149598071888175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P6404149598071888175

/-! ## A067341.P8180033571924646355

`∩[A067340(n+1), A126706(n+1)]`
-/

namespace A067341.P8180033571924646355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P8180033571924646355

/-! ## A067341.P5088464193928907449

`∩[A126706(n+1), A245080(n+1)]`
-/

namespace A067341.P5088464193928907449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P5088464193928907449

/-! ## A067341.P18183707338716071517

`∩[A245080(n+1), A376384(n+1)]`
-/

namespace A067341.P18183707338716071517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P18183707338716071517

/-! ## A067341.P3083022951926827438

`∩[A158871(n+1), A245080(n+1)]`
-/

namespace A067341.P3083022951926827438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P3083022951926827438

/-! ## A067341.P14473936067115112140

`∩[A024619(n+1), A245080(n+1)]`
-/

namespace A067341.P14473936067115112140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P14473936067115112140

/-! ## A067341.P11624358437440192586

`∩[A245080(n+1), A361102(n+1)]`
-/

namespace A067341.P11624358437440192586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P11624358437440192586

/-! ## A067341.P5966141827572417556

`∩[A085971(n+1), A245080(n+1)]`
-/

namespace A067341.P5966141827572417556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P5966141827572417556

/-! ## A067341.P18368134149445408174

`record[A048671(A245080(n+5))]`
-/

namespace A067341.P18368134149445408174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A245080 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067341.P18368134149445408174

/-! ## A067341.P882258277858655060

`filter[A245080(n+1), A143731(#)]`
-/

namespace A067341.P882258277858655060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A067341.P882258277858655060

/-! ## A067341.P12452382449649550558

`∩[A102467(n+1), A245080(n+1)]`
-/

namespace A067341.P12452382449649550558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067341.P12452382449649550558

/-!
# A067342: Sum of decimal digits of sum of divisors of n.

The programs for A067342, the canonical program `A067342.P529008459942700744` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067342 has offset 1).

The definition of A067342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067342.P529008459942700744

`A007953(A000203(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067342

/-- `A007953(A000203(n+1))` -/
def P529008459942700744.Spec : Prop :=
  ∀ n, P529008459942700744.a n = A067342 (n + 1)

theorem P529008459942700744.correct : P529008459942700744.Spec := by
  intro n
  simp only [A067342, Nat.add_sub_cancel]

end A067342

/-! ## A067342.P6889184184185701328

`∑{digits}[∑{d}[n+1, #], #]`
-/

namespace A067342.P6889184184185701328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A067342.P6889184184185701328

namespace A067342

/-- `∑{digits}[∑{d}[n+1, #], #]` -/
def P6889184184185701328.Spec : Prop :=
  ∀ n, (P6889184184185701328.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P430634757135309298

`∑{digits}[A143348(n+1), #]`
-/

namespace A067342.P430634757135309298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P430634757135309298

namespace A067342

/-- `∑{digits}[A143348(n+1), #]` -/
def P430634757135309298.Spec : Prop :=
  ∀ n, (P430634757135309298.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P10760968945837735617

`∑{digits}[A326122(n+1), #]`
-/

namespace A067342.P10760968945837735617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P10760968945837735617

namespace A067342

/-- `∑{digits}[A326122(n+1), #]` -/
def P10760968945837735617.Spec : Prop :=
  ∀ n, (P10760968945837735617.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P6247261341364615079

`∑{digits}[sqrt(A072861(n+1)), #]`
-/

namespace A067342.P6247261341364615079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P6247261341364615079

namespace A067342

/-- `∑{digits}[sqrt(A072861(n+1)), #]` -/
def P6247261341364615079.Spec : Prop :=
  ∀ n, (P6247261341364615079.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P2386898136316322670

`∑{digits}[1-A088580(n+1), #]`
-/

namespace A067342.P2386898136316322670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P2386898136316322670

namespace A067342

/-- `∑{digits}[1-A088580(n+1), #]` -/
def P2386898136316322670.Spec : Prop :=
  ∀ n, (P2386898136316322670.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P9327272504277516593

`∑{digits}[A245092(2*n+1), #]`
-/

namespace A067342.P9327272504277516593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P9327272504277516593

namespace A067342

/-- `∑{digits}[A245092(2*n+1), #]` -/
def P9327272504277516593.Spec : Prop :=
  ∀ n, (P9327272504277516593.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P3586013126828879428

`∑{digits}[A001065(n+1)+1+n, #]`
-/

namespace A067342.P3586013126828879428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P3586013126828879428

namespace A067342

/-- `∑{digits}[A001065(n+1)+1+n, #]` -/
def P3586013126828879428.Spec : Prop :=
  ∀ n, (P3586013126828879428.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P7619595533512225478

`∑{digits}[2*(n+1)-A033879(n+1), #]`
-/

namespace A067342.P7619595533512225478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P7619595533512225478

namespace A067342

/-- `∑{digits}[2*(n+1)-A033879(n+1), #]` -/
def P7619595533512225478.Spec : Prop :=
  ∀ n, (P7619595533512225478.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P875025350110139524

`∑{digits}[A070039(n+1)+A070038(n+1), #]`
-/

namespace A067342.P875025350110139524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A070038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P875025350110139524

namespace A067342

/-- `∑{digits}[A070039(n+1)+A070038(n+1), #]` -/
def P875025350110139524.Spec : Prop :=
  ∀ n, (P875025350110139524.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P4273822159457296548

`∑{digits}[A146076(n+1)+A000593(n+1), #]`
-/

namespace A067342.P4273822159457296548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P4273822159457296548

namespace A067342

/-- `∑{digits}[A146076(n+1)+A000593(n+1), #]` -/
def P4273822159457296548.Spec : Prop :=
  ∀ n, (P4273822159457296548.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P17705712980462049637

`∑{digits}[A117004(n+1)+A079667(n+1), #]`
-/

namespace A067342.P17705712980462049637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) + A079667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P17705712980462049637

namespace A067342

/-- `∑{digits}[A117004(n+1)+A079667(n+1), #]` -/
def P17705712980462049637.Spec : Prop :=
  ∀ n, (P17705712980462049637.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P16368055011291728318

`∑{digits}[A178637(n+1)+A023889(n+1), #]`
-/

namespace A067342.P16368055011291728318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (n + 1) + A023889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P16368055011291728318

namespace A067342

/-- `∑{digits}[A178637(n+1)+A023889(n+1), #]` -/
def P16368055011291728318.Spec : Prop :=
  ∀ n, (P16368055011291728318.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P6168857993188249417

`∑{digits}[A326126(n+1)+A007913(n+1), #]`
-/

namespace A067342.P6168857993188249417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) + A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P6168857993188249417

namespace A067342

/-- `∑{digits}[A326126(n+1)+A007913(n+1), #]` -/
def P6168857993188249417.Spec : Prop :=
  ∀ n, (P6168857993188249417.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P5382969818457390755

`∑{digits}[A326065(2*(n+1)), #]`
-/

namespace A067342.P5382969818457390755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P5382969818457390755

namespace A067342

/-- `∑{digits}[A326065(2*(n+1)), #]` -/
def P5382969818457390755.Spec : Prop :=
  ∀ n, (P5382969818457390755.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P3305287854594503281

`∑{digits}[A262610(2*n+1), #]`
-/

namespace A067342.P3305287854594503281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P3305287854594503281

namespace A067342

/-- `∑{digits}[A262610(2*n+1), #]` -/
def P3305287854594503281.Spec : Prop :=
  ∀ n, (P3305287854594503281.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P18257773987996966159

`∑{digits}[A146076(2*(n+1))/2, #]`
-/

namespace A067342.P18257773987996966159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A067342.P18257773987996966159

namespace A067342

/-- `∑{digits}[A146076(2*(n+1))/2, #]` -/
def P18257773987996966159.Spec : Prop :=
  ∀ n, (P18257773987996966159.a n : ℤ) = A067342 (n + 1)

end A067342

/-! ## A067342.P3580802002031837198

`A007953(∑{d}[n+1, #])`
-/

namespace A067342.P3580802002031837198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A067342.P3580802002031837198

namespace A067342

/-- `A007953(∑{d}[n+1, #])` -/
def P3580802002031837198.Spec : Prop :=
  ∀ n, P3580802002031837198.a n = A067342 (n + 1)

end A067342

/-! ## A067342.P728950927163477553

`sqrt(A118881(∑{d}[n+1, #]))`
-/

namespace A067342.P728950927163477553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A067342.P728950927163477553

namespace A067342

/-- `sqrt(A118881(∑{d}[n+1, #]))` -/
def P728950927163477553.Spec : Prop :=
  ∀ n, P728950927163477553.a n = (A067342 (n + 1) : ℝ)

end A067342

/-! ## A067342.P13556439896917713652

`A007953(A001065(n+1)+n+1)`
-/

namespace A067342.P13556439896917713652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A067342.P13556439896917713652

namespace A067342

/-- `A007953(A001065(n+1)+n+1)` -/
def P13556439896917713652.Spec : Prop :=
  ∀ n, P13556439896917713652.a n = A067342 (n + 1)

end A067342

/-!
# A067343: Sum of decimal digits of n equals sum of decimal digits of sum of divisors of n.

The programs for A067343, the canonical program `A067343.P8902143204584263014` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067343 has offset 1).

The definition of A067343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067343.P8902143204584263014

`eq[A007953(n), A067342(A028310(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067343

/-- `eq[A007953(n), A067342(A028310(n))]` -/
def P8902143204584263014.Spec : Prop :=
  ∀ n, (P8902143204584263014.a n : ℤ) = A067343 (n + 1)

theorem P8902143204584263014.correct : P8902143204584263014.Spec := by
  intro n
  simp only [A067343, Nat.add_sub_cancel]

end A067343

/-! ## A067343.P6782153772314490244

`eq[A067342(A028310(n))², A118881(n)]`
-/

namespace A067343.P6782153772314490244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067343.P6782153772314490244

namespace A067343

/-- `eq[A067342(A028310(n))², A118881(n)]` -/
def P6782153772314490244.Spec : Prop :=
  ∀ n, (P6782153772314490244.a n : ℤ) = A067343 (n + 1)

end A067343

/-! ## A067343.P2840108832109094257

`eq[log2(A329562(n)), A067342(A028310(n))]`
-/

namespace A067343.P2840108832109094257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A067343.P2840108832109094257

namespace A067343

/-- `eq[log2(A329562(n)), A067342(A028310(n))]` -/
def P2840108832109094257.Spec : Prop :=
  ∀ n, (P2840108832109094257.a n : ℤ) = A067343 (n + 1)

end A067343

/-! ## A067343.P5337813572634506532

`eq[2*A067342(A028310(n)), A169805(n)]`
-/

namespace A067343.P5337813572634506532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067342 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067343.P5337813572634506532

namespace A067343

/-- `eq[2*A067342(A028310(n)), A169805(n)]` -/
def P5337813572634506532.Spec : Prop :=
  ∀ n, (P5337813572634506532.a n : ℤ) = A067343 (n + 1)

end A067343

/-! ## A067343.P8568825641966429177

`eq[A067342(A028310(n))+n, A062028(n)]`
-/

namespace A067343.P8568825641966429177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067343.P8568825641966429177

namespace A067343

/-- `eq[A067342(A028310(n))+n, A062028(n)]` -/
def P8568825641966429177.Spec : Prop :=
  ∀ n, (P8568825641966429177.a n : ℤ) = A067343 (n + 1)

end A067343

/-! ## A067343.P11450604543789447939

`eq[A118880(n)^(1/3), A067342(A028310(n))]`
-/

namespace A067343.P11450604543789447939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A067343.P11450604543789447939

namespace A067343

/-- `eq[A118880(n)^(1/3), A067342(A028310(n))]` -/
def P11450604543789447939.Spec : Prop :=
  ∀ n, (P11450604543789447939.a n : ℤ) = A067343 (n + 1)

end A067343

/-! ## A067343.P10030013951351286605

`eq[A007953(n), A007953(A039653(n)+1)]`
-/

namespace A067343.P10030013951351286605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067343.P10030013951351286605

namespace A067343

/-- `eq[A007953(n), A007953(A039653(n)+1)]` -/
def P10030013951351286605.Spec : Prop :=
  ∀ n, (P10030013951351286605.a n : ℤ) = A067343 (n + 1)

end A067343

/-!
# A067344: Sum of decimal digits of square of divisors of n equals sum of square of digits of n.

The programs for A067344, there is no canonical definition to state claims against.
-/

/-! ## A067344.P10087636665067725423

`A209304(A000271(n+4))-A000271(n)`
-/

namespace A067344.P10087636665067725423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209304 (A000271 (n + 4)).toNat - A000271 n

end

end A067344.P10087636665067725423

/-!
# A067345: Square array read by antidiagonals: T(n,k)=(T(n,k-1)*n^2-Catalan(k-1))/(n-1) with a(n,1)=1 and a(1,k)=Catalan(k) where Catalan(k)=C(2k,k)/(k+1)=A000108(k).

The programs for A067345, there is no canonical definition to state claims against.
-/

/-! ## A067345.P5557628066405385157

`A110488(comp[∑[n]])`
-/

namespace A067345.P5557628066405385157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067345.P5557628066405385157

/-! ## A067345.P6890617302688949304

`or(char[2], A110488(A014132(n+1)))`
-/

namespace A067345.P6890617302688949304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A110488 (A014132 (n + 1)).toNat)

end

end A067345.P6890617302688949304

/-! ## A067345.P1265680765063295781

`A054977(3*n+2)*A110488(A080036(n))`
-/

namespace A067345.P1265680765063295781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (3 * n + 2) * A110488 (A080036 n).toNat

end

end A067345.P1265680765063295781

/-! ## A067345.P15537508906214969121

`A110488(A014132(n+1))/A007318(C(2, n))`
-/

namespace A067345.P15537508906214969121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110488 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A067345.P15537508906214969121

/-! ## A067345.P11561049704352096633

`A000041(C(n, n²))*A110488(A014132(n+1))`
-/

namespace A067345.P11561049704352096633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A110488 (A014132 (n + 1)).toNat

end

end A067345.P11561049704352096633

/-! ## A067345.P14679925823783846275

`A110488(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A067345.P14679925823783846275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A067345.P14679925823783846275

/-! ## A067345.P11964244496731962854

`A014963(6*(n+2))*A110488(A014132(n+1))`
-/

namespace A067345.P11964244496731962854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A110488 (A014132 (n + 1)).toNat

end

end A067345.P11964244496731962854

/-! ## A067345.P1185751874779954386

`A110488(A014132(n+1))%record[A000032(n)]`
-/

namespace A067345.P1185751874779954386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110488 (A014132 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A067345.P1185751874779954386

/-! ## A067345.P17960317110328195606

`A007318(∑[n])*A110488(A014132(n+1))`
-/

namespace A067345.P17960317110328195606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A110488 (A014132 (n + 1)).toNat

end

end A067345.P17960317110328195606

/-! ## A067345.P9516229235420868396

`A076038(A380649(n+1))`
-/

namespace A067345.P9516229235420868396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076038 (A380649 (n + 1)).toNat

end

end A067345.P9516229235420868396

/-!
# A067346: Square array read by antidiagonals: T(n,k)=T(n,k-1)*n^2/(n-1)-Catalan(k-1) with a(n,1)=n-1 and a(1,k)=0 where Catalan(k)=C(2k,k)/(k+1)=A000108(k).

The programs for A067346, there is no canonical definition to state claims against.
-/

/-! ## A067346.P14250771728683848903

`(n-C(∑[char[∑[n]]], 2))*A067345(n+1)`
-/

namespace A067346.P14250771728683848903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A067345 (n + 1)

end

end A067346.P14250771728683848903

/-! ## A067346.P3205280260320657500

`A002262(n)*A067345(n+1)`
-/

namespace A067346.P3205280260320657500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A067345 (n + 1)

end

end A067346.P3205280260320657500

/-! ## A067346.P12456612371841831356

`sqrt(A143844(n))*A067345(n+1)`
-/

namespace A067346.P12456612371841831356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ) * (A067345 (n + 1) : ℝ)

end

end A067346.P12456612371841831356

/-! ## A067346.P6803605519092863705

`log2(A059268(n))*A067345(n+1)`
-/

namespace A067346.P6803605519092863705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) * (A067345 (n + 1) : ℝ)

end

end A067346.P6803605519092863705

/-! ## A067346.P9854686008499348126

`A002262(n)*A110488(comp[∑[n]])`
-/

namespace A067346.P9854686008499348126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A110488 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067346.P9854686008499348126

/-!
# A067347: Square array read by antidiagonals: T(n,k)=(T(n,k-1)*n^2-Catalan(k-1)*n)/(n-1) with a(n,0)=1 and a(1,k)=Catalan(k) where Catalan(k)=C(2k,k)/(k+1)=A000108(k).

The programs for A067347, there is no canonical definition to state claims against.
-/

/-! ## A067347.P17361662169237729481

`A048266(A155586(n))*A097805(n)`
-/

namespace A067347.P17361662169237729481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A155586 n).toNat * A097805 n

end

end A067347.P17361662169237729481

/-! ## A067347.P16250134551462366252

`A120568(n+1)-A118135(A084938(n))`
-/

namespace A067347.P16250134551462366252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120568 (n + 1) - A118135 (A084938 n).toNat

end

end A067347.P16250134551462366252

/-! ## A067347.P1502128844528762748

`A285189(A269951(n))`
-/

namespace A067347.P1502128844528762748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A269951 n).toNat

end

end A067347.P1502128844528762748

/-! ## A067347.P5904318639763224622

`A106566(n)+A007814(A157156(n))`
-/

namespace A067347.P5904318639763224622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n + A007814 (A157156 n).toNat

end

end A067347.P5904318639763224622

/-!
# A067348: Even numbers n such that binomial(n, [n/2]) is divisible by n.

The programs for A067348, there is no canonical definition to state claims against.
-/

/-! ## A067348.P13070572047091187057

`2*A058008(n+1)`
-/

namespace A067348.P13070572047091187057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058008 (n + 1)

end

end A067348.P13070572047091187057

/-! ## A067348.P7383141953197086559

`A058008(A000027(n+1))+A058008(n+1)`
-/

namespace A067348.P7383141953197086559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (A000027 (n + 1)).toNat + A058008 (n + 1)

end

end A067348.P7383141953197086559

/-! ## A067348.P15878319728681282580

`A058008(n+1)+A058008(A023443(n)+2)`
-/

namespace A067348.P15878319728681282580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1) + A058008 (A023443 n + 2).toNat

end

end A067348.P15878319728681282580

/-! ## A067348.P7008008496035713911

`A058008(n+1)+A058008((n+1)%A002503(n+1))`
-/

namespace A067348.P7008008496035713911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1) + A058008 (Int.tmod (n + 1 : ℤ) (A002503 (n + 1))).toNat

end

end A067348.P7008008496035713911

/-! ## A067348.P10740455696026636293

`A056067(Δ[n²])+1`
-/

namespace A067348.P10740455696026636293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A067348.P10740455696026636293

/-! ## A067348.P3516005119983333259

`record[A058005(n+1)]`
-/

namespace A067348.P3516005119983333259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067348.P3516005119983333259

/-! ## A067348.P5370409779528434691

`2*eq[0, A053214(n)]`
-/

namespace A067348.P5370409779528434691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067348.P5370409779528434691

/-! ## A067348.P6766526947491487750

`record[2*A333461(n+1)]`
-/

namespace A067348.P6766526947491487750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067348.P6766526947491487750

/-! ## A067348.P5629944785056071356

`A004277(A058008(n+1))`
-/

namespace A067348.P5629944785056071356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058008 (n + 1)).toNat

end

end A067348.P5629944785056071356

/-! ## A067348.P16701162463556373257

`record[A333461(n+2)+A333461(A333461(n+2))]`
-/

namespace A067348.P16701162463556373257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333461 (n + 2) + A333461 (A333461 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067348.P16701162463556373257

/-! ## A067348.P3161704685968659140

`∩[2*n, A042996(n+1)]`
-/

namespace A067348.P3161704685968659140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067348.P3161704685968659140

/-! ## A067348.P15983730805831920638

`∩[A042996(n+1), A005843(n)]`
-/

namespace A067348.P15983730805831920638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067348.P15983730805831920638

/-! ## A067348.P16893834394470003453

`A042996(A058008(n+1)+1+n)`
-/

namespace A067348.P16893834394470003453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (A058008 (n + 1) + 1 + (n : ℤ)).toNat

end

end A067348.P16893834394470003453

/-! ## A067348.P18216055691260556658

`∩[A042996(n+1), A048618(n+1)]`
-/

namespace A067348.P18216055691260556658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067348.P18216055691260556658

/-! ## A067348.P11069369162525357828

`∩[A042996(n+1), A139270(n+1)]`
-/

namespace A067348.P11069369162525357828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067348.P11069369162525357828

/-! ## A067348.P5937666163039801411

`∩[A042996(n+1), A176100(n+1)]`
-/

namespace A067348.P5937666163039801411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067348.P5937666163039801411

/-! ## A067348.P8454588669247065016

`record[A057815(2*(n+1))]`
-/

namespace A067348.P8454588669247065016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067348.P8454588669247065016

/-! ## A067348.P14080868497627570155

`2*record[(n+1)/A049077(2*(n+1))]`
-/

namespace A067348.P14080868497627570155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A049077 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067348.P14080868497627570155

/-! ## A067348.P966937163738715250

`2*A001057(A056067(2*n+1))`
-/

namespace A067348.P966937163738715250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001057 (A056067 (2 * n + 1)).toNat

end

end A067348.P966937163738715250

/-!
# A067349: Number of divisors of sigma(n)+phi(n).

The programs for A067349, the canonical program `A067349.P12324079268096477612` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067349 has offset 1).

The definition of A067349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067349.P12324079268096477612

`A000005(A000010(n+1)+A000203(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067349

/-- `A000005(A000010(n+1)+A000203(n+1))` -/
def P12324079268096477612.Spec : Prop :=
  ∀ n, P12324079268096477612.a n = A067349 (n + 1)

theorem P12324079268096477612.correct : P12324079268096477612.Spec := by
  intro n
  simp only [A067349, Nat.add_sub_cancel]

end A067349

/-! ## A067349.P16400170929539486865

`A000005(∑{d}[n+1, #]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A067349.P16400170929539486865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A067349.P16400170929539486865

namespace A067349

/-- `A000005(∑{d}[n+1, #]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P16400170929539486865.Spec : Prop :=
  ∀ n, P16400170929539486865.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P14498425899375185511

`A000005(A065387(n+1))`
-/

namespace A067349.P14498425899375185511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065387 (n + 1)).toNat

end

end A067349.P14498425899375185511

namespace A067349

/-- `A000005(A065387(n+1))` -/
def P14498425899375185511.Spec : Prop :=
  ∀ n, P14498425899375185511.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P16013029931677784893

`A000005(A209187(n+1)+1+n)`
-/

namespace A067349.P16013029931677784893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A209187 (n + 1) + 1 + (n : ℤ)).toNat

end

end A067349.P16013029931677784893

namespace A067349

/-- `A000005(A209187(n+1)+1+n)` -/
def P16013029931677784893.Spec : Prop :=
  ∀ n, P16013029931677784893.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P7904879883462499595

`A000005(∑{d}[n+1, #]+A000010(n+1))`
-/

namespace A067349.P7904879883462499595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + A000010 (n + 1)).toNat

end

end A067349.P7904879883462499595

namespace A067349

/-- `A000005(∑{d}[n+1, #]+A000010(n+1))` -/
def P7904879883462499595.Spec : Prop :=
  ∀ n, P7904879883462499595.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P14472599981206635531

`A000005(A109606(n+1)+∑{d}[n+1, #]+1)`
-/

namespace A067349.P14472599981206635531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + 1).toNat

end

end A067349.P14472599981206635531

namespace A067349

/-- `A000005(A109606(n+1)+∑{d}[n+1, #]+1)` -/
def P14472599981206635531.Spec : Prop :=
  ∀ n, P14472599981206635531.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P4699332848096689019

`A000005(∑{d}[n+1, #]+A039649(n+1)-1)`
-/

namespace A067349.P4699332848096689019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (A039649 (n + 1) - 1)).toNat

end

end A067349.P4699332848096689019

namespace A067349

/-- `A000005(∑{d}[n+1, #]+A039649(n+1)-1)` -/
def P4699332848096689019.Spec : Prop :=
  ∀ n, P4699332848096689019.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P12072302896526288981

`A000005(A109606(n+1)+A088580(n+1))`
-/

namespace A067349.P12072302896526288981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (n + 1) + A088580 (n + 1)).toNat

end

end A067349.P12072302896526288981

namespace A067349

/-- `A000005(A109606(n+1)+A088580(n+1))` -/
def P12072302896526288981.Spec : Prop :=
  ∀ n, P12072302896526288981.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P9641240379302305101

`A000005(A255385(n+1)+A000005(n+1))`
-/

namespace A067349.P9641240379302305101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A255385 (n + 1) + A000005 (n + 1)).toNat

end

end A067349.P9641240379302305101

namespace A067349

/-- `A000005(A255385(n+1)+A000005(n+1))` -/
def P9641240379302305101.Spec : Prop :=
  ∀ n, P9641240379302305101.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P7740511082890715643

`A000005(A051755(n+2)+A051709(n+1))`
-/

namespace A067349.P7740511082890715643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051755 (n + 2) + A051709 (n + 1)).toNat

end

end A067349.P7740511082890715643

namespace A067349

/-- `A000005(A051755(n+2)+A051709(n+1))` -/
def P7740511082890715643.Spec : Prop :=
  ∀ n, P7740511082890715643.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P1136660135640312943

`A000005(A038040(n+1)-A094472(n+1))`
-/

namespace A067349.P1136660135640312943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038040 (n + 1) - A094472 (n + 1)).toNat

end

end A067349.P1136660135640312943

namespace A067349

/-- `A000005(A038040(n+1)-A094472(n+1))` -/
def P1136660135640312943.Spec : Prop :=
  ∀ n, P1136660135640312943.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P10191324199173185952

`A000005(A233541(n+1)-A000005(n+1))`
-/

namespace A067349.P10191324199173185952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233541 (n + 1) - A000005 (n + 1)).toNat

end

end A067349.P10191324199173185952

namespace A067349

/-- `A000005(A233541(n+1)-A000005(n+1))` -/
def P10191324199173185952.Spec : Prop :=
  ∀ n, P10191324199173185952.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P5820922282162238186

`A000005(A000203(n+1)+A109606(n+1)+1)`
-/

namespace A067349.P5820922282162238186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + (A109606 (n + 1) + 1)).toNat

end

end A067349.P5820922282162238186

namespace A067349

/-- `A000005(A000203(n+1)+A109606(n+1)+1)` -/
def P5820922282162238186.Spec : Prop :=
  ∀ n, P5820922282162238186.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P1843720490924100672

`A000005(A000203(n+1)+A039649(n+1)-1)`
-/

namespace A067349.P1843720490924100672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + (A039649 (n + 1) - 1)).toNat

end

end A067349.P1843720490924100672

namespace A067349

/-- `A000005(A000203(n+1)+A039649(n+1)-1)` -/
def P1843720490924100672.Spec : Prop :=
  ∀ n, P1843720490924100672.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P9215133438612022495

`A000005(A039649(n+1)+A088580(n+1)-2)`
-/

namespace A067349.P9215133438612022495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039649 (n + 1) + (A088580 (n + 1) - 2)).toNat

end

end A067349.P9215133438612022495

namespace A067349

/-- `A000005(A039649(n+1)+A088580(n+1)-2)` -/
def P9215133438612022495.Spec : Prop :=
  ∀ n, P9215133438612022495.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P1772621316116600983

`A000005(A245092(2*n+1)+A000010(n+1))`
-/

namespace A067349.P1772621316116600983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245092 (2 * n + 1) + A000010 (n + 1)).toNat

end

end A067349.P1772621316116600983

namespace A067349

/-- `A000005(A245092(2*n+1)+A000010(n+1))` -/
def P1772621316116600983.Spec : Prop :=
  ∀ n, P1772621316116600983.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P11006083005035778376

`A000027(∏{e}[A000010(n+1)+A000203(n+1), #+1])`
-/

namespace A067349.P11006083005035778376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A067349.P11006083005035778376

namespace A067349

/-- `A000027(∏{e}[A000010(n+1)+A000203(n+1), #+1])` -/
def P11006083005035778376.Spec : Prop :=
  ∀ n, P11006083005035778376.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P11259285697464752253

`A320111(2*(A000010(n+1)+A000203(n+1)))`
-/

namespace A067349.P11259285697464752253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (A000010 (n + 1) + A000203 (n + 1))).toNat

end

end A067349.P11259285697464752253

namespace A067349

/-- `A320111(2*(A000010(n+1)+A000203(n+1)))` -/
def P11259285697464752253.Spec : Prop :=
  ∀ n, P11259285697464752253.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P7299845371373334102

`A069157(2*(A000010(n+1)+A000203(n+1)))`
-/

namespace A067349.P7299845371373334102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * (A000010 (n + 1) + A000203 (n + 1))).toNat

end

end A067349.P7299845371373334102

namespace A067349

/-- `A069157(2*(A000010(n+1)+A000203(n+1)))` -/
def P7299845371373334102.Spec : Prop :=
  ∀ n, P7299845371373334102.a n = A067349 (n + 1)

end A067349

/-! ## A067349.P17661272616073398985

`A183063(2*(A000010(n+1)+A000203(n+1)))`
-/

namespace A067349.P17661272616073398985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (A000010 (n + 1) + A000203 (n + 1))).toNat

end

end A067349.P17661272616073398985

namespace A067349

/-- `A183063(2*(A000010(n+1)+A000203(n+1)))` -/
def P17661272616073398985.Spec : Prop :=
  ∀ n, P17661272616073398985.a n = A067349 (n + 1)

end A067349

/-!
# A067350: Numbers n such that sigma(n)+phi(n) has exactly 4 divisors.

The programs for A067350, the canonical program `A067350.P18314922694609519649` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067350 has offset 1).

The definition of A067350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067350.P18314922694609519649

`eq[4, A067349(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A067350

/-- `eq[4, A067349(n+1)]+1` -/
def P18314922694609519649.Spec : Prop :=
  ∀ n, (P18314922694609519649.a n : ℤ) = A067350 (n + 1)

theorem P18314922694609519649.correct : P18314922694609519649.Spec := by
  intro n
  simp only [A067350, Nat.add_sub_cancel]

end A067350

/-! ## A067350.P6571402266910294889

`eq[4, A067349(A028310(n))]`
-/

namespace A067350.P6571402266910294889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067350.P6571402266910294889

namespace A067350

/-- `eq[4, A067349(A028310(n))]` -/
def P6571402266910294889.Spec : Prop :=
  ∀ n, (P6571402266910294889.a n : ℤ) = A067350 (n + 1)

end A067350

/-! ## A067350.P8903548964711481967

`eq[4, A067349(A000007(n)+n)]`
-/

namespace A067350.P8903548964711481967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067350.P8903548964711481967

namespace A067350

/-- `eq[4, A067349(A000007(n)+n)]` -/
def P8903548964711481967.Spec : Prop :=
  ∀ n, (P8903548964711481967.a n : ℤ) = A067350 (n + 1)

end A067350

/-! ## A067350.P3994673900220352337

`eq[4, A067349(A004277(n)-n)]`
-/

namespace A067350.P3994673900220352337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067350.P3994673900220352337

namespace A067350

/-- `eq[4, A067349(A004277(n)-n)]` -/
def P3994673900220352337.Spec : Prop :=
  ∀ n, (P3994673900220352337.a n : ℤ) = A067350 (n + 1)

end A067350

/-! ## A067350.P7381736061330988601

`eq[4, A067349(A065033(2*n))]`
-/

namespace A067350.P7381736061330988601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067350.P7381736061330988601

namespace A067350

/-- `eq[4, A067349(A065033(2*n))]` -/
def P7381736061330988601.Spec : Prop :=
  ∀ n, (P7381736061330988601.a n : ℤ) = A067350 (n + 1)

end A067350

/-! ## A067350.P8198697901372058387

`eq[2, A072780(A065387(n+1))]+1`
-/

namespace A067350.P8198697901372058387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072780 (A065387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067350.P8198697901372058387

namespace A067350

/-- `eq[2, A072780(A065387(n+1))]+1` -/
def P8198697901372058387.Spec : Prop :=
  ∀ n, (P8198697901372058387.a n : ℤ) = A067350 (n + 1)

end A067350

/-! ## A067350.P10522303064634071708

`eq[4, A067349(A233583(n+1))]`
-/

namespace A067350.P10522303064634071708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067350.P10522303064634071708

namespace A067350

/-- `eq[4, A067349(A233583(n+1))]` -/
def P10522303064634071708.Spec : Prop :=
  ∀ n, (P10522303064634071708.a n : ℤ) = A067350 (n + 1)

end A067350

/-! ## A067350.P1361986621343803291

`A116000(2-A057428(n)+n)`
-/

namespace A067350.P1361986621343803291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116000 (2 - A057428 n + (n : ℤ)).toNat

end

end A067350.P1361986621343803291

namespace A067350

/-- `A116000(2-A057428(n)+n)` -/
def P1361986621343803291.Spec : Prop :=
  ∀ n, P1361986621343803291.a n = A067350 (n + 1)

end A067350

/-! ## A067350.P4026010196870774582

`A116000(3-A000007(n)+n)`
-/

namespace A067350.P4026010196870774582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116000 (3 - A000007 n + (n : ℤ)).toNat

end

end A067350.P4026010196870774582

namespace A067350

/-- `A116000(3-A000007(n)+n)` -/
def P4026010196870774582.Spec : Prop :=
  ∀ n, P4026010196870774582.a n = A067350 (n + 1)

end A067350

/-! ## A067350.P3682815988356879383

`A116000(2-(A057428(n)-n))`
-/

namespace A067350.P3682815988356879383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116000 (2 - (A057428 n - (n : ℤ))).toNat

end

end A067350.P3682815988356879383

namespace A067350

/-- `A116000(2-(A057428(n)-n))` -/
def P3682815988356879383.Spec : Prop :=
  ∀ n, P3682815988356879383.a n = A067350 (n + 1)

end A067350

/-!
# A067351: Numbers k such that sigma(k) + phi(k) has exactly 2 distinct prime divisors.

The programs for A067351, the canonical program `A067351.P7450103734320064596` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067351 has offset 1).

The definition of A067351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067351.P7450103734320064596

`eq[2, A001221(A000203(n+1)+A000010(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067351

/-- `eq[2, A001221(A000203(n+1)+A000010(n+1))]+1` -/
def P7450103734320064596.Spec : Prop :=
  ∀ n, (P7450103734320064596.a n : ℤ) = A067351 (n + 1)

theorem P7450103734320064596.correct : P7450103734320064596.Spec := by
  intro n
  simp only [A067351, Nat.add_sub_cancel]

end A067351

/-! ## A067351.P10531639682718950499

`eq[2, A001221(A065387(n+1))]+1`
-/

namespace A067351.P10531639682718950499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067351.P10531639682718950499

namespace A067351

/-- `eq[2, A001221(A065387(n+1))]+1` -/
def P10531639682718950499.Spec : Prop :=
  ∀ n, (P10531639682718950499.a n : ℤ) = A067351 (n + 1)

end A067351

/-! ## A067351.P18060801414406024860

`eq[2, A001221(A209187(n+1)+n+1)]+1`
-/

namespace A067351.P18060801414406024860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A209187 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067351.P18060801414406024860

namespace A067351

/-- `eq[2, A001221(A209187(n+1)+n+1)]+1` -/
def P18060801414406024860.Spec : Prop :=
  ∀ n, (P18060801414406024860.a n : ℤ) = A067351 (n + 1)

end A067351

/-! ## A067351.P2693033084947705346

`lt[A223309(A225867(n+6)), A335376(2*(n+2))]`
-/

namespace A067351.P2693033084947705346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223309 (A225867 (n + 6)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067351.P2693033084947705346

namespace A067351

/-- `lt[A223309(A225867(n+6)), A335376(2*(n+2))]` -/
def P2693033084947705346.Spec : Prop :=
  ∀ n, (P2693033084947705346.a n : ℤ) = A067351 (n + 1)

end A067351

/-!
# A067352: Divide the natural numbers in sets of consecutive numbers starting with {1,2} as the first set. The number of elements of the n-th set is equal to the sum of the n-1 final numbers in the (n-1)st set. The number of elements of the n-th set gives a(n).

The programs for A067352, there is no canonical definition to state claims against.
-/

/-! ## A067352.P2551849356665237790

`Δ[n*a(n-1)+n-∑[n]]` with `a(0)=1, a(1)=3`
-/

namespace A067352.P2551849356665237790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n : ℤ) * f1 (n - 1) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067352.P2551849356665237790

/-! ## A067352.P12672085977389978246

`A001057(Δ[n*a(n-1)-n])` with `a(0)=2, a(1)=5`
-/

namespace A067352.P12672085977389978246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n).toNat

end

end A067352.P12672085977389978246

/-!
# A067353: Divide the natural numbers in sets of consecutive numbers starting with {1,2} as the first set. The number of elements of the n-th set is equal to the sum of the n-1 final numbers in the (n-1)st set. The final number of the n-th set gives a(n).

The programs for A067353, the canonical program `A067353.P6467218641182411212` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067353 has offset 1).

The definition of A067353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067353.P6467218641182411212

`(n+1)*a(n-1)-n*(n-1)/2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067353

/-- `(n+1)*a(n-1)-n*(n-1)/2` -/
def P6467218641182411212.Spec : Prop :=
  ∀ n, P6467218641182411212.a n = (A067353 (n + 1) : ℚ)

end A067353

/-! ## A067353.P14842094280767899442

`(n+1)*(a(n-1)-n/2)+n` with `a(0)=2`
-/

namespace A067353.P14842094280767899442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) - (n : ℚ) / 2) + (n : ℚ)

end

end A067353.P14842094280767899442

namespace A067353

/-- `(n+1)*(a(n-1)-n/2)+n` -/
def P14842094280767899442.Spec : Prop :=
  ∀ n, P14842094280767899442.a n = (A067353 (n + 1) : ℚ)

end A067353

/-! ## A067353.P11414472482090698274

`a(n-1)-n*((n-1)/2-a(n-1))` with `a(0)=2`
-/

namespace A067353.P11414472482090698274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2 - a (n - 1))

end

end A067353.P11414472482090698274

namespace A067353

/-- `a(n-1)-n*((n-1)/2-a(n-1))` -/
def P11414472482090698274.Spec : Prop :=
  ∀ n, P11414472482090698274.a n = (A067353 (n + 1) : ℚ)

end A067353

/-! ## A067353.P2741038062681454049

`∑[A067352(n+1)]`
-/

namespace A067353.P2741038062681454049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067353.P2741038062681454049

namespace A067353

/-- `∑[A067352(n+1)]` -/
def P2741038062681454049.Spec : Prop :=
  ∀ n, P2741038062681454049.a n = A067353 (n + 1)

end A067353

/-!
# A067354: Numbers k such that prime(k+2)-(k+2)*tau(k+2) = prime(k-2)-(k-2)*tau(k-2) where tau(k) = A000005(k) is the number of divisors of k.

The programs for A067354, there is no canonical definition to state claims against.
-/

/-! ## A067354.P14364060141558831822

`A266627(n)+A095416(A266596(n))`
-/

namespace A067354.P14364060141558831822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266627 n + A095416 (A266596 n).toNat

end

end A067354.P14364060141558831822

/-!
# A067357: Number of self-conjugate partitions of 4n+1 into odd parts.

The programs for A067357, there is no canonical definition to state claims against.
-/

/-! ## A067357.P11434961134989183933

`(-1)^n*A053254(n)`
-/

namespace A067357.P11434961134989183933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053254 n

end

end A067357.P11434961134989183933

/-! ## A067357.P16741875329921578494

`A376628(n+1)+A376628(n)`
-/

namespace A067357.P16741875329921578494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376628 (n + 1) + A376628 n

end

end A067357.P16741875329921578494

/-! ## A067357.P1223676843325526039

`abs(A053254(n))`
-/

namespace A067357.P1223676843325526039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053254 n|

end

end A067357.P1223676843325526039

/-! ## A067357.P7743093919678816864

`gcd(A000038(n), A053254(n))`
-/

namespace A067357.P7743093919678816864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053254 n)

end

end A067357.P7743093919678816864

/-! ## A067357.P15066037538277812033

`lcm(A006466(n), A053254(n))`
-/

namespace A067357.P15066037538277812033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A053254 n)

end

end A067357.P15066037538277812033

/-! ## A067357.P17910120994821331673

`A053254(n)*A165326(n+1)`
-/

namespace A067357.P17910120994821331673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053254 n * A165326 (n + 1)

end

end A067357.P17910120994821331673

/-! ## A067357.P11410995212946826195

`A053254(n)/A165326(A020639(n+1))`
-/

namespace A067357.P11410995212946826195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053254 n : ℚ) / (A165326 (A020639 (n + 1)).toNat : ℚ)

end

end A067357.P11410995212946826195

/-! ## A067357.P8119708740568265008

`A053254(n)/A165326(A165326(n)+n)`
-/

namespace A067357.P8119708740568265008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053254 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A067357.P8119708740568265008

/-! ## A067357.P4416717930859346870

`A053254(n)*A132969(n)/A132970(n)`
-/

namespace A067357.P4416717930859346870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053254 n * A132969 n : ℚ) / (A132970 n : ℚ)

end

end A067357.P4416717930859346870

/-!
# A067358: Imaginary part of (5+12i)^n.

The programs for A067358, the canonical program `A067358.P3739332946696833435` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067358 has offset 0).

The definition of A067358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067358.P3739332946696833435

`10*a(n-1)-169*a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067358

/-- `10*a(n-1)-169*a(n-2)` -/
def P3739332946696833435.Spec : Prop :=
  ∀ n, P3739332946696833435.a n = A067358 n

theorem P3739332946696833435.correct : P3739332946696833435.Spec := by
  intro n
  simp only [A067358]

end A067358

/-!
# A067359: Real part of (5 + 12i)^n.

The programs for A067359, the canonical program `A067359.P16770837282952367462` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067359 has offset 1).

The definition of A067359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067359.P16770837282952367462

`10*a(n-1)-169*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067359

/-- `10*a(n-1)-169*a(n-2)` -/
def P16770837282952367462.Spec : Prop :=
  ∀ n, P16770837282952367462.a n = A067359 (n + 1)

theorem P16770837282952367462.correct : P16770837282952367462.Spec := by
  intro n
  simp only [A067359, Nat.add_sub_cancel]

end A067359

/-! ## A067359.P11752026083253949532

`A121622(2*n)`
-/

namespace A067359.P11752026083253949532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121622 (2 * n)

end

end A067359.P11752026083253949532

namespace A067359

/-- `A121622(2*n)` -/
def P11752026083253949532.Spec : Prop :=
  ∀ n, P11752026083253949532.a n = A067359 (n + 1)

end A067359

/-! ## A067359.P17438658005545909504

`or(1, A121622(A005843(n)))`
-/

namespace A067359.P17438658005545909504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A121622 (A005843 n).toNat)

end

end A067359.P17438658005545909504

namespace A067359

/-- `or(1, A121622(A005843(n)))` -/
def P17438658005545909504.Spec : Prop :=
  ∀ n, P17438658005545909504.a n = A067359 (n + 1)

end A067359

/-! ## A067359.P12750430989925673660

`A033999(n)*A121621(2*n)`
-/

namespace A067359.P12750430989925673660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A121621 (2 * n)

end

end A067359.P12750430989925673660

namespace A067359

/-- `A033999(n)*A121621(2*n)` -/
def P12750430989925673660.Spec : Prop :=
  ∀ n, P12750430989925673660.a n = A067359 (n + 1)

end A067359

/-! ## A067359.P391298692260574830

`A009001(2*n)*A121621(2*n)`
-/

namespace A067359.P391298692260574830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A121621 (2 * n)

end

end A067359.P391298692260574830

namespace A067359

/-- `A009001(2*n)*A121621(2*n)` -/
def P391298692260574830.Spec : Prop :=
  ∀ n, P391298692260574830.a n = A067359 (n + 1)

end A067359

/-! ## A067359.P14812127966819014110

`A121621(A005843(n))/A033999(n)`
-/

namespace A067359.P14812127966819014110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121621 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A067359.P14812127966819014110

namespace A067359

/-- `A121621(A005843(n))/A033999(n)` -/
def P14812127966819014110.Spec : Prop :=
  ∀ n, P14812127966819014110.a n = (A067359 (n + 1) : ℚ)

end A067359

/-! ## A067359.P10339635828236727055

`A121622(A005843(n))+A000038(n+1)`
-/

namespace A067359.P10339635828236727055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121622 (A005843 n).toNat + A000038 (n + 1)

end

end A067359.P10339635828236727055

namespace A067359

/-- `A121622(A005843(n))+A000038(n+1)` -/
def P10339635828236727055.Spec : Prop :=
  ∀ n, P10339635828236727055.a n = A067359 (n + 1)

end A067359

/-!
# A067360: a(n) = 17^n sin(2n arctan(1/4)) or numerator of tan(2n arctan(1/4)).

The programs for A067360, there is no canonical definition to state claims against.
-/

/-! ## A067360.P14123033257591685291

`30*a(n-1)-289*a(n-2)` with `a(0)=8, a(1)=240`
-/

namespace A067360.P14123033257591685291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 240] fun n a =>
  30 * a (n - 1) - 289 * a (n - 2)

end

end A067360.P14123033257591685291

/-! ## A067360.P7606860476257151867

`A106393(Δ[n²])`
-/

namespace A067360.P7606860476257151867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106393 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A067360.P7606860476257151867

/-! ## A067360.P13378635581577939866

`A007318(∑[n])*A106393(A005408(n))`
-/

namespace A067360.P13378635581577939866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A106393 (A005408 n).toNat

end

end A067360.P13378635581577939866

/-! ## A067360.P8129582730925979783

`A001222(A089793(n))*A106393(A005408(n))`
-/

namespace A067360.P8129582730925979783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089793 n).toNat * A106393 (A005408 n).toNat

end

end A067360.P8129582730925979783

/-! ## A067360.P11806434176983763625

`A106393(A005408(n))/A007318(A184389(n+1))`
-/

namespace A067360.P11806434176983763625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106393 (A005408 n).toNat : ℚ) / (A007318 (A184389 (n + 1)).toNat : ℚ)

end

end A067360.P11806434176983763625

/-! ## A067360.P16098693880235736537

`A106393(A005408(n))%A332159(n)`
-/

namespace A067360.P16098693880235736537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106393 (A005408 n).toNat) (A332159 n)

end

end A067360.P16098693880235736537

/-!
# A067361: a(n) = 17^n*cos(2*n*arctan(1/4)) or denominator of tan(2*n*arctan(1/4)).

The programs for A067361, the canonical program `A067361.P9351002894098836174` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067361 has offset 1).

The definition of A067361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067361.P15093185803912438604

`17^(n+1)*cos((n+1)*atan(8/15))`
-/

namespace A067361.P15093185803912438604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (17 ^ (n + 1) : ℝ) * Real.cos ((n + 1 : ℝ) * Real.arctan ((8 : ℚ) / 15 : ℝ))

end

end A067361.P15093185803912438604

namespace A067361

/-- `17^(n+1)*cos((n+1)*atan(8/15))` -/
def P15093185803912438604.Spec : Prop :=
  ∀ n, P15093185803912438604.a n = (A067361 (n + 1) : ℝ)

end A067361

/-! ## A067361.P9351002894098836174

`30*a(n-1)-289*a(n-2)` with `a(0)=15, a(1)=161`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067361

/-- `30*a(n-1)-289*a(n-2)` -/
def P9351002894098836174.Spec : Prop :=
  ∀ n, P9351002894098836174.a n = A067361 (n + 1)

theorem P9351002894098836174.correct : P9351002894098836174.Spec := by
  intro n
  simp only [A067361, Nat.add_sub_cancel]

end A067361

/-! ## A067361.P10037006157900853569

`17^(n+1)*cos(2*(n+1)*atan(1/4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067361.P10037006157900853569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (17 ^ (n + 1) : ℝ) * Real.cos ((2 * (n + 1) : ℝ) * Real.arctan ((1 : ℚ) / 4 : ℝ))

end

end A067361.P10037006157900853569

namespace A067361

/-- `17^(n+1)*cos(2*(n+1)*atan(1/4))` -/
def P10037006157900853569.Spec : Prop :=
  ∀ n, P10037006157900853569.a n = (A067361 (n + 1) : ℝ)

end A067361

/-!
# A067362: a(n) = p - n!^2, where p is the smallest prime > n!^2+1.

The programs for A067362, there is no canonical definition to state claims against.
-/

/-! ## A067362.P7181017320817015073

`p?[A301431(n)+1+n]`
-/

namespace A067362.P7181017320817015073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301431 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067362.P7181017320817015073

/-! ## A067362.P14441866797110731739

`A301431(n+1)+2+n`
-/

namespace A067362.P14441866797110731739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301431 (n + 1) + 2 + (n : ℤ)

end

end A067362.P14441866797110731739

/-! ## A067362.P14583410448077128111

`Δ[A167499(n)+∑[A301431(n)]]`
-/

namespace A067362.P14583410448077128111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067362.P14583410448077128111

/-! ## A067362.P460471631175047810

`p?[A141310(A301431(n)+n)]`
-/

namespace A067362.P460471631175047810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A301431 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067362.P460471631175047810

/-! ## A067362.P9931518530137359189

`p?[A166333(A301431(n)+n)]`
-/

namespace A067362.P9931518530137359189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A301431 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067362.P9931518530137359189

/-!
# A067367: Primes p such that the number of digits in p! is also prime.

The programs for A067367, there is no canonical definition to state claims against.
-/

/-! ## A067367.P12379563283744425568

`p?[A035065(n+1)]`
-/

namespace A067367.P12379563283744425568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067367.P12379563283744425568

/-! ## A067367.P9771280600684489312

`∩[A035065(n+1), A106118(n+1)]`
-/

namespace A067367.P9771280600684489312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P9771280600684489312

/-! ## A067367.P14171496865936975856

`∩[A035065(n+1), A108719(n+1)]`
-/

namespace A067367.P14171496865936975856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P14171496865936975856

/-! ## A067367.P13523513555607123773

`∩[A035065(n+1), A138837(n+1)]`
-/

namespace A067367.P13523513555607123773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P13523513555607123773

/-! ## A067367.P10458001766290394379

`∩[A035065(n+1), A261123(n+1)]`
-/

namespace A067367.P10458001766290394379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P10458001766290394379

/-! ## A067367.P11297874980690465991

`∩[A000040(n+1), A035065(n+1)]`
-/

namespace A067367.P11297874980690465991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P11297874980690465991

/-! ## A067367.P15221017740186023021

`∩[A006005(n+1), A035065(n+1)]`
-/

namespace A067367.P15221017740186023021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P15221017740186023021

/-! ## A067367.P9397190087293220424

`∩[A008578(n+1), A035065(n+1)]`
-/

namespace A067367.P9397190087293220424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P9397190087293220424

/-! ## A067367.P12632230486026842914

`∩[A033946(n+1), A035065(n+1)]`
-/

namespace A067367.P12632230486026842914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P12632230486026842914

/-! ## A067367.P2765237504531966461

`∩[A035065(n+1), A045344(n+1)]`
-/

namespace A067367.P2765237504531966461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P2765237504531966461

/-! ## A067367.P9545294755621263252

`∩[A035065(n+1), A065091(n+1)]`
-/

namespace A067367.P9545294755621263252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P9545294755621263252

/-! ## A067367.P4514117948057851419

`∩[A035065(n+1), A083249(n+1)]`
-/

namespace A067367.P4514117948057851419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P4514117948057851419

/-! ## A067367.P1037026834523970546

`∩[A035065(n+1), A140475(n+1)]`
-/

namespace A067367.P1037026834523970546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P1037026834523970546

/-! ## A067367.P5815181707502198164

`∩[A035065(n+1), A158611(n+1)]`
-/

namespace A067367.P5815181707502198164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P5815181707502198164

/-! ## A067367.P2065406296679941471

`∩[A035065(n+1), A171577(n+1)]`
-/

namespace A067367.P2065406296679941471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P2065406296679941471

/-! ## A067367.P10734551983635701866

`∩[A035065(n+1), A182986(n+1)]`
-/

namespace A067367.P10734551983635701866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P10734551983635701866

/-! ## A067367.P8495831979665436524

`∩[A035065(n+1), A215848(n+1)]`
-/

namespace A067367.P8495831979665436524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P8495831979665436524

/-! ## A067367.P9731491563145720619

`∩[A035065(n+1), A326715(n+1)]`
-/

namespace A067367.P9731491563145720619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067367.P9731491563145720619

/-! ## A067367.P15264520248070652971

`record[A020639(A035065(n+2))]`
-/

namespace A067367.P15264520248070652971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035065 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067367.P15264520248070652971

/-! ## A067367.P8100379595344823256

`record[A006530(A035065(n+7))]`
-/

namespace A067367.P8100379595344823256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035065 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067367.P8100379595344823256

/-!
# A067368: a(n) is the smallest positive even integer that cannot be expressed as the product of two or three previous terms (not necessarily distinct).

The programs for A067368, the canonical program `A067368.P1907791272494275587` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067368 has offset 1).

The definition of A067368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067368.P4388244996918939155

`2*A191257(n+1)`
-/

namespace A067368.P4388244996918939155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191257 (n + 1)

end

end A067368.P4388244996918939155

namespace A067368

/-- `2*A191257(n+1)` -/
def P4388244996918939155.Spec : Prop :=
  ∀ n, P4388244996918939155.a n = A067368 (n + 1)

end A067368

/-! ## A067368.P7843085050358754412

`A213258(n+1)/2`
-/

namespace A067368.P7843085050358754412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213258 (n + 1) : ℚ) / 2

end

end A067368.P7843085050358754412

namespace A067368

/-- `A213258(n+1)/2` -/
def P7843085050358754412.Spec : Prop :=
  ∀ n, P7843085050358754412.a n = (A067368 (n + 1) : ℚ)

end A067368

/-! ## A067368.P1907791272494275587

`eq[2, and(n, -n)%7]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067368

/-- `eq[2, and(n, -n)%7]` -/
def P1907791272494275587.Spec : Prop :=
  ∀ n, (P1907791272494275587.a n : ℤ) = A067368 (n + 1)

theorem P1907791272494275587.correct : P1907791272494275587.Spec := by
  intro n
  simp only [A067368, Nat.add_sub_cancel]

end A067368

/-! ## A067368.P16180867401496577469

`lt[1, xor(n, n-1)%7]`
-/

namespace A067368.P16180867401496577469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067368.P16180867401496577469

namespace A067368

/-- `lt[1, xor(n, n-1)%7]` -/
def P16180867401496577469.Spec : Prop :=
  ∀ n, (P16180867401496577469.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P4328999937983350950

`eq[3, xor(n+1, n-2)%7]`
-/

namespace A067368.P4328999937983350950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n + 1 : ℤ) ((n : ℤ) - 2)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067368.P4328999937983350950

namespace A067368

/-- `eq[3, xor(n+1, n-2)%7]` -/
def P4328999937983350950.Spec : Prop :=
  ∀ n, (P4328999937983350950.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P13926217184077053670

`eq[1, abs((abs((val(n+1, 2)-n)%3)-n)%3)]+1`
-/

namespace A067368.P13926217184077053670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.tmod (|Int.tmod ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - (n : ℤ)) 3| - (n : ℤ)) 3)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067368.P13926217184077053670

namespace A067368

/-- `eq[1, abs((abs((val(n+1, 2)-n)%3)-n)%3)]+1` -/
def P13926217184077053670.Spec : Prop :=
  ∀ n, (P13926217184077053670.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P395353721328078005

`eq[1, A096271(n)]+1`
-/

namespace A067368.P395353721328078005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067368.P395353721328078005

namespace A067368

/-- `eq[1, A096271(n)]+1` -/
def P395353721328078005.Spec : Prop :=
  ∀ n, (P395353721328078005.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P10415592330779720620

`eq[1, A191255(n+1)]+1`
-/

namespace A067368.P10415592330779720620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067368.P10415592330779720620

namespace A067368

/-- `eq[1, A191255(n+1)]+1` -/
def P10415592330779720620.Spec : Prop :=
  ∀ n, (P10415592330779720620.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P8026452456175116158

`(A067396(n+1)-n)/2`
-/

namespace A067368.P8026452456175116158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067396 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A067368.P8026452456175116158

namespace A067368

/-- `(A067396(n+1)-n)/2` -/
def P8026452456175116158.Spec : Prop :=
  ∀ n, P8026452456175116158.a n = (A067368 (n + 1) : ℚ)

end A067368

/-! ## A067368.P10818510749896125890

`A067395(n)+a(n-1)` with `a(0)=2`
-/

namespace A067368.P10818510749896125890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A067395 n + a (n - 1)

end

end A067368.P10818510749896125890

namespace A067368

/-- `A067395(n)+a(n-1)` -/
def P10818510749896125890.Spec : Prop :=
  ∀ n, P10818510749896125890.a n = A067368 (n + 1)

end A067368

/-! ## A067368.P15761078788938441640

`eq[1, A085068(val(abs(1-4*n)+1, 2))]`
-/

namespace A067368.P15761078788938441640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 (SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067368.P15761078788938441640

namespace A067368

/-- `eq[1, A085068(val(abs(1-4*n)+1, 2))]` -/
def P15761078788938441640.Spec : Prop :=
  ∀ n, (P15761078788938441640.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P14234302719562693282

`∑[A067395(n+1)]+2-A067395(n+1)`
-/

namespace A067368.P14234302719562693282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A067395 (n + 1))

end

end A067368.P14234302719562693282

namespace A067368

/-- `∑[A067395(n+1)]+2-A067395(n+1)` -/
def P14234302719562693282.Spec : Prop :=
  ∀ n, P14234302719562693282.a n = A067368 (n + 1)

end A067368

/-! ## A067368.P7893575552163263628

`A191257(n+2)+A191257(n+2)-A067395(n+1)`
-/

namespace A067368.P7893575552163263628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 2) + (A191257 (n + 2) - A067395 (n + 1))

end

end A067368.P7893575552163263628

namespace A067368

/-- `A191257(n+2)+A191257(n+2)-A067395(n+1)` -/
def P7893575552163263628.Spec : Prop :=
  ∀ n, P7893575552163263628.a n = A067368 (n + 1)

end A067368

/-! ## A067368.P10242719572537537498

`lt[1, A096271(2*n+1)]+1`
-/

namespace A067368.P10242719572537537498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067368.P10242719572537537498

namespace A067368

/-- `lt[1, A096271(2*n+1)]+1` -/
def P10242719572537537498.Spec : Prop :=
  ∀ n, (P10242719572537537498.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P15310629056579437213

`comp[val(n+1, 2)%3*ceil(n/2)]`
-/

namespace A067368.P15310629056579437213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (n + 1) 2 % 3 : ℕ) : ℤ) * ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A067368.P15310629056579437213

namespace A067368

/-- `comp[val(n+1, 2)%3*ceil(n/2)]` -/
def P15310629056579437213.Spec : Prop :=
  ∀ n, (P15310629056579437213.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P11489452963950926268

`A005408(lt[A096271(n), 1])+1`
-/

namespace A067368.P11489452963950926268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A067368.P11489452963950926268

namespace A067368

/-- `A005408(lt[A096271(n), 1])+1` -/
def P11489452963950926268.Spec : Prop :=
  ∀ n, P11489452963950926268.a n = A067368 (n + 1)

end A067368

/-! ## A067368.P14262393086673203999

`eq[2, A078734(n+1)]+1`
-/

namespace A067368.P14262393086673203999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067368.P14262393086673203999

namespace A067368

/-- `eq[2, A078734(n+1)]+1` -/
def P14262393086673203999.Spec : Prop :=
  ∀ n, (P14262393086673203999.a n : ℤ) = A067368 (n + 1)

end A067368

/-! ## A067368.P1175954292452924482

`A004277(A191257(n+1))`
-/

namespace A067368.P1175954292452924482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A191257 (n + 1)).toNat

end

end A067368.P1175954292452924482

namespace A067368

/-- `A004277(A191257(n+1))` -/
def P1175954292452924482.Spec : Prop :=
  ∀ n, P1175954292452924482.a n = A067368 (n + 1)

end A067368

/-! ## A067368.P11396879892780696085

`lt[2, A078734(2*(n+1))]+1`
-/

namespace A067368.P11396879892780696085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067368.P11396879892780696085

namespace A067368

/-- `lt[2, A078734(2*(n+1))]+1` -/
def P11396879892780696085.Spec : Prop :=
  ∀ n, (P11396879892780696085.a n : ℤ) = A067368 (n + 1)

end A067368

/-!
# A067369: Weight of the alternating group (A_n) in transpositions.

The programs for A067369, there is no canonical definition to state claims against.
-/

/-! ## A067369.P1940500538625854819

`A067370(n+1)-A048994(A000124(n))`
-/

namespace A067369.P1940500538625854819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067370 (n + 1) - A048994 (A000124 n).toNat

end

end A067369.P1940500538625854819

/-! ## A067369.P15595750684976435735

`A067318(n+1)-A067370(n+1)`
-/

namespace A067369.P15595750684976435735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067318 (n + 1) - A067370 (n + 1)

end

end A067369.P15595750684976435735

/-! ## A067369.P15020717956757139533

`A062119(n+1)-(A067370(n+1)+A001705(n))`
-/

namespace A067369.P15020717956757139533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1) - (A067370 (n + 1) + A001705 n)

end

end A067369.P15020717956757139533

/-! ## A067369.P9172243243728879473

`A001563(n+1)-(A067370(n+1)+A000254(n+1))`
-/

namespace A067369.P9172243243728879473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) - (A067370 (n + 1) + A000254 (n + 1))

end

end A067369.P9172243243728879473

/-! ## A067369.P7933674091505663438

`A078341(∑[n+2])-A067370(n+1)`
-/

namespace A067369.P7933674091505663438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078341 (∑ j ∈ Finset.range (n + 1), f1 j) - A067370 (n + 1)

end

end A067369.P7933674091505663438

/-! ## A067369.P13918912893926252457

`A088996(eq[0, A088996(n+2)])-A067370(n+1)`
-/

namespace A067369.P13918912893926252457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A067370 (n + 1)

end

end A067369.P13918912893926252457

/-! ## A067369.P4191291302987419099

`A088996(lt[A088996(n+2), 1])-A067370(n+1)`
-/

namespace A067369.P4191291302987419099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A067370 (n + 1)

end

end A067369.P4191291302987419099

/-!
# A067370: The weight of the periphery of the alternating group, denoted v(P_N).

The programs for A067370, there is no canonical definition to state claims against.
-/

/-! ## A067370.P11088941280290934314

`A067369(n+1)+A048994(A000124(n))`
-/

namespace A067370.P11088941280290934314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067369 (n + 1) + A048994 (A000124 n).toNat

end

end A067370.P11088941280290934314

/-! ## A067370.P1367656735537383513

`A067318(n+1)-A067369(n+1)`
-/

namespace A067370.P1367656735537383513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067318 (n + 1) - A067369 (n + 1)

end

end A067370.P1367656735537383513

/-! ## A067370.P3058154725542854517

`A062119(n+1)-(A067369(n+1)+A001705(n))`
-/

namespace A067370.P3058154725542854517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1) - (A067369 (n + 1) + A001705 n)

end

end A067370.P3058154725542854517

/-! ## A067370.P8760861652660074663

`A001563(n+1)-(A067369(n+1)+A000254(n+1))`
-/

namespace A067370.P8760861652660074663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) - (A067369 (n + 1) + A000254 (n + 1))

end

end A067370.P8760861652660074663

/-! ## A067370.P3878933315087857818

`A078341(∑[n+2])-A067369(n+1)`
-/

namespace A067370.P3878933315087857818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078341 (∑ j ∈ Finset.range (n + 1), f1 j) - A067369 (n + 1)

end

end A067370.P3878933315087857818

/-! ## A067370.P15080827436290939916

`A088996(eq[0, A088996(n+2)])-A067369(n+1)`
-/

namespace A067370.P15080827436290939916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A067369 (n + 1)

end

end A067370.P15080827436290939916

/-! ## A067370.P2821576408013602771

`A088996(lt[A088996(n+2), 1])-A067369(n+1)`
-/

namespace A067370.P2821576408013602771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A067369 (n + 1)

end

end A067370.P2821576408013602771

/-!
# A067371: Arithmetic derivatives of 3-smooth numbers.

The programs for A067371, there is no canonical definition to state claims against.
-/

/-! ## A067371.P13493030557630924101

`A003415(A003586(n+1))`
-/

namespace A067371.P13493030557630924101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003586 (n + 1)).toNat

end

end A067371.P13493030557630924101

/-! ## A067371.P12528652784116517871

`∑{d}[∑[A061987(n)], A300251(#)]`
-/

namespace A067371.P12528652784116517871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A067371.P12528652784116517871

/-! ## A067371.P7291568810558887821

`∑{d}[Δ[A259823(n)], A300251(#)]`
-/

namespace A067371.P7291568810558887821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A067371.P7291568810558887821

/-! ## A067371.P3290275466196097696

`∑{d}[A003586(n+1), A300251(#)]`
-/

namespace A067371.P3290275466196097696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A067371.P3290275466196097696

/-! ## A067371.P17392745156002398880

`∑{d}[sqrt(A025620(n+1)), A300251(#)]`
-/

namespace A067371.P17392745156002398880
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A067371.P17392745156002398880

/-! ## A067371.P5983530249462052097

`∑{d}[A033845(n+1)/6, A300251(#)]`
-/

namespace A067371.P5983530249462052097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033845 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A067371.P5983530249462052097

/-! ## A067371.P4933110217479564153

`∑{d}[ceil(A190812(n+1)/2), A300251(#)]`
-/

namespace A067371.P4933110217479564153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190812 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A067371.P4933110217479564153

/-! ## A067371.P9314323457366317949

`∑{d}[A186711(A186712(n+1)), A300251(#)]`
-/

namespace A067371.P9314323457366317949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A186712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A067371.P9314323457366317949

/-! ## A067371.P15073073730871568884

`A379967(A033845(n+1))`
-/

namespace A067371.P15073073730871568884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379967 (A033845 (n + 1)).toNat

end

end A067371.P15073073730871568884

/-! ## A067371.P6526872597435804606

`A379967(A187778(n+2))`
-/

namespace A067371.P6526872597435804606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379967 (A187778 (n + 2)).toNat

end

end A067371.P6526872597435804606

/-!
# A067372: Integers expressible as the sum of (at least two) consecutive primes in at least 2 ways.

The programs for A067372, there is no canonical definition to state claims against.
-/

/-! ## A067372.P3393214915344074677

`lt[1, A084143(n+1)]+1`
-/

namespace A067372.P3393214915344074677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067372.P3393214915344074677

/-! ## A067372.P3647323192579886584

`lt[1, A084143(A028310(n))]`
-/

namespace A067372.P3647323192579886584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067372.P3647323192579886584

/-! ## A067372.P3583699722669918934

`eq[2, A000045(a(A084143(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A067372.P3583699722669918934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A000045 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067372.P3583699722669918934

/-! ## A067372.P7879821726605804734

`eq[2, A010123(a(A084143(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A067372.P7879821726605804734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A010123 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067372.P7879821726605804734

/-! ## A067372.P17007587943692360538

`eq[2, A011971(a(A084143(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A067372.P17007587943692360538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A011971 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067372.P17007587943692360538

/-! ## A067372.P5225947996974867979

`eq[2, A131308(a(A084143(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A067372.P5225947996974867979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A131308 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067372.P5225947996974867979

/-! ## A067372.P6836110177187898586

`eq[2, A026741(a(A084143(n)))]` with `a(0)=8, a(1)=0`
-/

namespace A067372.P6836110177187898586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 0] fun n f2 =>
  A026741 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067372.P6836110177187898586

/-!
# A067373: Integers expressible as the sum of (at least two) consecutive primes in at least 3 ways.

The programs for A067373, there is no canonical definition to state claims against.
-/

/-! ## A067373.P3913300938474172539

`lt[2, A084143(A028310(n))]`
-/

namespace A067373.P3913300938474172539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A067373.P3913300938474172539

/-!
# A067377: Primes expressible as the sum of (at least two) consecutive primes in at least 1 way.

The programs for A067377, there is no canonical definition to state claims against.
-/

/-! ## A067377.P11150131065956217408

`p?[A309770(n+1)]`
-/

namespace A067377.P11150131065956217408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067377.P11150131065956217408

/-! ## A067377.P17822052025125327698

`filter[A309770(n+1), A010051(#)]`
-/

namespace A067377.P17822052025125327698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067377.P17822052025125327698

/-! ## A067377.P1753907878574893269

`∩[A000040(n+1), A309770(n+1)]`
-/

namespace A067377.P1753907878574893269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P1753907878574893269

/-! ## A067377.P7105204881169357329

`∩[A006005(n+1), A309770(n+1)]`
-/

namespace A067377.P7105204881169357329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P7105204881169357329

/-! ## A067377.P4096905849704854640

`∩[A033946(n+1), A309770(n+1)]`
-/

namespace A067377.P4096905849704854640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P4096905849704854640

/-! ## A067377.P11615657505956255099

`∩[A053813(n+1), A309770(n+1)]`
-/

namespace A067377.P11615657505956255099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P11615657505956255099

/-! ## A067377.P9075848241564206238

`∩[A065091(n+1), A309770(n+1)]`
-/

namespace A067377.P9075848241564206238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P9075848241564206238

/-! ## A067377.P16211980357360193735

`∩[A067126(n+1), A309770(n+1)]`
-/

namespace A067377.P16211980357360193735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P16211980357360193735

/-! ## A067377.P3825259433841611688

`∩[A132630(n+1), A309770(n+1)]`
-/

namespace A067377.P3825259433841611688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P3825259433841611688

/-! ## A067377.P7276315683948173544

`∩[A161346(n+1), A309770(n+1)]`
-/

namespace A067377.P7276315683948173544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P7276315683948173544

/-! ## A067377.P2152189834759349955

`∩[A193339(n+1), A309770(n+1)]`
-/

namespace A067377.P2152189834759349955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P2152189834759349955

/-! ## A067377.P15131983086390529117

`filter[A309770(n+1), A323153(#)]`
-/

namespace A067377.P15131983086390529117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A067377.P15131983086390529117

/-! ## A067377.P14699087581101183639

`p?[A050936(n+1)]`
-/

namespace A067377.P14699087581101183639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067377.P14699087581101183639

/-! ## A067377.P5991794306509096897

`record[A006530(A050936(n+3))]`
-/

namespace A067377.P5991794306509096897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050936 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067377.P5991794306509096897

/-! ## A067377.P16576826641046108246

`filter[A050936(n+1), A010051(#)]`
-/

namespace A067377.P16576826641046108246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067377.P16576826641046108246

/-! ## A067377.P13538779711377632977

`∩[A000040(n+1), A050936(n+1)]`
-/

namespace A067377.P13538779711377632977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P13538779711377632977

/-! ## A067377.P5464826740547073822

`∩[A006005(n+1), A050936(n+1)]`
-/

namespace A067377.P5464826740547073822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P5464826740547073822

/-! ## A067377.P13788899850876206076

`∩[A008578(n+1), A050936(n+1)]`
-/

namespace A067377.P13788899850876206076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P13788899850876206076

/-! ## A067377.P9651797449560239239

`∩[A045344(n+1), A050936(n+1)]`
-/

namespace A067377.P9651797449560239239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P9651797449560239239

/-! ## A067377.P2285290320819214311

`∩[A046022(n+1), A050936(n+1)]`
-/

namespace A067377.P2285290320819214311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067377.P2285290320819214311

/-!
# A067378: Primes expressible as the sum of (at least two) consecutive primes in at least 2 ways.

The programs for A067378, there is no canonical definition to state claims against.
-/

/-! ## A067378.P3793108150928880159

`p?[A067372(n+1)]`
-/

namespace A067378.P3793108150928880159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067378.P3793108150928880159

/-! ## A067378.P608429965205267197

`record[p?[A067372(A291769(n))]]`
-/

namespace A067378.P608429965205267197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067378.P608429965205267197

/-! ## A067378.P8459081861778659359

`record[p?[A067372(A324347(n))]]`
-/

namespace A067378.P8459081861778659359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067378.P8459081861778659359

/-! ## A067378.P1314719130692345344

`record[A006530(A067372(n+2))]`
-/

namespace A067378.P1314719130692345344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067372 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067378.P1314719130692345344

/-! ## A067378.P9789799165689000558

`record[A020639(A067372(abs(1-n)+1))]`
-/

namespace A067378.P9789799165689000558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067372 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067378.P9789799165689000558

/-! ## A067378.P15820131026054368544

`∩[A000040(n+1), A067372(n+1)]`
-/

namespace A067378.P15820131026054368544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P15820131026054368544

/-! ## A067378.P7671420126843846128

`∩[A004139(n+1), A067372(n+1)]`
-/

namespace A067378.P7671420126843846128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P7671420126843846128

/-! ## A067378.P6512736841564218901

`∩[A006005(n+1), A067372(n+1)]`
-/

namespace A067378.P6512736841564218901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P6512736841564218901

/-! ## A067378.P11641472831808453192

`∩[A008578(n+1), A067372(n+1)]`
-/

namespace A067378.P11641472831808453192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P11641472831808453192

/-! ## A067378.P13734807622990112448

`∩[A033946(n+1), A067372(n+1)]`
-/

namespace A067378.P13734807622990112448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P13734807622990112448

/-! ## A067378.P4290572799104745607

`∩[A045319(n+1), A067372(n+1)]`
-/

namespace A067378.P4290572799104745607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P4290572799104745607

/-! ## A067378.P5876353569667457423

`∩[A045344(n+1), A067372(n+1)]`
-/

namespace A067378.P5876353569667457423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P5876353569667457423

/-! ## A067378.P1395165316004268814

`∩[A046022(n+1), A067372(n+1)]`
-/

namespace A067378.P1395165316004268814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P1395165316004268814

/-! ## A067378.P2035522559501411813

`∩[A051948(n+1), A067372(n+1)]`
-/

namespace A067378.P2035522559501411813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P2035522559501411813

/-! ## A067378.P17037031034380207201

`∩[A053813(n+1), A067372(n+1)]`
-/

namespace A067378.P17037031034380207201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P17037031034380207201

/-! ## A067378.P8117092621708785095

`∩[A062972(n+1), A067372(n+1)]`
-/

namespace A067378.P8117092621708785095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P8117092621708785095

/-! ## A067378.P6399833609854865662

`∩[A065091(n+1), A067372(n+1)]`
-/

namespace A067378.P6399833609854865662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P6399833609854865662

/-! ## A067378.P8166062404018273788

`∩[A067372(n+1), A067377(n+1)]`
-/

namespace A067378.P8166062404018273788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067378.P8166062404018273788

/-! ## A067378.P7157301799461531837

`or(1, p?[A067372(A028310(n))])`
-/

namespace A067378.P7157301799461531837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A067378.P7157301799461531837

/-! ## A067378.P2377748241805524591

`filter[A067372(n+1), A010051(#)]`
-/

namespace A067378.P2377748241805524591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067378.P2377748241805524591

/-!
# A067379: Primes expressible as the sum of (at least two) consecutive primes in at least 3 ways.

The programs for A067379, there is no canonical definition to state claims against.
-/

/-! ## A067379.P12960965745139365828

`p?[A067373(n+1)]`
-/

namespace A067379.P12960965745139365828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067379.P12960965745139365828

/-! ## A067379.P3840823859084038158

`p?[record[A067373(A133310(n))]]`
-/

namespace A067379.P3840823859084038158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067379.P3840823859084038158

/-! ## A067379.P14758026540842210820

`p?[record[A067373(A291769(n))]]`
-/

namespace A067379.P14758026540842210820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067379.P14758026540842210820

/-! ## A067379.P15927614787641883467

`p?[record[A067373(A324347(n))]]`
-/

namespace A067379.P15927614787641883467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067379.P15927614787641883467

/-! ## A067379.P14955167269598480366

`∩[A067373(n+1), A067377(n+1)]`
-/

namespace A067379.P14955167269598480366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067379.P14955167269598480366

/-! ## A067379.P5145038465826138776

`∩[A067373(n+1), A067378(n+1)]`
-/

namespace A067379.P5145038465826138776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067379.P5145038465826138776

/-! ## A067379.P11016976302950774906

`record[A006530(A067373(n+3))]`
-/

namespace A067379.P11016976302950774906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067373 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067379.P11016976302950774906

/-! ## A067379.P4739049671340161184

`filter[A067373(n+1), A010051(#)]`
-/

namespace A067379.P4739049671340161184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067379.P4739049671340161184

/-! ## A067379.P14390144334042540177

`filter[A067373(n+1), A257531(#)]`
-/

namespace A067379.P14390144334042540177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A067379.P14390144334042540177

/-! ## A067379.P12812063418223933548

`filter[A067373(n+1), A174897(#)]`
-/

namespace A067379.P12812063418223933548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A067379.P12812063418223933548

/-! ## A067379.P10833190782002378925

`filter[A067373(n+1), A323152(#)]`
-/

namespace A067379.P10833190782002378925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A067379.P10833190782002378925

/-! ## A067379.P13430262839632732529

`filter[A067373(n+1), A323153(#)]`
-/

namespace A067379.P13430262839632732529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A067379.P13430262839632732529

/-! ## A067379.P7337213268721066434

`filter[A067373(n+1), A351957(#)]`
-/

namespace A067379.P7337213268721066434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A067379.P7337213268721066434

/-! ## A067379.P11343772473286780880

`filter[A067373(n+1), A353817(#)]`
-/

namespace A067379.P11343772473286780880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A067379.P11343772473286780880

/-!
# A067380: Primes expressible as the sum of (at least two) consecutive primes in at least 4 ways.

The programs for A067380, there is no canonical definition to state claims against.
-/

/-! ## A067380.P17353861921607800247

`p?[A067374(n+1)]`
-/

namespace A067380.P17353861921607800247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067380.P17353861921607800247

/-! ## A067380.P10888552688201294044

`p?[record[A067374(A133310(n))]]`
-/

namespace A067380.P10888552688201294044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067380.P10888552688201294044

/-! ## A067380.P7414527851411771553

`p?[record[A067374(A152271(n))]]`
-/

namespace A067380.P7414527851411771553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067380.P7414527851411771553

/-! ## A067380.P322709394985743995

`p?[record[A067374(A158416(n))]]`
-/

namespace A067380.P322709394985743995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067380.P322709394985743995

/-! ## A067380.P4152264666693586093

`p?[record[A067374(A291769(n))]]`
-/

namespace A067380.P4152264666693586093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067380.P4152264666693586093

/-! ## A067380.P18213353084133404017

`p?[record[A067374(A324347(n))]]`
-/

namespace A067380.P18213353084133404017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067380.P18213353084133404017

/-! ## A067380.P11211431040136942932

`∩[A067374(n+1), A067379(n+1)]`
-/

namespace A067380.P11211431040136942932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067380.P11211431040136942932

/-!
# A067381: Smallest prime expressible as the sum of (at least two) consecutive primes in n ways.

The programs for A067381, there is no canonical definition to state claims against.
-/

/-! ## A067381.P6217618045480808416

`A060433(A162421(n+1)+char[2])`
-/

namespace A067381.P6217618045480808416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060433 (A162421 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A067381.P6217618045480808416

/-! ## A067381.P3032749726603628976

`A060433(or(n+2, A054845(n)))`
-/

namespace A067381.P3032749726603628976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060433 (Int.lor (n + 2 : ℤ) (A054845 n)).toNat

end

end A067381.P3032749726603628976

/-! ## A067381.P13619198812107771799

`A060433(n+2)%Δ[A060433(n+2)]`
-/

namespace A067381.P13619198812107771799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060433 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060433 (n + 2)) (f1 (n + 1) - f1 n)

end

end A067381.P13619198812107771799

/-!
# A067382: Numbers n such that sigma(phi(n))/sigma(n) = 2.

The programs for A067382, there is no canonical definition to state claims against.
-/

/-! ## A067382.P3746401302718076801

`A066831(eq[A119999(n), A338713(n+1)])`
-/

namespace A067382.P3746401302718076801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066831 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067382.P3746401302718076801

/-!
# A067384: 

The programs for A067384, there is no canonical definition to state claims against.
-/

/-! ## A067384.P12163101614845108067

`A066881(n+1)`
-/

namespace A067384.P12163101614845108067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066881 (n + 1)

end

end A067384.P12163101614845108067

/-!
# A067386: Primes p such that p+1 and p-1 have the same number of distinct prime factors.

The programs for A067386, the canonical program `A067386.P7044445274366932039` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067386 has offset 1).

The definition of A067386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067386.P7044445274366932039

`p?[A115165(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A067386

/-- `p?[A115165(n+1)]` -/
def P7044445274366932039.Spec : Prop :=
  ∀ n, P7044445274366932039.a n = A067386 (n + 1)

theorem P7044445274366932039.correct : P7044445274366932039.Spec := by
  intro n
  simp only [A067386, Nat.add_sub_cancel]

end A067386

/-! ## A067386.P186956428846384207

`filter[A115165(n+1), A010051(#)]`
-/

namespace A067386.P186956428846384207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A067386.P186956428846384207

namespace A067386

/-- `filter[A115165(n+1), A010051(#)]` -/
def P186956428846384207.Spec : Prop :=
  ∀ n, P186956428846384207.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P15577769986177851346

`filter[A115165(n+1), A323152(#)]`
-/

namespace A067386.P15577769986177851346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A067386.P15577769986177851346

namespace A067386

/-- `filter[A115165(n+1), A323152(#)]` -/
def P15577769986177851346.Spec : Prop :=
  ∀ n, P15577769986177851346.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P12535563679354143878

`filter[A115165(n+1), A323153(#)]`
-/

namespace A067386.P12535563679354143878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A067386.P12535563679354143878

namespace A067386

/-- `filter[A115165(n+1), A323153(#)]` -/
def P12535563679354143878.Spec : Prop :=
  ∀ n, P12535563679354143878.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P8415416650701825914

`filter[A115165(n+1), A340371(#)]`
-/

namespace A067386.P8415416650701825914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A067386.P8415416650701825914

namespace A067386

/-- `filter[A115165(n+1), A340371(#)]` -/
def P8415416650701825914.Spec : Prop :=
  ∀ n, P8415416650701825914.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P5273268462971487737

`filter[A115165(n+1), A353670(#)]`
-/

namespace A067386.P5273268462971487737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A067386.P5273268462971487737

namespace A067386

/-- `filter[A115165(n+1), A353670(#)]` -/
def P5273268462971487737.Spec : Prop :=
  ∀ n, P5273268462971487737.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P13744012633345705348

`filter[A115165(n+1), A365716(#)]`
-/

namespace A067386.P13744012633345705348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A067386.P13744012633345705348

namespace A067386

/-- `filter[A115165(n+1), A365716(#)]` -/
def P13744012633345705348.Spec : Prop :=
  ∀ n, P13744012633345705348.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P12418952774318179869

`filter[A115165(n+1), A379969(#)]`
-/

namespace A067386.P12418952774318179869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A067386.P12418952774318179869

namespace A067386

/-- `filter[A115165(n+1), A379969(#)]` -/
def P12418952774318179869.Spec : Prop :=
  ∀ n, P12418952774318179869.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P4285728314868771722

`filter[A115165(n+1), A380467(#)]`
-/

namespace A067386.P4285728314868771722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A067386.P4285728314868771722

namespace A067386

/-- `filter[A115165(n+1), A380467(#)]` -/
def P4285728314868771722.Spec : Prop :=
  ∀ n, P4285728314868771722.a n = A067386 (n + 1)

end A067386

/-! ## A067386.P16781085269275226178

`∩[A000040(n+1), A115165(n+1)]`
-/

namespace A067386.P16781085269275226178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P16781085269275226178

namespace A067386

/-- `∩[A000040(n+1), A115165(n+1)]` -/
def P16781085269275226178.Spec : Prop :=
  ∀ n, (P16781085269275226178.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P1684391569892032203

`∩[A001751(n+1), A115165(n+1)]`
-/

namespace A067386.P1684391569892032203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P1684391569892032203

namespace A067386

/-- `∩[A001751(n+1), A115165(n+1)]` -/
def P1684391569892032203.Spec : Prop :=
  ∀ n, (P1684391569892032203.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P11977244672622373732

`∩[A004139(n+1), A115165(n+1)]`
-/

namespace A067386.P11977244672622373732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P11977244672622373732

namespace A067386

/-- `∩[A004139(n+1), A115165(n+1)]` -/
def P11977244672622373732.Spec : Prop :=
  ∀ n, (P11977244672622373732.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P12597533735841263318

`∩[A006005(n+1), A115165(n+1)]`
-/

namespace A067386.P12597533735841263318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P12597533735841263318

namespace A067386

/-- `∩[A006005(n+1), A115165(n+1)]` -/
def P12597533735841263318.Spec : Prop :=
  ∀ n, (P12597533735841263318.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P681238971463428330

`∩[A008578(n+1), A115165(n+1)]`
-/

namespace A067386.P681238971463428330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P681238971463428330

namespace A067386

/-- `∩[A008578(n+1), A115165(n+1)]` -/
def P681238971463428330.Spec : Prop :=
  ∀ n, (P681238971463428330.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P18342082807787389563

`∩[A033946(n+1), A115165(n+1)]`
-/

namespace A067386.P18342082807787389563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P18342082807787389563

namespace A067386

/-- `∩[A033946(n+1), A115165(n+1)]` -/
def P18342082807787389563.Spec : Prop :=
  ∀ n, (P18342082807787389563.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P4834927278132905598

`∩[A045319(n+1), A115165(n+1)]`
-/

namespace A067386.P4834927278132905598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P4834927278132905598

namespace A067386

/-- `∩[A045319(n+1), A115165(n+1)]` -/
def P4834927278132905598.Spec : Prop :=
  ∀ n, (P4834927278132905598.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P4542541608491061763

`∩[A046022(n+1), A115165(n+1)]`
-/

namespace A067386.P4542541608491061763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P4542541608491061763

namespace A067386

/-- `∩[A046022(n+1), A115165(n+1)]` -/
def P4542541608491061763.Spec : Prop :=
  ∀ n, (P4542541608491061763.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P1993604371016521221

`∩[A051948(n+1), A115165(n+1)]`
-/

namespace A067386.P1993604371016521221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P1993604371016521221

namespace A067386

/-- `∩[A051948(n+1), A115165(n+1)]` -/
def P1993604371016521221.Spec : Prop :=
  ∀ n, (P1993604371016521221.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P15638063345694187668

`∩[A053577(n+1), A115165(n+1)]`
-/

namespace A067386.P15638063345694187668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P15638063345694187668

namespace A067386

/-- `∩[A053577(n+1), A115165(n+1)]` -/
def P15638063345694187668.Spec : Prop :=
  ∀ n, (P15638063345694187668.a n : ℤ) = A067386 (n + 1)

end A067386

/-! ## A067386.P15566912804829215152

`∩[A053813(n+1), A115165(n+1)]`
-/

namespace A067386.P15566912804829215152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067386.P15566912804829215152

namespace A067386

/-- `∩[A053813(n+1), A115165(n+1)]` -/
def P15566912804829215152.Spec : Prop :=
  ∀ n, (P15566912804829215152.a n : ℤ) = A067386 (n + 1)

end A067386

/-!
# A067389: a(n) = 3*n^3 + 2*n^2 + n.

The programs for A067389, the canonical program `A067389.P14097551594125527113` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067389 has offset 0).

The definition of A067389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+2*n²+n` (program `A067389.P14097551594125527113`, by `A067389.P14097551594125527113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067389.P14097551594125527113

`3*n^3+2*n²+n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067389

/-- `3*n^3+2*n²+n` -/
def P14097551594125527113.Spec : Prop :=
  ∀ n, (P14097551594125527113.a n : ℤ) = A067389 n

theorem P14097551594125527113.correct : P14097551594125527113.Spec := by
  intro n
  simp only [A067389]

end A067389

/-! ## A067389.P1933331617467064329

`n*A056109(n)`
-/

namespace A067389.P1933331617467064329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056109 n

end

end A067389.P1933331617467064329

namespace A067389

/-- `n*A056109(n)` -/
def P1933331617467064329.Spec : Prop :=
  ∀ n, P1933331617467064329.a n = A067389 n

end A067389

/-! ## A067389.P18027633037903609961

`lcm(n, Δ[n^3]-n)`
-/

namespace A067389.P18027633037903609961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))

end

end A067389.P18027633037903609961

namespace A067389

/-- `lcm(n, Δ[n^3]-n)` -/
def P18027633037903609961.Spec : Prop :=
  ∀ n, (P18027633037903609961.a n : ℤ) = A067389 n

end A067389

/-! ## A067389.P16708037953149360568

`n*∑[a(n-1)+6]` with `a(0)=1, a(1)=5`
-/

namespace A067389.P16708037953149360568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067389.P16708037953149360568

namespace A067389

/-- `n*∑[a(n-1)+6]` -/
def P16708037953149360568.Spec : Prop :=
  ∀ n, (P16708037953149360568.a n : ℤ) = A067389 n

end A067389

/-! ## A067389.P14550362464232666685

`∑[∑[ogf((6x+10x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A067389.P14550362464232666685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 10, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067389.P14550362464232666685

namespace A067389

/-- `∑[∑[ogf((6x+10x^2+2x^3)/(1-2x+x^2))]]` -/
def P14550362464232666685.Spec : Prop :=
  ∀ n, P14550362464232666685.a n = A067389 n

end A067389

/-! ## A067389.P15990182861719868005

`xor(1, ∑[(1-3*n)²+n]+n)`
-/

namespace A067389.P15990182861719868005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (3 * n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A067389.P15990182861719868005

namespace A067389

/-- `xor(1, ∑[(1-3*n)²+n]+n)` -/
def P15990182861719868005.Spec : Prop :=
  ∀ n, P15990182861719868005.a n = A067389 n

end A067389

/-! ## A067389.P17275538785413898167

`n*(A045944(n)+1)`
-/

namespace A067389.P17275538785413898167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A045944 n + 1)

end

end A067389.P17275538785413898167

namespace A067389

/-- `n*(A045944(n)+1)` -/
def P17275538785413898167.Spec : Prop :=
  ∀ n, P17275538785413898167.a n = A067389 n

end A067389

/-! ## A067389.P12478724595343540014

`n*(A270710(n)+2)`
-/

namespace A067389.P12478724595343540014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A270710 n + 2)

end

end A067389.P12478724595343540014

namespace A067389

/-- `n*(A270710(n)+2)` -/
def P12478724595343540014.Spec : Prop :=
  ∀ n, P12478724595343540014.a n = A067389 n

end A067389

/-! ## A067389.P532686484711548687

`n*(A056108(n)+n)`
-/

namespace A067389.P532686484711548687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056108 n + (n : ℤ))

end

end A067389.P532686484711548687

namespace A067389

/-- `n*(A056108(n)+n)` -/
def P532686484711548687.Spec : Prop :=
  ∀ n, P532686484711548687.a n = A067389 n

end A067389

/-! ## A067389.P7508322118999197674

`n*(A003215(n)-n)`
-/

namespace A067389.P7508322118999197674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A003215 n - (n : ℤ))

end

end A067389.P7508322118999197674

namespace A067389

/-- `n*(A003215(n)-n)` -/
def P7508322118999197674.Spec : Prop :=
  ∀ n, P7508322118999197674.a n = A067389 n

end A067389

/-! ## A067389.P10894951332418113641

`n*(A141631(n+1)-1)`
-/

namespace A067389.P10894951332418113641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A141631 (n + 1) - 1)

end

end A067389.P10894951332418113641

namespace A067389

/-- `n*(A141631(n+1)-1)` -/
def P10894951332418113641.Spec : Prop :=
  ∀ n, P10894951332418113641.a n = A067389 n

end A067389

/-! ## A067389.P1217728422008246058

`n*(A049451(n)+n+1)`
-/

namespace A067389.P1217728422008246058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A049451 n + (n + 1 : ℤ))

end

end A067389.P1217728422008246058

namespace A067389

/-- `n*(A049451(n)+n+1)` -/
def P1217728422008246058.Spec : Prop :=
  ∀ n, P1217728422008246058.a n = A067389 n

end A067389

/-! ## A067389.P1208351327148653627

`n*(A077588(n+1)-(n+1))`
-/

namespace A067389.P1208351327148653627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A077588 (n + 1) - (n + 1 : ℤ))

end

end A067389.P1208351327148653627

namespace A067389

/-- `n*(A077588(n+1)-(n+1))` -/
def P1208351327148653627.Spec : Prop :=
  ∀ n, P1208351327148653627.a n = A067389 n

end A067389

/-! ## A067389.P13605269371956029645

`n*A257083(2*n)`
-/

namespace A067389.P13605269371956029645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257083 (2 * n)

end

end A067389.P13605269371956029645

namespace A067389

/-- `n*A257083(2*n)` -/
def P13605269371956029645.Spec : Prop :=
  ∀ n, P13605269371956029645.a n = A067389 n

end A067389

/-! ## A067389.P5539873951532140141

`n*A238377(2*n)`
-/

namespace A067389.P5539873951532140141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238377 (2 * n)

end

end A067389.P5539873951532140141

namespace A067389

/-- `n*A238377(2*n)` -/
def P5539873951532140141.Spec : Prop :=
  ∀ n, P5539873951532140141.a n = A067389 n

end A067389

/-! ## A067389.P12041614979947300526

`n*A263807(2*n)`
-/

namespace A067389.P12041614979947300526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A263807 (2 * n)

end

end A067389.P12041614979947300526

namespace A067389

/-- `n*A263807(2*n)` -/
def P12041614979947300526.Spec : Prop :=
  ∀ n, P12041614979947300526.a n = A067389 n

end A067389

/-! ## A067389.P18440085804755414819

`n*A397108(Δ[n²])`
-/

namespace A067389.P18440085804755414819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A397108 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A067389.P18440085804755414819

namespace A067389

/-- `n*A397108(Δ[n²])` -/
def P18440085804755414819.Spec : Prop :=
  ∀ n, P18440085804755414819.a n = A067389 n

end A067389

/-! ## A067389.P18038677679678010155

`n*A087483(3*n)`
-/

namespace A067389.P18038677679678010155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087483 (3 * n)

end

end A067389.P18038677679678010155

namespace A067389

/-- `n*A087483(3*n)` -/
def P18038677679678010155.Spec : Prop :=
  ∀ n, P18038677679678010155.a n = A067389 n

end A067389

/-! ## A067389.P15239520613628442603

`n*A212984(3*n)`
-/

namespace A067389.P15239520613628442603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212984 (3 * n)

end

end A067389.P15239520613628442603

namespace A067389

/-- `n*A212984(3*n)` -/
def P15239520613628442603.Spec : Prop :=
  ∀ n, P15239520613628442603.a n = A067389 n

end A067389

/-!
# A067390: Number of distinct prime factors in 2^n + 3.

The programs for A067390, the canonical program `A067390.P7852969546694532174` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067390 has offset 1).

The definition of A067390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067390.P13324742468918095176

`A324119(2*A001747(n+1))`
-/

namespace A067390.P13324742468918095176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (2 * A001747 (n + 1)).toNat

end

end A067390.P13324742468918095176

namespace A067390

/-- `A324119(2*A001747(n+1))` -/
def P13324742468918095176.Spec : Prop :=
  ∀ n, P13324742468918095176.a n = A067390 (n + 1)

end A067390

/-! ## A067390.P7852969546694532174

`A322812(A138636(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A067390

/-- `A322812(A138636(n+2))` -/
def P7852969546694532174.Spec : Prop :=
  ∀ n, P7852969546694532174.a n = A067390 (n + 1)

theorem P7852969546694532174.correct : P7852969546694532174.Spec := by
  intro n
  simp only [A067390, Nat.add_sub_cancel]

end A067390

/-! ## A067390.P17494475519143024979

`A322812(6*A045319(n+1))`
-/

namespace A067390.P17494475519143024979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (6 * A045319 (n + 1)).toNat

end

end A067390.P17494475519143024979

namespace A067390

/-- `A322812(6*A045319(n+1))` -/
def P17494475519143024979.Spec : Prop :=
  ∀ n, P17494475519143024979.a n = A067390 (n + 1)

end A067390

/-! ## A067390.P11464930381905317826

`A322812(6*A065091(n+1))`
-/

namespace A067390.P11464930381905317826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (6 * A065091 (n + 1)).toNat

end

end A067390.P11464930381905317826

namespace A067390

/-- `A322812(6*A065091(n+1))` -/
def P11464930381905317826.Spec : Prop :=
  ∀ n, P11464930381905317826.a n = A067390 (n + 1)

end A067390

/-! ## A067390.P14679663948586403996

`A322811(lcm(6, A065091(n+1)))`
-/

namespace A067390.P14679663948586403996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (Int.lcm 6 (A065091 (n + 1)))

end

end A067390.P14679663948586403996

namespace A067390

/-- `A322811(lcm(6, A065091(n+1)))` -/
def P14679663948586403996.Spec : Prop :=
  ∀ n, P14679663948586403996.a n = A067390 (n + 1)

end A067390

/-! ## A067390.P7218915505352656238

`A322811(2*lcm(3, p?[A093178(n)]))`
-/

namespace A067390.P7218915505352656238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A067390.P7218915505352656238

namespace A067390

/-- `A322811(2*lcm(3, p?[A093178(n)]))` -/
def P7218915505352656238.Spec : Prop :=
  ∀ n, P7218915505352656238.a n = A067390 (n + 1)

end A067390

/-! ## A067390.P2123499406596863348

`A322812(A120700(n+2))`
-/

namespace A067390.P2123499406596863348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A120700 (n + 2)).toNat

end

end A067390.P2123499406596863348

namespace A067390

/-- `A322812(A120700(n+2))` -/
def P2123499406596863348.Spec : Prop :=
  ∀ n, P2123499406596863348.a n = A067390 (n + 1)

end A067390

/-!
# A067391: a(n) is the least common multiple of numbers in {1,2,3,...,n-1} which do not divide n.

The programs for A067391, the canonical program `A067391.P1924277869724551560` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067391 has offset 1).

The definition of A067391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067391.P10874096095805280045

`lcm(A139550(n), A281086(n+1))`
-/

namespace A067391.P10874096095805280045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139550 n) (A281086 (n + 1))

end

end A067391.P10874096095805280045

namespace A067391

/-- `lcm(A139550(n), A281086(n+1))` -/
def P10874096095805280045.Spec : Prop :=
  ∀ n, (P10874096095805280045.a n : ℤ) = A067391 (n + 1)

end A067391

/-! ## A067391.P10552286752961126105

`lcm(A002944(n+1), A066575(n+1))`
-/

namespace A067391.P10552286752961126105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002944 (n + 1)) (A066575 (n + 1))

end

end A067391.P10552286752961126105

namespace A067391

/-- `lcm(A002944(n+1), A066575(n+1))` -/
def P10552286752961126105.Spec : Prop :=
  ∀ n, (P10552286752961126105.a n : ℤ) = A067391 (n + 1)

end A067391

/-! ## A067391.P8801650944854990669

`A003418(n)/A014963(A152271(n))`
-/

namespace A067391.P8801650944854990669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A014963 (A152271 n).toNat : ℚ)

end

end A067391.P8801650944854990669

namespace A067391

/-- `A003418(n)/A014963(A152271(n))` -/
def P8801650944854990669.Spec : Prop :=
  ∀ n, P8801650944854990669.a n = (A067391 (n + 1) : ℚ)

end A067391

/-! ## A067391.P11363123860999938132

`A003418(n)/ratio[A003418(A004526(n))]`
-/

namespace A067391.P11363123860999938132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A004526 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A067391.P11363123860999938132

namespace A067391

/-- `A003418(n)/ratio[A003418(A004526(n))]` -/
def P11363123860999938132.Spec : Prop :=
  ∀ n, P11363123860999938132.a n = (A067391 (n + 1) : ℚ)

end A067391

/-! ## A067391.P2766741399609970686

`A003418(n)/ratio[A003418(A123108(n))]`
-/

namespace A067391.P2766741399609970686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A123108 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A067391.P2766741399609970686

namespace A067391

/-- `A003418(n)/ratio[A003418(A123108(n))]` -/
def P2766741399609970686.Spec : Prop :=
  ∀ n, P2766741399609970686.a n = (A067391 (n + 1) : ℚ)

end A067391

/-! ## A067391.P1924277869724551560

`ceil(A003418(n)/A014963(A073675(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A067391

/-- `ceil(A003418(n)/A014963(A073675(n+1)))` -/
def P1924277869724551560.Spec : Prop :=
  ∀ n, P1924277869724551560.a n = A067391 (n + 1)

theorem P1924277869724551560.correct : P1924277869724551560.Spec := by
  intro n
  simp only [A067391, Nat.add_sub_cancel]

end A067391

/-! ## A067391.P17423004720500196406

`A003418(n)/A139550(n+1)*A139550(n)`
-/

namespace A067391.P17423004720500196406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A139550 (n + 1) : ℚ) * (A139550 n : ℚ)

end

end A067391.P17423004720500196406

namespace A067391

/-- `A003418(n)/A139550(n+1)*A139550(n)` -/
def P17423004720500196406.Spec : Prop :=
  ∀ n, P17423004720500196406.a n = (A067391 (n + 1) : ℚ)

end A067391

/-! ## A067391.P15180378404510196444

`A366368(n)/A139550(n+1)`
-/

namespace A067391.P15180378404510196444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366368 n : ℚ) / (A139550 (n + 1) : ℚ)

end

end A067391.P15180378404510196444

namespace A067391

/-- `A366368(n)/A139550(n+1)` -/
def P15180378404510196444.Spec : Prop :=
  ∀ n, P15180378404510196444.a n = (A067391 (n + 1) : ℚ)

end A067391

/-! ## A067391.P3114571023476908145

`A366369(n+1)/A003418(n+1)*A366368(n)`
-/

namespace A067391.P3114571023476908145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366369 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A366368 n : ℚ)

end

end A067391.P3114571023476908145

namespace A067391

/-- `A366369(n+1)/A003418(n+1)*A366368(n)` -/
def P3114571023476908145.Spec : Prop :=
  ∀ n, P3114571023476908145.a n = (A067391 (n + 1) : ℚ)

end A067391

/-! ## A067391.P2426381880494184725

`A003418(n+1)/A366368(n+1)*A366368(n)`
-/

namespace A067391.P2426381880494184725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A366368 (n + 1) : ℚ) * (A366368 n : ℚ)

end

end A067391.P2426381880494184725

namespace A067391

/-- `A003418(n+1)/A366368(n+1)*A366368(n)` -/
def P2426381880494184725.Spec : Prop :=
  ∀ n, P2426381880494184725.a n = (A067391 (n + 1) : ℚ)

end A067391

/-!
# A067392: Sum of numbers <= n which have common prime factors with n.

The programs for A067392, the canonical program `A067392.P7533820900183805373` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067392 has offset 1).

The definition of A067392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067392.P7533820900183805373

`A000217(n+1)-A023896(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067392

/-- `A000217(n+1)-A023896(n+1)` -/
def P7533820900183805373.Spec : Prop :=
  ∀ n, P7533820900183805373.a n = A067392 (n + 1)

theorem P7533820900183805373.correct : P7533820900183805373.Spec := by
  intro n
  simp only [A067392, Nat.add_sub_cancel]

end A067392

/-! ## A067392.P18290857922601983609

`ceil((A053650(n+1)+n)/2)`
-/

namespace A067392.P18290857922601983609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053650 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A067392.P18290857922601983609

namespace A067392

/-- `ceil((A053650(n+1)+n)/2)` -/
def P18290857922601983609.Spec : Prop :=
  ∀ n, P18290857922601983609.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P17449124992582398152

`(n+1)/2*A062830(n+1)`
-/

namespace A067392.P17449124992582398152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A062830 (n + 1) : ℚ)

end

end A067392.P17449124992582398152

namespace A067392

/-- `(n+1)/2*A062830(n+1)` -/
def P17449124992582398152.Spec : Prop :=
  ∀ n, P17449124992582398152.a n = (A067392 (n + 1) : ℚ)

end A067392

/-! ## A067392.P12830923623747250748

`floor((A051953(n+1)+1)*(n+1)/2)`
-/

namespace A067392.P12830923623747250748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A051953 (n + 1) + 1) * (n + 1 : ℤ) : ℚ) / 2⌋

end

end A067392.P12830923623747250748

namespace A067392

/-- `floor((A051953(n+1)+1)*(n+1)/2)` -/
def P12830923623747250748.Spec : Prop :=
  ∀ n, P12830923623747250748.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P16262202702069463574

`floor((n+1)*(n+2-A000010(n+1))/2)`
-/

namespace A067392.P16262202702069463574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((n + 2 : ℤ) - A000010 (n + 1) : ℚ) / 2)⌋

end

end A067392.P16262202702069463574

namespace A067392

/-- `floor((n+1)*(n+2-A000010(n+1))/2)` -/
def P16262202702069463574.Spec : Prop :=
  ∀ n, P16262202702069463574.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P14377573479882427635

`A308473(n+1)+A087156(n+1)`
-/

namespace A067392.P14377573479882427635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308473 (n + 1) + A087156 (n + 1)

end

end A067392.P14377573479882427635

namespace A067392

/-- `A308473(n+1)+A087156(n+1)` -/
def P14377573479882427635.Spec : Prop :=
  ∀ n, P14377573479882427635.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P15271083058196176150

`A000096(n)+1-A023896(n+1)`
-/

namespace A067392.P15271083058196176150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A023896 (n + 1))

end

end A067392.P15271083058196176150

namespace A067392

/-- `A000096(n)+1-A023896(n+1)` -/
def P15271083058196176150.Spec : Prop :=
  ∀ n, P15271083058196176150.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P14396505979918472434

`A349679(n+1)-A000010(n+1)`
-/

namespace A067392.P14396505979918472434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349679 (n + 1) - A000010 (n + 1)

end

end A067392.P14396505979918472434

namespace A067392

/-- `A349679(n+1)-A000010(n+1)` -/
def P14396505979918472434.Spec : Prop :=
  ∀ n, P14396505979918472434.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P11513790041273652113

`A053650(n+1)-A308473(n+1)`
-/

namespace A067392.P11513790041273652113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A308473 (n + 1)

end

end A067392.P11513790041273652113

namespace A067392

/-- `A053650(n+1)-A308473(n+1)` -/
def P11513790041273652113.Spec : Prop :=
  ∀ n, P11513790041273652113.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P3021693795391887553

`A000203(n+1)+A066760(n+1)-1`
-/

namespace A067392.P3021693795391887553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A066760 (n + 1) - 1)

end

end A067392.P3021693795391887553

namespace A067392

/-- `A000203(n+1)+A066760(n+1)-1` -/
def P3021693795391887553.Spec : Prop :=
  ∀ n, P3021693795391887553.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P528674438679469820

`A000217(n+1)-(A109607(n+1)+1)`
-/

namespace A067392.P528674438679469820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A109607 (n + 1) + 1)

end

end A067392.P528674438679469820

namespace A067392

/-- `A000217(n+1)-(A109607(n+1)+1)` -/
def P528674438679469820.Spec : Prop :=
  ∀ n, P528674438679469820.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P2660461230622228790

`A034856(n+1)-(A023896(n+1)+n)`
-/

namespace A067392.P2660461230622228790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (A023896 (n + 1) + (n : ℤ))

end

end A067392.P2660461230622228790

namespace A067392

/-- `A034856(n+1)-(A023896(n+1)+n)` -/
def P2660461230622228790.Spec : Prop :=
  ∀ n, P2660461230622228790.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P14955085750184162537

`∑{d}[n+1, A053139(#)*A057661((n+1)/#)]`
-/

namespace A067392.P14955085750184162537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053139 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067392.P14955085750184162537

namespace A067392

/-- `∑{d}[n+1, A053139(#)*A057661((n+1)/#)]` -/
def P14955085750184162537.Spec : Prop :=
  ∀ n, P14955085750184162537.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P5735616731659171630

`∑{d}[n+1, A023896(#)*A087156((n+1)/#)]`
-/

namespace A067392.P5735616731659171630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A087156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067392.P5735616731659171630

namespace A067392

/-- `∑{d}[n+1, A023896(#)*A087156((n+1)/#)]` -/
def P5735616731659171630.Spec : Prop :=
  ∀ n, P5735616731659171630.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P5638572489867795855

`∑{d}[n+1, A296065(#)*A390804((n+1)/#)]`
-/

namespace A067392.P5638572489867795855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296065 d * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067392.P5638572489867795855

namespace A067392

/-- `∑{d}[n+1, A296065(#)*A390804((n+1)/#)]` -/
def P5638572489867795855.Spec : Prop :=
  ∀ n, P5638572489867795855.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P12991988569748229191

`∑[n+1]-(A028310(n)+1)*A000010(n+1)/2`
-/

namespace A067392.P12991988569748229191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((A028310 n + 1) * A000010 (n + 1) : ℚ) / 2

end

end A067392.P12991988569748229191

namespace A067392

/-- `∑[n+1]-(A028310(n)+1)*A000010(n+1)/2` -/
def P12991988569748229191.Spec : Prop :=
  ∀ n, P12991988569748229191.a n = (A067392 (n + 1) : ℚ)

end A067392

/-! ## A067392.P6928723778865227261

`A000292(n+1)-(A023896(n+1)+A000292(n))`
-/

namespace A067392.P6928723778865227261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A023896 (n + 1) + A000292 n)

end

end A067392.P6928723778865227261

namespace A067392

/-- `A000292(n+1)-(A023896(n+1)+A000292(n))` -/
def P6928723778865227261.Spec : Prop :=
  ∀ n, P6928723778865227261.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P7956610305842387197

`A349679(n+1)+A002088(n)-A002088(n+1)`
-/

namespace A067392.P7956610305842387197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349679 (n + 1) + (A002088 n - A002088 (n + 1))

end

end A067392.P7956610305842387197

namespace A067392

/-- `A349679(n+1)+A002088(n)-A002088(n+1)` -/
def P7956610305842387197.Spec : Prop :=
  ∀ n, P7956610305842387197.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P8730337185323456059

`A000203(n+1)+A024816(n+1)-A023896(n+1)`
-/

namespace A067392.P8730337185323456059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A024816 (n + 1) - A023896 (n + 1))

end

end A067392.P8730337185323456059

namespace A067392

/-- `A000203(n+1)+A024816(n+1)-A023896(n+1)` -/
def P8730337185323456059.Spec : Prop :=
  ∀ n, P8730337185323456059.a n = A067392 (n + 1)

end A067392

/-! ## A067392.P5169872507018935335

`A024916(n+1)-(A153485(n+1)+A023896(n+1))`
-/

namespace A067392.P5169872507018935335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - (A153485 (n + 1) + A023896 (n + 1))

end

end A067392.P5169872507018935335

namespace A067392

/-- `A024916(n+1)-(A153485(n+1)+A023896(n+1))` -/
def P5169872507018935335.Spec : Prop :=
  ∀ n, P5169872507018935335.a n = A067392 (n + 1)

end A067392

/-!
# A067393: Number of nonprimes among the numbers in {1,2,3,...,n!} which are relatively prime to n!.

The programs for A067393, there is no canonical definition to state claims against.
-/

/-! ## A067393.P12911905311089675863

`A048864(n!)`
-/

namespace A067393.P12911905311089675863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (Nat.factorial n)

end

end A067393.P12911905311089675863

/-! ## A067393.P8947297756741314803

`A036997(n!)+1`
-/

namespace A067393.P8947297756741314803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (Nat.factorial n) + 1

end

end A067393.P8947297756741314803

/-! ## A067393.P12132996366542565147

`A048864(∏[round(1/acot(n))])`
-/

namespace A067393.P12132996366542565147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067393.P12132996366542565147

/-! ## A067393.P14701839714600924785

`A048864(∏[floor(acot(n)+n)])`
-/

namespace A067393.P14701839714600924785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067393.P14701839714600924785

/-!
# A067394: Number of distinct prime factors in floor((3/2)^n).

The programs for A067394, there is no canonical definition to state claims against.
-/

/-! ## A067394.P6591164027435353005

`∑{e}[A002379(n+1), A001876(#)]`
-/

namespace A067394.P6591164027435353005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001876 (Nat.factorization (f1 n).natAbs p)

end

end A067394.P6591164027435353005

/-! ## A067394.P2744871225444255536

`∑{e}[A002379(n+1), A008292(#)]`
-/

namespace A067394.P2744871225444255536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008292 (Nat.factorization (f1 n).natAbs p)

end

end A067394.P2744871225444255536

/-! ## A067394.P3291511840330740577

`∑{e}[A002379(n+1), A014600(#)]`
-/

namespace A067394.P3291511840330740577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014600 (Nat.factorization (f1 n).natAbs p)

end

end A067394.P3291511840330740577

/-! ## A067394.P10363383050044502146

`∑{e}[A002379(n+1), A026703(#)]`
-/

namespace A067394.P10363383050044502146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A026703 (Nat.factorization (f1 n).natAbs p)

end

end A067394.P10363383050044502146

/-! ## A067394.P2532901249135941941

`∑{e}[A002379(n+1), A051700(#)]`
-/

namespace A067394.P2532901249135941941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051700 (Nat.factorization (f1 n).natAbs p)

end

end A067394.P2532901249135941941

/-!
# A067395: First differences of A067368.

The programs for A067395, the canonical program `A067395.P4961952494524289833` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067395 has offset 1).

The definition of A067395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067395.P4961952494524289833

`Δ[A067368(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067395

/-- `Δ[A067368(n+1)]` -/
def P4961952494524289833.Spec : Prop :=
  ∀ n, P4961952494524289833.a n = A067395 (n + 1)

theorem P4961952494524289833.correct : P4961952494524289833.Spec := by
  intro n
  simp only [A067395, Nat.add_sub_cancel]

end A067395

/-! ## A067395.P11307097396517000847

`Δ[2*A191257(n+1)]`
-/

namespace A067395.P11307097396517000847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067395.P11307097396517000847

namespace A067395

/-- `Δ[2*A191257(n+1)]` -/
def P11307097396517000847.Spec : Prop :=
  ∀ n, P11307097396517000847.a n = A067395 (n + 1)

end A067395

/-! ## A067395.P3304753184000272288

`Δ[A213258(n+1)/2]`
-/

namespace A067395.P3304753184000272288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213258 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067395.P3304753184000272288

namespace A067395

/-- `Δ[A213258(n+1)/2]` -/
def P3304753184000272288.Spec : Prop :=
  ∀ n, P3304753184000272288.a n = (A067395 (n + 1) : ℚ)

end A067395

/-! ## A067395.P17769186727886549922

`A191257(Δ[A191257(n+1)])+1`
-/

namespace A067395.P17769186727886549922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (f1 (n + 1) - f1 n).toNat + 1

end

end A067395.P17769186727886549922

namespace A067395

/-- `A191257(Δ[A191257(n+1)])+1` -/
def P17769186727886549922.Spec : Prop :=
  ∀ n, P17769186727886549922.a n = A067395 (n + 1)

end A067395

/-! ## A067395.P8743282687689242851

`A067368(n+2)-A067368(n+1)`
-/

namespace A067395.P8743282687689242851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 2) - A067368 (n + 1)

end

end A067395.P8743282687689242851

namespace A067395

/-- `A067368(n+2)-A067368(n+1)` -/
def P8743282687689242851.Spec : Prop :=
  ∀ n, P8743282687689242851.a n = A067395 (n + 1)

theorem P8743282687689242851.correct : P8743282687689242851.Spec := by
  intro n
  simp only [A067395, Nat.add_sub_cancel, A067395.P8743282687689242851.a, A067395.P4961952494524289833.f1, A067395.P4961952494524289833.a, SequenceMachineLib.memo_apply]

end A067395

/-!
# A067396: a(n) is the position of the n-th occurrence of the pair "2,2" in A067395 (the first difference sequence of A067368).

The programs for A067396, the canonical program `A067396.P76496660823402310` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067396 has offset 1).

The definition of A067396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067396.P76496660823402310

`2*eq[2, and(n, -n)%7]+n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067396

/-- `2*eq[2, and(n, -n)%7]+n` -/
def P76496660823402310.Spec : Prop :=
  ∀ n, (P76496660823402310.a n : ℤ) = A067396 (n + 1)

theorem P76496660823402310.correct : P76496660823402310.Spec := by
  intro n
  simp only [A067396, Nat.add_sub_cancel]

end A067396

/-! ## A067396.P2649202109571383899

`2*lt[1, xor(n, n-1)%7]+n`
-/

namespace A067396.P2649202109571383899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n

end

end A067396.P2649202109571383899

namespace A067396

/-- `2*lt[1, xor(n, n-1)%7]+n` -/
def P2649202109571383899.Spec : Prop :=
  ∀ n, (P2649202109571383899.a n : ℤ) = A067396 (n + 1)

end A067396

/-! ## A067396.P12792500577195904703

`A213258(n+1)+n`
-/

namespace A067396.P12792500577195904703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213258 (n + 1) + (n : ℤ)

end

end A067396.P12792500577195904703

namespace A067396

/-- `A213258(n+1)+n` -/
def P12792500577195904703.Spec : Prop :=
  ∀ n, P12792500577195904703.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P10638333089914824840

`2*A067368(n+1)+n`
-/

namespace A067396.P10638333089914824840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067368 (n + 1) + (n : ℤ)

end

end A067396.P10638333089914824840

namespace A067396

/-- `2*A067368(n+1)+n` -/
def P10638333089914824840.Spec : Prop :=
  ∀ n, P10638333089914824840.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P6171227425640077177

`4*A191257(n+1)+n`
-/

namespace A067396.P6171227425640077177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191257 (n + 1) + (n : ℤ)

end

end A067396.P6171227425640077177

namespace A067396

/-- `4*A191257(n+1)+n` -/
def P6171227425640077177.Spec : Prop :=
  ∀ n, P6171227425640077177.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P14871646197434274150

`lt[1, A096271(n)]+1+n`
-/

namespace A067396.P14871646197434274150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 + n

end

end A067396.P14871646197434274150

namespace A067396

/-- `lt[1, A096271(n)]+1+n` -/
def P14871646197434274150.Spec : Prop :=
  ∀ n, (P14871646197434274150.a n : ℤ) = A067396 (n + 1)

end A067396

/-! ## A067396.P7454796556120638702

`A008574(A191257(n+1))+n`
-/

namespace A067396.P7454796556120638702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A191257 (n + 1)).toNat + (n : ℤ)

end

end A067396.P7454796556120638702

namespace A067396

/-- `A008574(A191257(n+1))+n` -/
def P7454796556120638702.Spec : Prop :=
  ∀ n, P7454796556120638702.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P15015673856276844950

`A004277(A067368(n+1))+n`
-/

namespace A067396.P15015673856276844950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A067368 (n + 1)).toNat + (n : ℤ)

end

end A067396.P15015673856276844950

namespace A067396

/-- `A004277(A067368(n+1))+n` -/
def P15015673856276844950.Spec : Prop :=
  ∀ n, P15015673856276844950.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P11648435034650543280

`A026491(eq[1, A096271(n)])+n`
-/

namespace A067396.P11648435034650543280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n : ℤ)

end

end A067396.P11648435034650543280

namespace A067396

/-- `A026491(eq[1, A096271(n)])+n` -/
def P11648435034650543280.Spec : Prop :=
  ∀ n, P11648435034650543280.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P17229225740654679538

`A066104(eq[1, A096271(n)])+n`
-/

namespace A067396.P17229225740654679538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n : ℤ)

end

end A067396.P17229225740654679538

namespace A067396

/-- `A066104(eq[1, A096271(n)])+n` -/
def P17229225740654679538.Spec : Prop :=
  ∀ n, P17229225740654679538.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P14087893280322470703

`A257088(A067368(n+1))-A001489(n)`
-/

namespace A067396.P14087893280322470703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A067368 (n + 1)).toNat - A001489 n

end

end A067396.P14087893280322470703

namespace A067396

/-- `A257088(A067368(n+1))-A001489(n)` -/
def P14087893280322470703.Spec : Prop :=
  ∀ n, P14087893280322470703.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P17375943616633175718

`A067368(n+1)-A001489(A067368(n+1)+n)`
-/

namespace A067396.P17375943616633175718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1) - A001489 (A067368 (n + 1) + (n : ℤ)).toNat

end

end A067396.P17375943616633175718

namespace A067396

/-- `A067368(n+1)-A001489(A067368(n+1)+n)` -/
def P17375943616633175718.Spec : Prop :=
  ∀ n, P17375943616633175718.a n = A067396 (n + 1)

end A067396

/-! ## A067396.P8880880639702093774

`eq[2, A007814(n+1)%3]+n+1`
-/

namespace A067396.P8880880639702093774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A067396.P8880880639702093774

namespace A067396

/-- `eq[2, A007814(n+1)%3]+n+1` -/
def P8880880639702093774.Spec : Prop :=
  ∀ n, (P8880880639702093774.a n : ℤ) = A067396 (n + 1)

end A067396

/-! ## A067396.P5172283840621445017

`eq[3, A006530(A001511(n+1))]+n+1`
-/

namespace A067396.P5172283840621445017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001511 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A067396.P5172283840621445017

namespace A067396

/-- `eq[3, A006530(A001511(n+1))]+n+1` -/
def P5172283840621445017.Spec : Prop :=
  ∀ n, (P5172283840621445017.a n : ℤ) = A067396 (n + 1)

end A067396

/-! ## A067396.P1836945261857410894

`eq[1, A002376(xor(n, n+1)+1)]+n+1`
-/

namespace A067396.P1836945261857410894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A067396.P1836945261857410894

namespace A067396

/-- `eq[1, A002376(xor(n, n+1)+1)]+n+1` -/
def P1836945261857410894.Spec : Prop :=
  ∀ n, (P1836945261857410894.a n : ℤ) = A067396 (n + 1)

end A067396

/-!
# A067397: Maximal power of 3 that divides n-th Catalan number.

The programs for A067397, the canonical program `A067397.P1658473277541325480` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067397 has offset 0).

The definition of A067397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067397.P13533168422020468368

`A000989(n)-A007949(n+1)`
-/

namespace A067397.P13533168422020468368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - A007949 (n + 1)

end

end A067397.P13533168422020468368

namespace A067397

/-- `A000989(n)-A007949(n+1)` -/
def P13533168422020468368.Spec : Prop :=
  ∀ n, P13533168422020468368.a n = A067397 n

end A067397

/-! ## A067397.P1658473277541325480

`(A053735(n)+A053735(n+1)-A053735(2*n)-1)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067397

/-- `(A053735(n)+A053735(n+1)-A053735(2*n)-1)/2` -/
def P1658473277541325480.Spec : Prop :=
  ∀ n, P1658473277541325480.a n = (A067397 n : ℚ)

end A067397

/-! ## A067397.P2524377026344152667

`val(A246466(n), 3)`
-/

namespace A067397.P2524377026344152667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246466 n).toNat 3

end

end A067397.P2524377026344152667

namespace A067397

/-- `val(A246466(n), 3)` -/
def P2524377026344152667.Spec : Prop :=
  ∀ n, (P2524377026344152667.a n : ℤ) = A067397 n

end A067397

/-! ## A067397.P8844977434177652322

`A000989(round(n/3))`
-/

namespace A067397.P8844977434177652322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A067397.P8844977434177652322

namespace A067397

/-- `A000989(round(n/3))` -/
def P8844977434177652322.Spec : Prop :=
  ∀ n, P8844977434177652322.a n = A067397 n

end A067397

/-! ## A067397.P4958333772009371320

`A365722(n)-A089643(n)`
-/

namespace A067397.P4958333772009371320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 n - A089643 n

end

end A067397.P4958333772009371320

namespace A067397

/-- `A365722(n)-A089643(n)` -/
def P4958333772009371320.Spec : Prop :=
  ∀ n, P4958333772009371320.a n = A067397 n

end A067397

/-! ## A067397.P13734400867830780273

`A000989(n)-Δ[A054861(n)]`
-/

namespace A067397.P13734400867830780273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - (f1 (n + 1) - f1 n)

end

end A067397.P13734400867830780273

namespace A067397

/-- `A000989(n)-Δ[A054861(n)]` -/
def P13734400867830780273.Spec : Prop :=
  ∀ n, P13734400867830780273.a n = A067397 n

end A067397

/-! ## A067397.P16733514452923255220

`A082490(n+1-A102283(n))`
-/

namespace A067397.P16733514452923255220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082490 ((n + 1 : ℤ) - A102283 n).toNat

end

end A067397.P16733514452923255220

namespace A067397

/-- `A082490(n+1-A102283(n))` -/
def P16733514452923255220.Spec : Prop :=
  ∀ n, P16733514452923255220.a n = A067397 n

end A067397

/-! ## A067397.P17614506563528414438

`∑[A253786(n)-A007949(n+1)]`
-/

namespace A067397.P17614506563528414438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n - A007949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067397.P17614506563528414438

namespace A067397

/-- `∑[A253786(n)-A007949(n+1)]` -/
def P17614506563528414438.Spec : Prop :=
  ∀ n, P17614506563528414438.a n = A067397 n

end A067397

/-! ## A067397.P17121840545160019739

`A000989(n)-A001222(A318666(n+1))`
-/

namespace A067397.P17121840545160019739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - A001222 (A318666 (n + 1)).toNat

end

end A067397.P17121840545160019739

namespace A067397

/-- `A000989(n)-A001222(A318666(n+1))` -/
def P17121840545160019739.Spec : Prop :=
  ∀ n, P17121840545160019739.a n = A067397 n

end A067397

/-! ## A067397.P18034260626767282229

`A127427(n)-(A007949(n+1)+A004128(n))`
-/

namespace A067397.P18034260626767282229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n - (A007949 (n + 1) + A004128 n)

end

end A067397.P18034260626767282229

namespace A067397

/-- `A127427(n)-(A007949(n+1)+A004128(n))` -/
def P18034260626767282229.Spec : Prop :=
  ∀ n, P18034260626767282229.a n = A067397 n

end A067397

/-! ## A067397.P6988424027723469471

`A053735(n)-(A089643(n)+A007949(n+1))`
-/

namespace A067397.P6988424027723469471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - (A089643 n + A007949 (n + 1))

end

end A067397.P6988424027723469471

namespace A067397

/-- `A053735(n)-(A089643(n)+A007949(n+1))` -/
def P6988424027723469471.Spec : Prop :=
  ∀ n, P6988424027723469471.a n = A067397 n

end A067397

/-! ## A067397.P13523286011802764550

`A000989(n+1)-A253786(n+1)`
-/

namespace A067397.P13523286011802764550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (n + 1) - A253786 (n + 1)

end

end A067397.P13523286011802764550

namespace A067397

/-- `A000989(n+1)-A253786(n+1)` -/
def P13523286011802764550.Spec : Prop :=
  ∀ n, P13523286011802764550.a n = A067397 n

end A067397

/-! ## A067397.P1205264717807966618

`∑[A072078(abs(n+1-3*n))-1-A007949(n+1)]`
-/

namespace A067397.P1205264717807966618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 |(n + 1 : ℤ) - (3 * n : ℤ)|.toNat - 1 - A007949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067397.P1205264717807966618

namespace A067397

/-- `∑[A072078(abs(n+1-3*n))-1-A007949(n+1)]` -/
def P1205264717807966618.Spec : Prop :=
  ∀ n, P1205264717807966618.a n = A067397 n

end A067397

/-! ## A067397.P2597477447678243887

`A082490(A102283(2*n)+n+1)`
-/

namespace A067397.P2597477447678243887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082490 (A102283 (2 * n) + (n + 1 : ℤ)).toNat

end

end A067397.P2597477447678243887

namespace A067397

/-- `A082490(A102283(2*n)+n+1)` -/
def P2597477447678243887.Spec : Prop :=
  ∀ n, P2597477447678243887.a n = A067397 n

end A067397

/-! ## A067397.P413433757756077629

`A054861(2*n)+A000989(n+1)-A054861(2*n+1)`
-/

namespace A067397.P413433757756077629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (2 * n) + (A000989 (n + 1) - A054861 (2 * n + 1))

end

end A067397.P413433757756077629

namespace A067397

/-- `A054861(2*n)+A000989(n+1)-A054861(2*n+1)` -/
def P413433757756077629.Spec : Prop :=
  ∀ n, P413433757756077629.a n = A067397 n

end A067397

/-! ## A067397.P11939946988942167250

`val(A170829(n), 3)`
-/

namespace A067397.P11939946988942167250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A170829 n).toNat 3

end

end A067397.P11939946988942167250

namespace A067397

/-- `val(A170829(n), 3)` -/
def P11939946988942167250.Spec : Prop :=
  ∀ n, (P11939946988942167250.a n : ℤ) = A067397 n

end A067397

/-! ## A067397.P7039929347559690694

`A358360(2*n)-A007949(n+1)`
-/

namespace A067397.P7039929347559690694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358360 (2 * n) - A007949 (n + 1)

end

end A067397.P7039929347559690694

namespace A067397

/-- `A358360(2*n)-A007949(n+1)` -/
def P7039929347559690694.Spec : Prop :=
  ∀ n, P7039929347559690694.a n = A067397 n

end A067397

/-! ## A067397.P12186142952469366311

`val(A098597(n), 3)`
-/

namespace A067397.P12186142952469366311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098597 n).toNat 3

end

end A067397.P12186142952469366311

namespace A067397

/-- `val(A098597(n), 3)` -/
def P12186142952469366311.Spec : Prop :=
  ∀ n, (P12186142952469366311.a n : ℤ) = A067397 n

end A067397

/-! ## A067397.P11969624430901363160

`val(A089848(n), 3)`
-/

namespace A067397.P11969624430901363160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089848 n).toNat 3

end

end A067397.P11969624430901363160

namespace A067397

/-- `val(A089848(n), 3)` -/
def P11969624430901363160.Spec : Prop :=
  ∀ n, (P11969624430901363160.a n : ℤ) = A067397 n

end A067397

/-! ## A067397.P14616064985366889588

`val(A000108(n), 3)`
-/

namespace A067397.P14616064985366889588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000108 n).toNat 3

end

end A067397.P14616064985366889588

namespace A067397

/-- `val(A000108(n), 3)` -/
def P14616064985366889588.Spec : Prop :=
  ∀ n, (P14616064985366889588.a n : ℤ) = A067397 n

end A067397

/-!
# A067398: Squares in OR-numbral arithmetic.

The programs for A067398, there is no canonical definition to state claims against.
-/

/-! ## A067398.P20878312418524238

`A067138(∑[4*n])`
-/

namespace A067398.P20878312418524238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067398.P20878312418524238

/-! ## A067398.P6317840305572752376

`and(-1, A067138(A046092(n)))`
-/

namespace A067398.P6317840305572752376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A067138 (A046092 n).toNat)

end

end A067398.P6317840305572752376

/-! ## A067398.P12117910680908273116

`A067138(A106232(n+1))%(n+1)²`
-/

namespace A067398.P12117910680908273116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067138 (A106232 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A067398.P12117910680908273116

/-! ## A067398.P7459086998759635811

`A067138(A046092(n))%A017440(n)`
-/

namespace A067398.P7459086998759635811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067138 (A046092 n).toNat) (A017440 n)

end

end A067398.P7459086998759635811

/-! ## A067398.P7739392208271333533

`∑{d}[A067138(A046092(n)), A000010(#)]`
-/

namespace A067398.P7739392208271333533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A067398.P7739392208271333533

/-! ## A067398.P9318022153250755177

`A067138(A106232(n+1))-A000007(n)`
-/

namespace A067398.P9318022153250755177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 (A106232 (n + 1)).toNat - A000007 n

end

end A067398.P9318022153250755177

/-! ## A067398.P6816155262034443046

`A007318(C(2, n))*A067138(A046092(n))`
-/

namespace A067398.P6816155262034443046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A067138 (A046092 n).toNat

end

end A067398.P6816155262034443046

/-! ## A067398.P5031908908309871859

`A067138(A046092(n))^A014963(∑[n+1])`
-/

namespace A067398.P5031908908309871859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067138 (A046092 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A067398.P5031908908309871859

/-! ## A067398.P16107820889427207853

`A067138(A046092(n))^A000010(C(2, n)!)`
-/

namespace A067398.P16107820889427207853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067138 (A046092 n).toNat : ℚ) ^ (A000010 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A067398.P16107820889427207853

/-!
# A067399: Number of divisors of n in OR-numbral arithmetic.

The programs for A067399, there is no canonical definition to state claims against.
-/

/-! ## A067399.P13131873586353474779

`A066376(n+1)+1`
-/

namespace A067399.P13131873586353474779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066376 (n + 1) + 1

end

end A067399.P13131873586353474779

/-! ## A067399.P11304131083623927475

`Δ[eq[1, A348135(n+1)]]`
-/

namespace A067399.P11304131083623927475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348135 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A067399.P11304131083623927475

/-! ## A067399.P16921323354602810477

`A053830(A186951(n+1)/9)`
-/

namespace A067399.P16921323354602810477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (SequenceMachineLib.roundAway ((A186951 (n + 1) : ℚ) / 9)).toNat

end

end A067399.P16921323354602810477

/-! ## A067399.P8274641715664108075

`A053830(A186951(n+1)%(6*n+4)²)`
-/

namespace A067399.P8274641715664108075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (Int.tmod (A186951 (n + 1)) ((6 * n + 4) ^ 2 : ℤ)).toNat

end

end A067399.P8274641715664108075

