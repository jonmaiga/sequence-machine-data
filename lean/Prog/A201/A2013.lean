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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C013
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
import SequenceMachineLib.Triangle

/-!
# A201300: Primes of the form 9n^3+5.

The programs for A201300, there is no canonical definition to state claims against.
-/

/-! ## A201300.P9528021762522355112

`p?[9*n^3+5]`
-/

namespace A201300.P9528021762522355112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201300.P9528021762522355112

/-!
# A201301: Primes of the form 9*k^3+7.

The programs for A201301, there is no canonical definition to state claims against.
-/

/-! ## A201301.P11563653522699423309

`p?[9*n^3+7]`
-/

namespace A201301.P11563653522699423309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201301.P11563653522699423309

/-! ## A201301.P3878269189071049281

`record[A020639(9*n^3+7)]`
-/

namespace A201301.P3878269189071049281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n ^ 3 + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201301.P3878269189071049281

/-!
# A201302: Primes of the form 9n^3+8.

The programs for A201302, there is no canonical definition to state claims against.
-/

/-! ## A201302.P18051897072787510136

`p?[9*n^3+8]`
-/

namespace A201302.P18051897072787510136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201302.P18051897072787510136

/-!
# A201304: Primes of the form 10n^3+3.

The programs for A201304, there is no canonical definition to state claims against.
-/

/-! ## A201304.P383602137888038662

`p?[10*n^3+3]`
-/

namespace A201304.P383602137888038662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201304.P383602137888038662

/-!
# A201305: Primes of the form 10n^3+7.

The programs for A201305, there is no canonical definition to state claims against.
-/

/-! ## A201305.P17423007006556878963

`p?[10*n^3+7]`
-/

namespace A201305.P17423007006556878963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201305.P17423007006556878963

/-!
# A201306: Primes of the form 10n^3+9.

The programs for A201306, there is no canonical definition to state claims against.
-/

/-! ## A201306.P17924977358575928338

`p?[10*n^3+9]`
-/

namespace A201306.P17924977358575928338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201306.P17924977358575928338

/-! ## A201306.P18057567888011974731

`A017377(A331605(n+1)^3)`
-/

namespace A201306.P18057567888011974731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A331605 (n + 1) ^ 3).toNat

end

end A201306.P18057567888011974731

/-!
# A201307: Primes of the form k^3+4.

The programs for A201307, there is no canonical definition to state claims against.
-/

/-! ## A201307.P10210481378188873248

`A073573(1+n)^3+4`
-/

namespace A201307.P10210481378188873248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073573 (1 + n) ^ 3 + 4

end

end A201307.P10210481378188873248

/-! ## A201307.P603546656254214585

`A274077(A073573(1+n))`
-/

namespace A201307.P603546656254214585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274077 (A073573 (1 + n)).toNat

end

end A201307.P603546656254214585

/-! ## A201307.P13779976910924153317

`∩[A066649(n+1), A274077(n)]`
-/

namespace A201307.P13779976910924153317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201307.P13779976910924153317

/-! ## A201307.P9610174405051928648

`p?[n^3+4]`
-/

namespace A201307.P9610174405051928648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201307.P9610174405051928648

/-!
# A201308: Primes of the form k^3 + 6.

The programs for A201308, there is no canonical definition to state claims against.
-/

/-! ## A201308.P10188016054576434212

`A084382(A073574(n+1))`
-/

namespace A201308.P10188016054576434212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084382 (A073574 (n + 1)).toNat

end

end A201308.P10188016054576434212

/-! ## A201308.P16436675248771729991

`p?[n^3+6]`
-/

namespace A201308.P16436675248771729991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201308.P16436675248771729991

/-!
# A201309: Primes of the form k^3 - 4.

The programs for A201309, there is no canonical definition to state claims against.
-/

/-! ## A201309.P1591266654561707617

`p?[n^3-4]`
-/

namespace A201309.P1591266654561707617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201309.P1591266654561707617

/-! ## A201309.P4338592623236416247

`or(1, p?[n*n²-4])`
-/

namespace A201309.P4338592623236416247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201309.P4338592623236416247

/-! ## A201309.P5342555971350822299

`filter[A030653(n+1), A010051(#)]`
-/

namespace A201309.P5342555971350822299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A201309.P5342555971350822299

/-! ## A201309.P4207876839492718075

`filter[A030653(n+1), A358220(#)]`
-/

namespace A201309.P4207876839492718075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A201309.P4207876839492718075

/-!
# A201310: Primes of the form n^3-6.

The programs for A201310, there is no canonical definition to state claims against.
-/

/-! ## A201310.P5027397805379932545

`p?[n^3-6]`
-/

namespace A201310.P5027397805379932545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201310.P5027397805379932545

/-! ## A201310.P17841407159930886599

`record[p?[A126951(n+1)-6]]`
-/

namespace A201310.P17841407159930886599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126951 (n + 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201310.P17841407159930886599

/-!
# A201311: Primes of the form n^3-10.

The programs for A201311, there is no canonical definition to state claims against.
-/

/-! ## A201311.P1019706914975504714

`p?[n^3-10]`
-/

namespace A201311.P1019706914975504714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201311.P1019706914975504714

/-! ## A201311.P3741213982561928384

`record[p?[A017670(n+1)-10]]`
-/

namespace A201311.P3741213982561928384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017670 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201311.P3741213982561928384

/-! ## A201311.P8223808831829657577

`record[p?[A109594(n+1)-10]]`
-/

namespace A201311.P8223808831829657577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201311.P8223808831829657577

/-! ## A201311.P12838855491068956967

`record[p?[A109595(n+1)-10]]`
-/

namespace A201311.P12838855491068956967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201311.P12838855491068956967

/-!
# A201312: Primes of the form n^3+10.

The programs for A201312, there is no canonical definition to state claims against.
-/

/-! ## A201312.P10092377349803448424

`p?[n^3+10]`
-/

namespace A201312.P10092377349803448424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201312.P10092377349803448424

/-! ## A201312.P5489711915124760398

`or(1, p?[n*n²+10])`
-/

namespace A201312.P5489711915124760398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201312.P5489711915124760398

/-! ## A201312.P582470506286240432

`xor(1, p?[n*n²+10])+1`
-/

namespace A201312.P582470506286240432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A201312.P582470506286240432

/-! ## A201312.P16248338666419343154

`lcm(7, p?[n*n²+10])/7`
-/

namespace A201312.P16248338666419343154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 7

end

end A201312.P16248338666419343154

/-!
# A201313: Primes of the form n^2 - 10.

The programs for A201313, there is no canonical definition to state claims against.
-/

/-! ## A201313.P17902129709133334340

`A186815(1+n)²-10`
-/

namespace A201313.P17902129709133334340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186815 (1 + n) ^ 2 - 10

end

end A201313.P17902129709133334340

/-! ## A201313.P8475862970309012868

`∩[A190091(n+1), A295835(n+1)]`
-/

namespace A201313.P8475862970309012868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P8475862970309012868

/-! ## A201313.P12752764096504105186

`∩[A142111(n+1), A190091(n+1)]`
-/

namespace A201313.P12752764096504105186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P12752764096504105186

/-! ## A201313.P3061704710554003664

`p?[n²-10]`
-/

namespace A201313.P3061704710554003664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201313.P3061704710554003664

/-! ## A201313.P14573048431102050128

`or(1, p?[n^2-10])`
-/

namespace A201313.P14573048431102050128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201313.P14573048431102050128

/-! ## A201313.P12402477591388463305

`∩[A134517(n+1), A190091(n+1)]`
-/

namespace A201313.P12402477591388463305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P12402477591388463305

/-! ## A201313.P14994396577883676207

`∩[A141302(n+1), A190091(n+1)]`
-/

namespace A201313.P14994396577883676207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P14994396577883676207

/-! ## A201313.P14533255564499791582

`∩[A061242(n+1), A190091(n+1)]`
-/

namespace A201313.P14533255564499791582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201313.P14533255564499791582

/-!
# A201314: Primes of the form n^2 - 17.

The programs for A201314, the canonical program `A201314.P3485459216833196286` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201314 has offset 1).

The definition of A201314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201314.P3485459216833196286

`p?[n²-17]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A201314

/-- `p?[n²-17]` -/
def P3485459216833196286.Spec : Prop :=
  ∀ n, P3485459216833196286.a n = A201314 (n + 1)

theorem P3485459216833196286.correct : P3485459216833196286.Spec := by
  intro n
  simp only [A201314, Nat.add_sub_cancel]

end A201314

/-! ## A201314.P17538641065431248545

`or(1, p?[n^2-17])`
-/

namespace A201314.P17538641065431248545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201314.P17538641065431248545

namespace A201314

/-- `or(1, p?[n^2-17])` -/
def P17538641065431248545.Spec : Prop :=
  ∀ n, P17538641065431248545.a n = A201314 (n + 1)

end A201314

/-! ## A201314.P15262799381775475872

`∩[A000040(n+1), A133655(n)+n²]`
-/

namespace A201314.P15262799381775475872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201314.P15262799381775475872

namespace A201314

/-- `∩[A000040(n+1), A133655(n)+n²]` -/
def P15262799381775475872.Spec : Prop :=
  ∀ n, (P15262799381775475872.a n : ℤ) = A201314 (n + 1)

end A201314

/-! ## A201314.P1334951611910943642

`∩[A056115(n)+A046691(n), A000040(n+1)]`
-/

namespace A201314.P1334951611910943642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A046691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201314.P1334951611910943642

namespace A201314

/-- `∩[A056115(n)+A046691(n), A000040(n+1)]` -/
def P1334951611910943642.Spec : Prop :=
  ∀ n, (P1334951611910943642.a n : ℤ) = A201314 (n + 1)

end A201314

/-! ## A201314.P6792795921669579045

`filter[(n+9)*(n+1)-1, A010051(#)]`
-/

namespace A201314.P6792795921669579045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 9) * (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A201314.P6792795921669579045

namespace A201314

/-- `filter[(n+9)*(n+1)-1, A010051(#)]` -/
def P6792795921669579045.Spec : Prop :=
  ∀ n, P6792795921669579045.a n = A201314 (n + 1)

end A201314

/-! ## A201314.P9242636286227809515

`record[A006530(2*(∑[4*n+10]-1)+1)]`
-/

namespace A201314.P9242636286227809515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201314.P9242636286227809515

namespace A201314

/-- `record[A006530(2*(∑[4*n+10]-1)+1)]` -/
def P9242636286227809515.Spec : Prop :=
  ∀ n, P9242636286227809515.a n = A201314 (n + 1)

end A201314

/-!
# A201338: E.g.f.: log((2 - exp(x))/(3 - 2*exp(x))).

The programs for A201338, there is no canonical definition to state claims against.
-/

/-! ## A201338.P6817728196117261364

`A027882(n)-A000629(n)`
-/

namespace A201338.P6817728196117261364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - A000629 n

end

end A201338.P6817728196117261364

/-! ## A201338.P6721596057006072229

`A027882(n)-∑[A162509(n)]`
-/

namespace A201338.P6721596057006072229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201338.P6721596057006072229

/-! ## A201338.P5587748445811023692

`A027882(n)-(A002050(n)+1)`
-/

namespace A201338.P5587748445811023692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - (A002050 n + 1)

end

end A201338.P5587748445811023692

/-! ## A201338.P10207512303289386065

`2*A201339(n)-A000629(n)`
-/

namespace A201338.P10207512303289386065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201339 n - A000629 n

end

end A201338.P10207512303289386065

/-! ## A201338.P7015445208884584634

`A027882(n)-ceil(A007047(n)/2)`
-/

namespace A201338.P7015445208884584634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - ⌈(A007047 n : ℚ) / 2⌉

end

end A201338.P7015445208884584634

/-! ## A201338.P1695970915164140428

`A027882(n)-record[A090665(n+1)]`
-/

namespace A201338.P1695970915164140428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027882 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201338.P1695970915164140428

/-! ## A201338.P14562242794697411205

`3*A004123(n+1)-A076726(n)`
-/

namespace A201338.P14562242794697411205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004123 (n + 1) - A076726 n

end

end A201338.P14562242794697411205

/-!
# A201339: Expansion of e.g.f. exp(x) / (3 - 2*exp(x)).

The programs for A201339, the canonical program `A201339.P6028598953345411008` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201339 has offset 0).

The definition of A201339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201339.P6028598953345411008

`∑{#}[n, A123125(C(n+1, 2)+#)*3^#*2^(n-#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201339

/-- `∑{#}[n, A123125(C(n+1, 2)+#)*3^#*2^(n-#)]` -/
def P6028598953345411008.Spec : Prop :=
  ∀ n, P6028598953345411008.a n = (A201339 n : ℚ)

end A201339

/-! ## A201339.P6580333462114379084

`A027882(n)/2`
-/

namespace A201339.P6580333462114379084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027882 n : ℚ) / 2

end

end A201339.P6580333462114379084

namespace A201339

/-- `A027882(n)/2` -/
def P6580333462114379084.Spec : Prop :=
  ∀ n, P6580333462114379084.a n = (A201339 n : ℚ)

end A201339

/-! ## A201339.P16158416940612837955

`floor(3*A004123(n+1)/2)`
-/

namespace A201339.P16158416940612837955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A004123 (n + 1) : ℚ) / 2⌋

end

end A201339.P16158416940612837955

namespace A201339

/-- `floor(3*A004123(n+1)/2)` -/
def P16158416940612837955.Spec : Prop :=
  ∀ n, P16158416940612837955.a n = A201339 n

end A201339

/-! ## A201339.P14982453529417928865

`2*A004123(n+1)-A050351(n)`
-/

namespace A201339.P14982453529417928865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004123 (n + 1) - A050351 n

end

end A201339.P14982453529417928865

namespace A201339

/-- `2*A004123(n+1)-A050351(n)` -/
def P14982453529417928865.Spec : Prop :=
  ∀ n, P14982453529417928865.a n = A201339 n

end A201339

/-! ## A201339.P12421396093670560129

`(A057427(n)+2)*A004123(n+1)/2`
-/

namespace A201339.P12421396093670560129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057427 n + 2) * A004123 (n + 1) : ℚ) / 2

end

end A201339.P12421396093670560129

namespace A201339

/-- `(A057427(n)+2)*A004123(n+1)/2` -/
def P12421396093670560129.Spec : Prop :=
  ∀ n, P12421396093670560129.a n = (A201339 n : ℚ)

end A201339

/-! ## A201339.P6168817475157663013

`A029618(A000217(n))*A050351(n)`
-/

namespace A201339.P6168817475157663013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (A000217 n).toNat * A050351 n

end

end A201339.P6168817475157663013

namespace A201339

/-- `A029618(A000217(n))*A050351(n)` -/
def P6168817475157663013.Spec : Prop :=
  ∀ n, P6168817475157663013.a n = A201339 n

end A201339

/-! ## A201339.P8406607711765018088

`A048250(A001316(n))*A050351(n)`
-/

namespace A201339.P8406607711765018088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A001316 n).toNat * A050351 n

end

end A201339.P8406607711765018088

namespace A201339

/-- `A048250(A001316(n))*A050351(n)` -/
def P8406607711765018088.Spec : Prop :=
  ∀ n, P8406607711765018088.a n = A201339 n

end A201339

/-! ## A201339.P6377155816383462892

`A050351(n)*A103947(A213064(n))`
-/

namespace A201339.P6377155816383462892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n * A103947 (A213064 n).toNat

end

end A201339.P6377155816383462892

namespace A201339

/-- `A050351(n)*A103947(A213064(n))` -/
def P6377155816383462892.Spec : Prop :=
  ∀ n, P6377155816383462892.a n = A201339 n

end A201339

/-! ## A201339.P15234065766497281765

`A000032(A000032(A151878(n)))*A050351(n)`
-/

namespace A201339.P15234065766497281765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000032 (A151878 n).toNat).toNat * A050351 n

end

end A201339.P15234065766497281765

namespace A201339

/-- `A000032(A000032(A151878(n)))*A050351(n)` -/
def P15234065766497281765.Spec : Prop :=
  ∀ n, P15234065766497281765.a n = A201339 n

end A201339

/-! ## A201339.P2619671464169088412

`A000670(A000629(n)/A000670(n))*A050351(n)`
-/

namespace A201339.P2619671464169088412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (SequenceMachineLib.roundAway ((A000629 n : ℚ) / (A000670 n : ℚ))).toNat * A050351 n

end

end A201339.P2619671464169088412

namespace A201339

/-- `A000670(A000629(n)/A000670(n))*A050351(n)` -/
def P2619671464169088412.Spec : Prop :=
  ∀ n, P2619671464169088412.a n = A201339 n

end A201339

/-!
# A201340: Number of nX2 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201340, there is no canonical definition to state claims against.
-/

/-! ## A201340.P8226430934968966836

`A201345(∑[n+1]+2)`
-/

namespace A201340.P8226430934968966836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201340.P8226430934968966836

/-!
# A201341: Number of nX3 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201341, there is no canonical definition to state claims against.
-/

/-! ## A201341.P11330537820746821273

`A201345(∑[n+2]+4)`
-/

namespace A201341.P11330537820746821273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201341.P11330537820746821273

/-! ## A201341.P11957458845275687491

`record[A010054(n)*A201345(n+3)]`
-/

namespace A201341.P11957458845275687491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201345 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201341.P11957458845275687491

/-! ## A201341.P601795034489475133

`record[A109466(n)*A201345(n+4)]`
-/

namespace A201341.P601795034489475133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A201345 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201341.P601795034489475133

/-!
# A201342: Number of n X 4 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201342, there is no canonical definition to state claims against.
-/

/-! ## A201342.P3599539464911545066

`A201345(∑[n+3]+7)`
-/

namespace A201342.P3599539464911545066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201342.P3599539464911545066

/-! ## A201342.P14468183518661621994

`record[A010054(n)*A201345(n+4)]`
-/

namespace A201342.P14468183518661621994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201345 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201342.P14468183518661621994

/-! ## A201342.P10750261408839443392

`record[A201345(A019304(n))]`
-/

namespace A201342.P10750261408839443392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201342.P10750261408839443392

/-!
# A201343: Number of nX5 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201343, there is no canonical definition to state claims against.
-/

/-! ## A201343.P12257644947375124894

`A201345(A167499(n+3))`
-/

namespace A201343.P12257644947375124894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A167499 (n + 3)).toNat

end

end A201343.P12257644947375124894

/-! ## A201343.P11008197593912528164

`A201345(A374005(n+1))`
-/

namespace A201343.P11008197593912528164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A374005 (n + 1)).toNat

end

end A201343.P11008197593912528164

/-!
# A201344: Number of nX6 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201344, there is no canonical definition to state claims against.
-/

/-! ## A201344.P11259100140503197948

`A201345(A374007(n+1))`
-/

namespace A201344.P11259100140503197948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201345 (A374007 (n + 1)).toNat

end

end A201344.P11259100140503197948

/-!
# A201345: T(n,k)=Number of nXk 0..4 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201345, there is no canonical definition to state claims against.
-/

/-! ## A201345.P14710844472176268182

`A344574(A177984(n))`
-/

namespace A201345.P14710844472176268182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344574 (A177984 n).toNat

end

end A201345.P14710844472176268182

/-! ## A201345.P4937618431106037785

`A233970(A283347(n+1))`
-/

namespace A201345.P4937618431106037785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A283347 (n + 1)).toNat

end

end A201345.P4937618431106037785

/-! ## A201345.P4995127213401628276

`3*A056695(A172347(n))`
-/

namespace A201345.P4995127213401628276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A056695 (A172347 n).toNat

end

end A201345.P4995127213401628276

/-! ## A201345.P10579928200985432881

`A399639(n+1)%A181318(A118185(n))`
-/

namespace A201345.P10579928200985432881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399639 (n + 1)) (A181318 (A118185 n).toNat)

end

end A201345.P10579928200985432881

/-! ## A201345.P14121751636086086642

`A085860(A005574(3*n+5)*A202168(n+1))`
-/

namespace A201345.P14121751636086086642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A005574 (3 * n + 5) * A202168 (n + 1)).toNat

end

end A201345.P14121751636086086642

/-!
# A201346: Number of n X n 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201346, there is no canonical definition to state claims against.
-/

/-! ## A201346.P12761596499626354550

`A201353(∑[4*n]+1)`
-/

namespace A201346.P12761596499626354550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201346.P12761596499626354550

/-! ## A201346.P17774460483340692585

`record[A201353(A272267(n+1))]`
-/

namespace A201346.P17774460483340692585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201346.P17774460483340692585

/-!
# A201347: Number of n X 2 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201347, the canonical program `A201347.P18419925043797542016` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201347 has offset 1).

The definition of A201347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201347.P3497713192051631838

`∑[∑[char[2]-1+n]+3]`
-/

namespace A201347.P3497713192051631838
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201347.P3497713192051631838

namespace A201347

/-- `∑[∑[char[2]-1+n]+3]` -/
def P3497713192051631838.Spec : Prop :=
  ∀ n, P3497713192051631838.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P15331276897986775704

`∑[C(n, 2)]+ceil(3/acot(n))`
-/

namespace A201347.P15331276897986775704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉

end

end A201347.P15331276897986775704

namespace A201347

/-- `∑[C(n, 2)]+ceil(3/acot(n))` -/
def P15331276897986775704.Spec : Prop :=
  ∀ n, P15331276897986775704.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P16744440534707672742

`∑[∑[C(2, n)+n-1]]+2`
-/

namespace A201347.P16744440534707672742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 n : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A201347.P16744440534707672742

namespace A201347

/-- `∑[∑[C(2, n)+n-1]]+2` -/
def P16744440534707672742.Spec : Prop :=
  ∀ n, P16744440534707672742.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P9487289156648200049

`C(n+1, 3)+ceil(3/acot(n))`
-/

namespace A201347.P9487289156648200049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) + ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉

end

end A201347.P9487289156648200049

namespace A201347

/-- `C(n+1, 3)+ceil(3/acot(n))` -/
def P9487289156648200049.Spec : Prop :=
  ∀ n, P9487289156648200049.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P5847280528132539557

`∑[∑[a(n-1)+1]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A201347.P5847280528132539557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 2] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201347.P5847280528132539557

namespace A201347

/-- `∑[∑[a(n-1)+1]]` -/
def P5847280528132539557.Spec : Prop :=
  ∀ n, (P5847280528132539557.a n : ℤ) = A201347 (n + 1)

end A201347

/-! ## A201347.P4967754327270866794

`a(n-1)+C(n, 2)+3` with `a(0)=2, a(1)=4`
-/

namespace A201347.P4967754327270866794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (Nat.choose n 2 + 3)

end

end A201347.P4967754327270866794

namespace A201347

/-- `a(n-1)+C(n, 2)+3` -/
def P4967754327270866794.Spec : Prop :=
  ∀ n, (P4967754327270866794.a n : ℤ) = A201347 (n + 1)

end A201347

/-! ## A201347.P3283047337025958282

`ogf((2-4x+4x^2-2x^3+x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A201347.P3283047337025958282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 4, -2, 1] [1, -4, 6, -4, 1] n

end

end A201347.P3283047337025958282

namespace A201347

/-- `ogf((2-4x+4x^2-2x^3+x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P3283047337025958282.Spec : Prop :=
  ∀ n, P3283047337025958282.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P7037273707567059554

`∑[n]-(n-3-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A201347.P7037273707567059554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3 - a (n - 1))

end

end A201347.P7037273707567059554

namespace A201347

/-- `∑[n]-(n-3-a(n-1))` -/
def P7037273707567059554.Spec : Prop :=
  ∀ n, P7037273707567059554.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P18419925043797542016

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=14, a(4)=23`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A201347

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18419925043797542016.Spec : Prop :=
  ∀ n, P18419925043797542016.a n = A201347 (n + 1)

theorem P18419925043797542016.correct : P18419925043797542016.Spec := by
  intro n
  simp only [A201347, Nat.add_sub_cancel]

end A201347

/-! ## A201347.P14244501869928049519

`∑[A238531(n)]+1+n`
-/

namespace A201347.P14244501869928049519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A201347.P14244501869928049519

namespace A201347

/-- `∑[A238531(n)]+1+n` -/
def P14244501869928049519.Spec : Prop :=
  ∀ n, P14244501869928049519.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P12738065157384053691

`∑[∑[n]+3]-A133263(n)`
-/

namespace A201347.P12738065157384053691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A133263 n

end

end A201347.P12738065157384053691

namespace A201347

/-- `∑[∑[n]+3]-A133263(n)` -/
def P12738065157384053691.Spec : Prop :=
  ∀ n, P12738065157384053691.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P8855357509999312771

`a(n-1)+A089071(n)+n` with `a(0)=2`
-/

namespace A201347.P8855357509999312771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A089071 n + (n : ℤ))

end

end A201347.P8855357509999312771

namespace A201347

/-- `a(n-1)+A089071(n)+n` -/
def P8855357509999312771.Spec : Prop :=
  ∀ n, P8855357509999312771.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P16989163946021573506

`∑[A000217(n+1)-comp[2*n+3]]+1`
-/

namespace A201347.P16989163946021573506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201347.P16989163946021573506

namespace A201347

/-- `∑[A000217(n+1)-comp[2*n+3]]+1` -/
def P16989163946021573506.Spec : Prop :=
  ∀ n, P16989163946021573506.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P14702284423673261373

`A004277(n)+A000125(n)`
-/

namespace A201347.P14702284423673261373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A000125 n

end

end A201347.P14702284423673261373

namespace A201347

/-- `A004277(n)+A000125(n)` -/
def P14702284423673261373.Spec : Prop :=
  ∀ n, P14702284423673261373.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P10618540182240010697

`A140226(n)-A283551(n)`
-/

namespace A201347.P10618540182240010697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n - A283551 n

end

end A201347.P10618540182240010697

namespace A201347

/-- `A140226(n)-A283551(n)` -/
def P10618540182240010697.Spec : Prop :=
  ∀ n, P10618540182240010697.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P13319923286111350186

`A000125(n)+A004273(n)+1`
-/

namespace A201347.P13319923286111350186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A004273 n + 1)

end

end A201347.P13319923286111350186

namespace A201347

/-- `A000125(n)+A004273(n)+1` -/
def P13319923286111350186.Spec : Prop :=
  ∀ n, P13319923286111350186.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P5412467991972047391

`A004006(n)+A004277(n)+1`
-/

namespace A201347.P5412467991972047391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A004277 n + 1)

end

end A201347.P5412467991972047391

namespace A201347

/-- `A004006(n)+A004277(n)+1` -/
def P5412467991972047391.Spec : Prop :=
  ∀ n, P5412467991972047391.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P7191233021623020163

`A011826(n+1)+A004273(n)`
-/

namespace A201347.P7191233021623020163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1) + A004273 n

end

end A201347.P7191233021623020163

namespace A201347

/-- `A011826(n+1)+A004273(n)` -/
def P7191233021623020163.Spec : Prop :=
  ∀ n, P7191233021623020163.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P3921821020126212438

`A180415(n+1)+A028310(n)`
-/

namespace A201347.P3921821020126212438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A028310 n

end

end A201347.P3921821020126212438

namespace A201347

/-- `A180415(n+1)+A028310(n)` -/
def P3921821020126212438.Spec : Prop :=
  ∀ n, P3921821020126212438.a n = A201347 (n + 1)

end A201347

/-! ## A201347.P4143774384605177485

`A004006(n)+A004273(n)+2`
-/

namespace A201347.P4143774384605177485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A004273 n + 2)

end

end A201347.P4143774384605177485

namespace A201347

/-- `A004006(n)+A004273(n)+2` -/
def P4143774384605177485.Spec : Prop :=
  ∀ n, P4143774384605177485.a n = A201347 (n + 1)

end A201347

/-!
# A201348: Number of n X 3 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201348, the canonical program `A201348.P17294005481318232435` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201348 has offset 1).

The definition of A201348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201348.P17294005481318232435

`ogf((2-8x+10x^2+15x^3-62x^4+85x^5-59x^6+20x^7-2x^8)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A201348

/-- `ogf((2-8x+10x^2+15x^3-62x^4+85x^5-59x^6+20x^7-2x^8)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P17294005481318232435.Spec : Prop :=
  ∀ n, P17294005481318232435.a n = A201348 (n + 1)

theorem P17294005481318232435.correct : P17294005481318232435.Spec := by
  intro n
  simp only [A201348, Nat.add_sub_cancel]

end A201348

/-! ## A201348.P17278678043696200910

`A201353(∑[n+2]+4)`
-/

namespace A201348.P17278678043696200910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201348.P17278678043696200910

namespace A201348

/-- `A201353(∑[n+2]+4)` -/
def P17278678043696200910.Spec : Prop :=
  ∀ n, P17278678043696200910.a n = A201348 (n + 1)

end A201348

/-!
# A201349: Number of nX4 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201349, there is no canonical definition to state claims against.
-/

/-! ## A201349.P12881480586567244490

`A201353(A374004(n+1))`
-/

namespace A201349.P12881480586567244490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374004 (n + 1)).toNat

end

end A201349.P12881480586567244490

/-! ## A201349.P12300971827002572682

`A201353(A141214(n+1))`
-/

namespace A201349.P12300971827002572682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A141214 (n + 1)).toNat

end

end A201349.P12300971827002572682

/-!
# A201350: Number of nX5 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201350, there is no canonical definition to state claims against.
-/

/-! ## A201350.P13809158250226146843

`A201353(A374005(n+1))`
-/

namespace A201350.P13809158250226146843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374005 (n + 1)).toNat

end

end A201350.P13809158250226146843

/-!
# A201351: Number of nX6 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201351, there is no canonical definition to state claims against.
-/

/-! ## A201351.P17492530143087037280

`A201353(A374007(n+1))`
-/

namespace A201351.P17492530143087037280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374007 (n + 1)).toNat

end

end A201351.P17492530143087037280

/-!
# A201352: Number of nX7 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201352, there is no canonical definition to state claims against.
-/

/-! ## A201352.P2508437903041544554

`A201353(A374008(n+1))`
-/

namespace A201352.P2508437903041544554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201353 (A374008 (n + 1)).toNat

end

end A201352.P2508437903041544554

/-!
# A201353: T(n,k)=Number of nXk 0..1 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201353, there is no canonical definition to state claims against.
-/

/-! ## A201353.P18083806665597044942

`A297959(n+1)+A124010(A035244(n))`
-/

namespace A201353.P18083806665597044942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (n + 1) + A124010 (A035244 n).toNat

end

end A201353.P18083806665597044942

/-! ## A201353.P3052864997467408221

`A298093(n+1)+A124010(A035244(n))`
-/

namespace A201353.P3052864997467408221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298093 (n + 1) + A124010 (A035244 n).toNat

end

end A201353.P3052864997467408221

/-!
# A201354: Expansion of e.g.f. exp(x) / (4 - 3*exp(x)).

The programs for A201354, the canonical program `A201354.P13585150101814939865` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201354 has offset 0).

The definition of A201354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201354.P13585150101814939865

`∑{#}[n, A123125(C(n+1, 2)+#)*4^#*3^(n-#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201354

/-- `∑{#}[n, A123125(C(n+1, 2)+#)*4^#*3^(n-#)]` -/
def P13585150101814939865.Spec : Prop :=
  ∀ n, P13585150101814939865.a n = (A201354 n : ℚ)

end A201354

/-! ## A201354.P17413575787392050869

`A032183(n+1)/3`
-/

namespace A201354.P17413575787392050869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032183 (n + 1) : ℚ) / 3

end

end A201354.P17413575787392050869

namespace A201354

/-- `A032183(n+1)/3` -/
def P17413575787392050869.Spec : Prop :=
  ∀ n, P17413575787392050869.a n = (A201354 n : ℚ)

end A201354

/-! ## A201354.P1667284430665001672

`floor(4*A032033(n)/3)`
-/

namespace A201354.P1667284430665001672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A032033 n : ℚ) / 3)⌋

end

end A201354.P1667284430665001672

namespace A201354

/-- `floor(4*A032033(n)/3)` -/
def P1667284430665001672.Spec : Prop :=
  ∀ n, P1667284430665001672.a n = A201354 n

end A201354

/-! ## A201354.P5290948699540459010

`A040000(n)²*A050352(n)`
-/

namespace A201354.P5290948699540459010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * A050352 n

end

end A201354.P5290948699540459010

namespace A201354

/-- `A040000(n)²*A050352(n)` -/
def P5290948699540459010.Spec : Prop :=
  ∀ n, P5290948699540459010.a n = A201354 n

end A201354

/-! ## A201354.P5541465657678673199

`A036453(n+1)²*A050352(n)`
-/

namespace A201354.P5541465657678673199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A050352 n

end

end A201354.P5541465657678673199

namespace A201354

/-- `A036453(n+1)²*A050352(n)` -/
def P5541465657678673199.Spec : Prop :=
  ∀ n, P5541465657678673199.a n = A201354 n

end A201354

/-! ## A201354.P1116239527193680795

`A040000(n)²*ceil(A032033(n)/3)`
-/

namespace A201354.P1116239527193680795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * ⌈(A032033 n : ℚ) / 3⌉

end

end A201354.P1116239527193680795

namespace A201354

/-- `A040000(n)²*ceil(A032033(n)/3)` -/
def P1116239527193680795.Spec : Prop :=
  ∀ n, P1116239527193680795.a n = A201354 n

end A201354

/-! ## A201354.P10964776099385694285

`A020639(A004277(n))²*A050352(n)`
-/

namespace A201354.P10964776099385694285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat ^ 2 * A050352 n

end

end A201354.P10964776099385694285

namespace A201354

/-- `A020639(A004277(n))²*A050352(n)` -/
def P10964776099385694285.Spec : Prop :=
  ∀ n, P10964776099385694285.a n = A201354 n

end A201354

/-! ## A201354.P2033457805653006696

`A036453(n+1)*A040000(n)*A050352(n)`
-/

namespace A201354.P2033457805653006696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A040000 n * A050352 n

end

end A201354.P2033457805653006696

namespace A201354

/-- `A036453(n+1)*A040000(n)*A050352(n)` -/
def P2033457805653006696.Spec : Prop :=
  ∀ n, P2033457805653006696.a n = A201354 n

end A201354

/-!
# A201355: Expansion of e.g.f.: 3*exp(3*x) / (4 - exp(3*x)).

The programs for A201355, the canonical program `A201355.P18360142737045064435` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201355 has offset 0).

The definition of A201355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201355.P18360142737045064435

`∑{#}[n, A123125(C(n+1, 2)+#)*4^#]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201355

/-- `∑{#}[n, A123125(C(n+1, 2)+#)*4^#]` -/
def P18360142737045064435.Spec : Prop :=
  ∀ n, P18360142737045064435.a n = A201355 n

theorem P18360142737045064435.correct : P18360142737045064435.Spec := by
  intro n
  simp only [A201355]

end A201355

/-! ## A201355.P6097091810914792917

`A040000(n)*A228938(n)`
-/

namespace A201355.P6097091810914792917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A228938 n

end

end A201355.P6097091810914792917

namespace A201355

/-- `A040000(n)*A228938(n)` -/
def P6097091810914792917.Spec : Prop :=
  ∀ n, P6097091810914792917.a n = A201355 n

end A201355

/-! ## A201355.P1125346687760825165

`A040000(n)²*A255927(n)`
-/

namespace A201355.P1125346687760825165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * A255927 n

end

end A201355.P1125346687760825165

namespace A201355

/-- `A040000(n)²*A255927(n)` -/
def P1125346687760825165.Spec : Prop :=
  ∀ n, P1125346687760825165.a n = A201355 n

end A201355

/-! ## A201355.P8355944253240585903

`A036453(n+1)*A228938(n)`
-/

namespace A201355.P8355944253240585903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A228938 n

end

end A201355.P8355944253240585903

namespace A201355

/-- `A036453(n+1)*A228938(n)` -/
def P8355944253240585903.Spec : Prop :=
  ∀ n, P8355944253240585903.a n = A201355 n

end A201355

/-! ## A201355.P11023288425084850093

`(2-A000007(n))*A228938(n)`
-/

namespace A201355.P11023288425084850093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A228938 n

end

end A201355.P11023288425084850093

namespace A201355

/-- `(2-A000007(n))*A228938(n)` -/
def P11023288425084850093.Spec : Prop :=
  ∀ n, P11023288425084850093.a n = A201355 n

end A201355

/-! ## A201355.P1775432078715062398

`lcm(A040000(n²)², A255927(n))`
-/

namespace A201355.P1775432078715062398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040000 (n ^ 2) ^ 2) (A255927 n)

end

end A201355.P1775432078715062398

namespace A201355

/-- `lcm(A040000(n²)², A255927(n))` -/
def P1775432078715062398.Spec : Prop :=
  ∀ n, (P1775432078715062398.a n : ℤ) = A201355 n

end A201355

/-! ## A201355.P16887209795572776934

`A008000(ceil(n/(n+1)))*A255927(n)`
-/

namespace A201355.P16887209795572776934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A255927 n

end

end A201355.P16887209795572776934

namespace A201355

/-- `A008000(ceil(n/(n+1)))*A255927(n)` -/
def P16887209795572776934.Spec : Prop :=
  ∀ n, P16887209795572776934.a n = A201355 n

end A201355

/-! ## A201355.P2007502447998556871

`A020639(A001316(n))*A228938(n)`
-/

namespace A201355.P2007502447998556871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A228938 n

end

end A201355.P2007502447998556871

namespace A201355

/-- `A020639(A001316(n))*A228938(n)` -/
def P2007502447998556871.Spec : Prop :=
  ∀ n, P2007502447998556871.a n = A201355 n

end A201355

/-! ## A201355.P15667742181045766103

`A020639(A008458(n))*A228938(n)`
-/

namespace A201355.P15667742181045766103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A228938 n

end

end A201355.P15667742181045766103

namespace A201355

/-- `A020639(A008458(n))*A228938(n)` -/
def P15667742181045766103.Spec : Prop :=
  ∀ n, P15667742181045766103.a n = A201355 n

end A201355

/-! ## A201355.P16561279767946249140

`A020639(A008574(n))*A228938(n)`
-/

namespace A201355.P16561279767946249140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A228938 n

end

end A201355.P16561279767946249140

namespace A201355

/-- `A020639(A008574(n))*A228938(n)` -/
def P16561279767946249140.Spec : Prop :=
  ∀ n, P16561279767946249140.a n = A201355 n

end A201355

/-!
# A201358: Numbers k such that (2^k + k - 1)*2^k + 1 is prime.

The programs for A201358, there is no canonical definition to state claims against.
-/

/-! ## A201358.P3344086886691686435

`A371131(A279375(2*n+1))-A241530(n)`
-/

namespace A201358.P3344086886691686435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371131 (A279375 (2 * n + 1)).toNat - A241530 n

end

end A201358.P3344086886691686435

/-!
# A201359: Numbers k such that (2^k + k - 1)*2^k - 1 is prime.

The programs for A201359, there is no canonical definition to state claims against.
-/

/-! ## A201359.P17398785283012043162

`A273859(A117537(n)-A004526(n))`
-/

namespace A201359.P17398785283012043162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A117537 n - A004526 n).toNat

end

end A201359.P17398785283012043162

/-!
# A201364: Numbers k such that A057775(k) is the factor of a Fermat number 2^(2^m) + 1 for some m.

The programs for A201364, there is no canonical definition to state claims against.
-/

/-! ## A201364.P12936126510210365108

`∑[A164999(A148414(n))]`
-/

namespace A201364.P12936126510210365108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (A148414 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201364.P12936126510210365108

/-! ## A201364.P13813039394075933713

`eq[A029288(n), A029296(A068980(n))]`
-/

namespace A201364.P13813039394075933713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029296 (A068980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201364.P13813039394075933713

/-! ## A201364.P3955622394212670152

`eq[A005117(A228570(n)), A278043(n)]`
-/

namespace A201364.P3955622394212670152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A228570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201364.P3955622394212670152

/-! ## A201364.P10912081604724024802

`A323638(A141796(3*(n+1))+A099463(n))`
-/

namespace A201364.P10912081604724024802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (A141796 (3 * (n + 1)) + A099463 n).toNat

end

end A201364.P10912081604724024802

/-! ## A201364.P11096618006052387832

`or(A001013(n+1), A038698(A355336(n+1)))`
-/

namespace A201364.P11096618006052387832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001013 (n + 1)) (A038698 (A355336 (n + 1)).toNat)

end

end A201364.P11096618006052387832

/-!
# A201365: Expansion of e.g.f. exp(x) / (5 - 4*exp(x)).

The programs for A201365, the canonical program `A201365.P17867151816427114339` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201365 has offset 0).

The definition of A201365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201365.P17867151816427114339

`∑{#}[n, A123125(C(n+1, 2)+#)*5^#*4^(n-#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201365

/-- `∑{#}[n, A123125(C(n+1, 2)+#)*5^#*4^(n-#)]` -/
def P17867151816427114339.Spec : Prop :=
  ∀ n, P17867151816427114339.a n = (A201365 n : ℚ)

end A201365

/-! ## A201365.P10068744807999770496

`(A165471(n²)+4)*A094417(n)/4`
-/

namespace A201365.P10068744807999770496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165471 (n ^ 2) + 4 : ℚ) * ((A094417 n : ℚ) / 4)

end

end A201365.P10068744807999770496

namespace A201365

/-- `(A165471(n²)+4)*A094417(n)/4` -/
def P10068744807999770496.Spec : Prop :=
  ∀ n, P10068744807999770496.a n = (A201365 n : ℚ)

end A201365

/-! ## A201365.P3490551293339581996

`A038183(A178334(n))*A050353(n)`
-/

namespace A201365.P3490551293339581996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (A178334 n).toNat * A050353 n

end

end A201365.P3490551293339581996

namespace A201365

/-- `A038183(A178334(n))*A050353(n)` -/
def P3490551293339581996.Spec : Prop :=
  ∀ n, P3490551293339581996.a n = A201365 n

end A201365

/-! ## A201365.P15985145577588605117

`A050353(n)*A201366(A178334(n)²)`
-/

namespace A201365.P15985145577588605117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n * A201366 (A178334 n ^ 2).toNat

end

end A201365.P15985145577588605117

namespace A201365

/-- `A050353(n)*A201366(A178334(n)²)` -/
def P15985145577588605117.Spec : Prop :=
  ∀ n, P15985145577588605117.a n = A201365 n

end A201365

/-! ## A201365.P12381180331748388039

`A050353(n)*A201367(A178334(n)²)`
-/

namespace A201365.P12381180331748388039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n * A201367 (A178334 n ^ 2).toNat

end

end A201365.P12381180331748388039

namespace A201365

/-- `A050353(n)*A201367(A178334(n)²)` -/
def P12381180331748388039.Spec : Prop :=
  ∀ n, P12381180331748388039.a n = A201365 n

end A201365

/-! ## A201365.P2233391122949103968

`A050353(n)*A201368(A178334(n)²)`
-/

namespace A201365.P2233391122949103968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n * A201368 (A178334 n ^ 2).toNat

end

end A201365.P2233391122949103968

namespace A201365

/-- `A050353(n)*A201368(A178334(n)²)` -/
def P2233391122949103968.Spec : Prop :=
  ∀ n, P2233391122949103968.a n = A201365 n

end A201365

/-! ## A201365.P17190418636266941863

`A050353(n)+A094417(n)-A000007(n)`
-/

namespace A201365.P17190418636266941863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n + (A094417 n - A000007 n)

end

end A201365.P17190418636266941863

namespace A201365

/-- `A050353(n)+A094417(n)-A000007(n)` -/
def P17190418636266941863.Spec : Prop :=
  ∀ n, P17190418636266941863.a n = A201365 n

end A201365

/-! ## A201365.P3597503032608064578

`A050353(n)+A057427(n)*A094417(n)`
-/

namespace A201365.P3597503032608064578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 n + A057427 n * A094417 n

end

end A201365.P3597503032608064578

namespace A201365

/-- `A050353(n)+A057427(n)*A094417(n)` -/
def P3597503032608064578.Spec : Prop :=
  ∀ n, P3597503032608064578.a n = A201365 n

end A201365

/-! ## A201365.P3612881734292294793

`∑{#}[n, 5^#*(-1)^(n-#)*A131689(C(n+1, 2)+#)]`
-/

namespace A201365.P3612881734292294793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 ^ k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A131689 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A201365.P3612881734292294793

namespace A201365

/-- `∑{#}[n, 5^#*(-1)^(n-#)*A131689(C(n+1, 2)+#)]` -/
def P3612881734292294793.Spec : Prop :=
  ∀ n, P3612881734292294793.a n = (A201365 n : ℚ)

end A201365

/-! ## A201365.P11346120526279446872

`A094418(n)%10*A050353(n)`
-/

namespace A201365.P11346120526279446872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094418 n) 10 * A050353 n

end

end A201365.P11346120526279446872

namespace A201365

/-- `A094418(n)%10*A050353(n)` -/
def P11346120526279446872.Spec : Prop :=
  ∀ n, P11346120526279446872.a n = A201365 n

end A201365

/-!
# A201366: E.g.f.: 2*exp(2*x) / (5 - 3*exp(2*x)).

The programs for A201366, the canonical program `A201366.P5445486129622792283` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201366 has offset 0).

The definition of A201366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201366.P5445486129622792283

`∑{#}[n, A123125(C(n+1, 2)+#)*5^#*3^(n-#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201366

/-- `∑{#}[n, A123125(C(n+1, 2)+#)*5^#*3^(n-#)]` -/
def P5445486129622792283.Spec : Prop :=
  ∀ n, P5445486129622792283.a n = (A201366 n : ℚ)

end A201366

/-!
# A201367: E.g.f.: 3*exp(3*x) / (5 - 2*exp(3*x)).

The programs for A201367, there is no canonical definition to state claims against.
-/

/-! ## A201367.P12734161032117490569

`A003961(A375449(n+1))`
-/

namespace A201367.P12734161032117490569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A375449 (n + 1)).toNat

end

end A201367.P12734161032117490569

/-!
# A201368: E.g.f.: 4*exp(4*x) / (5 - exp(4*x)).

The programs for A201368, the canonical program `A201368.P10244594823486809306` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201368 has offset 0).

The definition of A201368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201368.P10244594823486809306

`∑{#}[n, A123125(C(n+1, 2)+#)*5^#]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201368

/-- `∑{#}[n, A123125(C(n+1, 2)+#)*5^#]` -/
def P10244594823486809306.Spec : Prop :=
  ∀ n, P10244594823486809306.a n = A201368 n

theorem P10244594823486809306.correct : P10244594823486809306.Spec := by
  intro n
  simp only [A201368]

end A201368

/-! ## A201368.P16596545678000972868

`A099375(A055998(n))*A326324(n)`
-/

namespace A201368.P16596545678000972868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A055998 n).toNat * A326324 n

end

end A201368.P16596545678000972868

namespace A201368

/-- `A099375(A055998(n))*A326324(n)` -/
def P16596545678000972868.Spec : Prop :=
  ∀ n, P16596545678000972868.a n = A201368 n

end A201368

/-! ## A201368.P15518628316711694985

`A005918(A178334(n))*A326324(n)`
-/

namespace A201368.P15518628316711694985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (A178334 n).toNat * A326324 n

end

end A201368.P15518628316711694985

namespace A201368

/-- `A005918(A178334(n))*A326324(n)` -/
def P15518628316711694985.Spec : Prop :=
  ∀ n, P15518628316711694985.a n = A201368 n

end A201368

/-! ## A201368.P11086403286915665218

`A094418(n)%10*A326324(n)`
-/

namespace A201368.P11086403286915665218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094418 n) 10 * A326324 n

end

end A201368.P11086403286915665218

namespace A201368

/-- `A094418(n)%10*A326324(n)` -/
def P11086403286915665218.Spec : Prop :=
  ∀ n, P11086403286915665218.a n = A201368 n

end A201368

/-! ## A201368.P415550932335080242

`A007947(A056451(n))*A326324(n)`
-/

namespace A201368.P415550932335080242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A056451 n).toNat * A326324 n

end

end A201368.P415550932335080242

namespace A201368

/-- `A007947(A056451(n))*A326324(n)` -/
def P415550932335080242.Spec : Prop :=
  ∀ n, P415550932335080242.a n = A201368 n

end A201368

/-!
# A201369: Number of ways to place 8 nonattacking kings on an n X n board.

The programs for A201369, there is no canonical definition to state claims against.
-/

/-! ## A201369.P14253029890571351649

`A060755(A327073(n))*A327146(n)`
-/

namespace A201369.P14253029890571351649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (A327073 n).toNat * A327146 n

end

end A201369.P14253029890571351649

/-! ## A201369.P13808677570625508297

`A067661(A089072(n+1))*A327146(n)`
-/

namespace A201369.P13808677570625508297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (A089072 (n + 1)).toNat * A327146 n

end

end A201369.P13808677570625508297

/-!
# A201370: Number of n X n 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201370, there is no canonical definition to state claims against.
-/

/-! ## A201370.P14899926867519800214

`A201375(∑[4*n]+1)`
-/

namespace A201370.P14899926867519800214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201370.P14899926867519800214

/-! ## A201370.P13739899999101621061

`record[A201375(∑[A266981(n)])]`
-/

namespace A201370.P13739899999101621061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201370.P13739899999101621061

/-! ## A201370.P16175512252092027096

`record[A201375(A330613(n+1))]`
-/

namespace A201370.P16175512252092027096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201370.P16175512252092027096

/-!
# A201371: Number of n X 4 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201371, the canonical program `A201371.P4978619889075734052` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201371 has offset 1).

The definition of A201371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201371.P13627110925969864770

`∑[∑[abs(3-(1+n)²)]]`
-/

namespace A201371.P13627110925969864770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((1 + n) ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P13627110925969864770

namespace A201371

/-- `∑[∑[abs(3-(1+n)²)]]` -/
def P13627110925969864770.Spec : Prop :=
  ∀ n, P13627110925969864770.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P2202631437859545747

`ogf((2-5x+9x^2-4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A201371.P2202631437859545747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 9, -4] [1, -5, 10, -10, 5, -1] n

end

end A201371.P2202631437859545747

namespace A201371

/-- `ogf((2-5x+9x^2-4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2202631437859545747.Spec : Prop :=
  ∀ n, P2202631437859545747.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P5164771618257535304

`∑[a(n-1)+(n+1)²-3]` with `a(0)=2`
-/

namespace A201371.P5164771618257535304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + ((n + 1) ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P5164771618257535304

namespace A201371

/-- `∑[a(n-1)+(n+1)²-3]` -/
def P5164771618257535304.Spec : Prop :=
  ∀ n, P5164771618257535304.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P9184353774219009667

`∑[∑[a(n-1)+2*n+1]]` with `a(0)=2, a(1)=1`
-/

namespace A201371.P9184353774219009667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P9184353774219009667

namespace A201371

/-- `∑[∑[a(n-1)+2*n+1]]` -/
def P9184353774219009667.Spec : Prop :=
  ∀ n, (P9184353774219009667.a n : ℤ) = A201371 (n + 1)

end A201371

/-! ## A201371.P15974344745633307816

`∑[∑[a(n-1)+n+1+n]]` with `a(0)=2, a(1)=1`
-/

namespace A201371.P15974344745633307816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P15974344745633307816

namespace A201371

/-- `∑[∑[a(n-1)+n+1+n]]` -/
def P15974344745633307816.Spec : Prop :=
  ∀ n, (P15974344745633307816.a n : ℤ) = A201371 (n + 1)

end A201371

/-! ## A201371.P4978619889075734052

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=14, a(3)=36, a(4)=80`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A201371

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4978619889075734052.Spec : Prop :=
  ∀ n, P4978619889075734052.a n = A201371 (n + 1)

theorem P4978619889075734052.correct : P4978619889075734052.Spec := by
  intro n
  simp only [A201371, Nat.add_sub_cancel]

end A201371

/-! ## A201371.P6624088067408419671

`∑[∑[A267874(n)]]+1`
-/

namespace A201371.P6624088067408419671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201371.P6624088067408419671

namespace A201371

/-- `∑[∑[A267874(n)]]+1` -/
def P6624088067408419671.Spec : Prop :=
  ∀ n, P6624088067408419671.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P5291114773572637336

`∑[A047732(n)]+1-n²`
-/

namespace A201371.P5291114773572637336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n ^ 2 : ℤ))

end

end A201371.P5291114773572637336

namespace A201371

/-- `∑[A047732(n)]+1-n²` -/
def P5291114773572637336.Spec : Prop :=
  ∀ n, P5291114773572637336.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P16906831260401004144

`∑[A110610(n+1)-n]+1`
-/

namespace A201371.P16906831260401004144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201371.P16906831260401004144

namespace A201371

/-- `∑[A110610(n+1)-n]+1` -/
def P16906831260401004144.Spec : Prop :=
  ∀ n, P16906831260401004144.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P15031061066907856882

`∑[A116721(n+1)+∑[∑[n]]]+1`
-/

namespace A201371.P15031061066907856882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201371.P15031061066907856882

namespace A201371

/-- `∑[A116721(n+1)+∑[∑[n]]]+1` -/
def P15031061066907856882.Spec : Prop :=
  ∀ n, P15031061066907856882.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P1082415846947986084

`∑[∑[A005563(n)]-2*n+1]+n+1`
-/

namespace A201371.P1082415846947986084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A201371.P1082415846947986084

namespace A201371

/-- `∑[∑[A005563(n)]-2*n+1]+n+1` -/
def P1082415846947986084.Spec : Prop :=
  ∀ n, P1082415846947986084.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P7363540470078560385

`A398517(n)+A136396(n)`
-/

namespace A201371.P7363540470078560385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398517 n + A136396 n

end

end A201371.P7363540470078560385

namespace A201371

/-- `A398517(n)+A136396(n)` -/
def P7363540470078560385.Spec : Prop :=
  ∀ n, P7363540470078560385.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P3120202721424105526

`A005701(n)-∑[A028884(n)]`
-/

namespace A201371.P3120202721424105526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201371.P3120202721424105526

namespace A201371

/-- `A005701(n)-∑[A028884(n)]` -/
def P3120202721424105526.Spec : Prop :=
  ∀ n, P3120202721424105526.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P1733679229602905024

`A005701(n)-A052153(n+1)`
-/

namespace A201371.P1733679229602905024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A052153 (n + 1)

end

end A201371.P1733679229602905024

namespace A201371

/-- `A005701(n)-A052153(n+1)` -/
def P1733679229602905024.Spec : Prop :=
  ∀ n, P1733679229602905024.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P14157539452028322438

`A006007(n)+A229183(n)+2`
-/

namespace A201371.P14157539452028322438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + (A229183 n + 2)

end

end A201371.P14157539452028322438

namespace A201371

/-- `A006007(n)+A229183(n)+2` -/
def P14157539452028322438.Spec : Prop :=
  ∀ n, P14157539452028322438.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P11038019718821175927

`∑[A145066(n+1)]-A046092(n)`
-/

namespace A201371.P11038019718821175927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046092 n

end

end A201371.P11038019718821175927

namespace A201371

/-- `∑[A145066(n+1)]-A046092(n)` -/
def P11038019718821175927.Spec : Prop :=
  ∀ n, P11038019718821175927.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P12605731208371053493

`∑[A000330(n)]+2*A000125(n)`
-/

namespace A201371.P12605731208371053493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000125 n

end

end A201371.P12605731208371053493

namespace A201371

/-- `∑[A000330(n)]+2*A000125(n)` -/
def P12605731208371053493.Spec : Prop :=
  ∀ n, P12605731208371053493.a n = A201371 (n + 1)

end A201371

/-! ## A201371.P12508813728955234738

`A000292(n)+2*A116699(n+1)`
-/

namespace A201371.P12508813728955234738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + 2 * A116699 (n + 1)

end

end A201371.P12508813728955234738

namespace A201371

/-- `A000292(n)+2*A116699(n+1)` -/
def P12508813728955234738.Spec : Prop :=
  ∀ n, P12508813728955234738.a n = A201371 (n + 1)

end A201371

/-!
# A201372: Number of n X 5 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201372, the canonical program `A201372.P18014467014229354396` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201372 has offset 1).

The definition of A201372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201372.P18014467014229354396

`ogf((2-8x+22x^2-18x^3+30x^4-12x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A201372

/-- `ogf((2-8x+22x^2-18x^3+30x^4-12x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P18014467014229354396.Spec : Prop :=
  ∀ n, P18014467014229354396.a n = A201372 (n + 1)

theorem P18014467014229354396.correct : P18014467014229354396.Spec := by
  intro n
  simp only [A201372, Nat.add_sub_cancel]

end A201372

/-! ## A201372.P12965846440906717482

`A201375(∑[n+4]+11)`
-/

namespace A201372.P12965846440906717482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A201372.P12965846440906717482

namespace A201372

/-- `A201375(∑[n+4]+11)` -/
def P12965846440906717482.Spec : Prop :=
  ∀ n, P12965846440906717482.a n = A201372 (n + 1)

end A201372

/-!
# A201373: Number of n X 6 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201373, there is no canonical definition to state claims against.
-/

/-! ## A201373.P2256967181189811512

`A201375(record[a(n-1)+n])` with `a(0)=21, a(1)=7`
-/

namespace A201373.P2256967181189811512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 7] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A201373.P2256967181189811512

/-!
# A201374: Number of nX7 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201374, there is no canonical definition to state claims against.
-/

/-! ## A201374.P705025099801281703

`A201375(A374008(n+1))`
-/

namespace A201374.P705025099801281703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A374008 (n + 1)).toNat

end

end A201374.P705025099801281703

/-!
# A201375: T(n,k)=Number of nXk 0..1 arrays with rows and columns lexicographically nondecreasing read forwards, and nonincreasing read backwards.

The programs for A201375, there is no canonical definition to state claims against.
-/

/-! ## A201375.P7757111428721770574

`A130696(A101515(n))+2`
-/

namespace A201375.P7757111428721770574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A101515 n).toNat + 2

end

end A201375.P7757111428721770574

/-! ## A201375.P13522492060261782447

`2-A130696(A101515(n))*A260196(n)`
-/

namespace A201375.P13522492060261782447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130696 (A101515 n).toNat * A260196 n

end

end A201375.P13522492060261782447

/-! ## A201375.P16154124163277393087

`A008619(2*n)-(n-1-A130696(A101515(n)))`
-/

namespace A201375.P16154124163277393087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - 1 - A130696 (A101515 n).toNat)

end

end A201375.P16154124163277393087

/-! ## A201375.P14685772845633418581

`A101515(n)+1`
-/

namespace A201375.P14685772845633418581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101515 n + 1

end

end A201375.P14685772845633418581

/-! ## A201375.P8691531923928682407

`A132016(A088699(n))+1`
-/

namespace A201375.P8691531923928682407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A088699 n).toNat + 1

end

end A201375.P8691531923928682407

/-!
# A201376: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of partitions of (n,k) into a sum of pairs.

The programs for A201376, there is no canonical definition to state claims against.
-/

/-! ## A201376.P17625049208084323214

`A054225(C(row(n)+col(n)+1, 2)+row(n))`
-/

namespace A201376.P17625049208084323214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) 2 + SequenceMachineLib.triRow n)

end

end A201376.P17625049208084323214

/-! ## A201376.P5617325463456419984

`A353378(A100851(n))`
-/

namespace A201376.P5617325463456419984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A100851 n).toNat

end

end A201376.P5617325463456419984

/-! ## A201376.P4135046369873447622

`A001055(A100851(n))`
-/

namespace A201376.P4135046369873447622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A100851 n).toNat

end

end A201376.P4135046369873447622

/-!
# A201377: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of partitions of (n,k) into a sum of distinct pairs.

The programs for A201377, there is no canonical definition to state claims against.
-/

/-! ## A201377.P15634495258918022808

`A054242(A245300(n))`
-/

namespace A201377.P15634495258918022808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A245300 n).toNat

end

end A201377.P15634495258918022808

/-! ## A201377.P8120607700352414382

`A045778(A100851(n))`
-/

namespace A201377.P8120607700352414382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A100851 n).toNat

end

end A201377.P8120607700352414382

/-!
# A201378: Number of n X n 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201378, there is no canonical definition to state claims against.
-/

/-! ## A201378.P15895383368666364392

`A201384(∑[4*n]+1)`
-/

namespace A201378.P15895383368666364392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201378.P15895383368666364392

/-! ## A201378.P15675737946471993103

`record[A003982(n)*A201384(n+1)]`
-/

namespace A201378.P15675737946471993103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201378.P15675737946471993103

/-!
# A201379: Number of nX3 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201379, there is no canonical definition to state claims against.
-/

/-! ## A201379.P9296567865847676864

`A201384(∑[n+2]+4)`
-/

namespace A201379.P9296567865847676864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201379.P9296567865847676864

/-!
# A201380: Number of nX4 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201380, there is no canonical definition to state claims against.
-/

/-! ## A201380.P3655454321718484176

`A180979(A374004(n+1))`
-/

namespace A201380.P3655454321718484176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A374004 (n + 1)).toNat

end

end A201380.P3655454321718484176

/-! ## A201380.P10599066754511955359

`A201384(A141214(n)+7)`
-/

namespace A201380.P10599066754511955359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A141214 n + 7).toNat

end

end A201380.P10599066754511955359

/-! ## A201380.P4304237118020658140

`A180979(A141214(n+1))`
-/

namespace A201380.P4304237118020658140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A141214 (n + 1)).toNat

end

end A201380.P4304237118020658140

/-!
# A201381: Number of nX5 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201381, there is no canonical definition to state claims against.
-/

/-! ## A201381.P5665130769552401752

`A201384(A374005(n+1))`
-/

namespace A201381.P5665130769552401752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A374005 (n + 1)).toNat

end

end A201381.P5665130769552401752

/-!
# A201382: Number of nX6 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201382, there is no canonical definition to state claims against.
-/

/-! ## A201382.P8368689663056281287

`A180979(A374007(n+1))`
-/

namespace A201382.P8368689663056281287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180979 (A374007 (n + 1)).toNat

end

end A201382.P8368689663056281287

/-! ## A201382.P6437762165667460234

`A201384(A056115(n)+21)`
-/

namespace A201382.P6437762165667460234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A056115 n + 21).toNat

end

end A201382.P6437762165667460234

/-!
# A201383: Number of n X 7 0..1 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201383, there is no canonical definition to state claims against.
-/

/-! ## A201383.P7998595193029909408

`A201384(A374008(n+1))`
-/

namespace A201383.P7998595193029909408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201384 (A374008 (n + 1)).toNat

end

end A201383.P7998595193029909408

/-!
# A201386: Number of n X n 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201386, there is no canonical definition to state claims against.
-/

/-! ## A201386.P17951649156397567431

`A201393(∑[4*n]+1)`
-/

namespace A201386.P17951649156397567431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201386.P17951649156397567431

/-!
# A201387: Number of nX2 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201387, there is no canonical definition to state claims against.
-/

/-! ## A201387.P15689564029517084495

`A201393(∑[n+1]+2)`
-/

namespace A201387.P15689564029517084495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201387.P15689564029517084495

/-!
# A201388: Number of nX3 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201388, there is no canonical definition to state claims against.
-/

/-! ## A201388.P3044492097393090428

`A201393(∑[n+2]+4)`
-/

namespace A201388.P3044492097393090428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201388.P3044492097393090428

/-! ## A201388.P12659920036429563920

`record[A201393(A167614(∏{e}[n+1, #]))]`
-/

namespace A201388.P12659920036429563920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201388.P12659920036429563920

/-!
# A201389: Number of n X 4 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201389, there is no canonical definition to state claims against.
-/

/-! ## A201389.P8952660904977493569

`A201393(eq[3, col(n)]+1)`
-/

namespace A201389.P8952660904977493569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A201389.P8952660904977493569

/-!
# A201390: Number of nX5 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201390, there is no canonical definition to state claims against.
-/

/-! ## A201390.P13639907334943926240

`A201393(eq[4, col(n)]+1)`
-/

namespace A201390.P13639907334943926240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A201390.P13639907334943926240

/-!
# A201391: Number of n X 6 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201391, there is no canonical definition to state claims against.
-/

/-! ## A201391.P5400211082125647334

`A201393(eq[5, col(n)]+1)`
-/

namespace A201391.P5400211082125647334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A201391.P5400211082125647334

/-!
# A201392: Number of nX7 0..3 arrays with rows and columns lexicographically nondecreasing and the instance counts of every value within one of each other.

The programs for A201392, there is no canonical definition to state claims against.
-/

/-! ## A201392.P14479751522953733595

`A201393(A374008(n+1))`
-/

namespace A201392.P14479751522953733595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201393 (A374008 (n + 1)).toNat

end

end A201392.P14479751522953733595

